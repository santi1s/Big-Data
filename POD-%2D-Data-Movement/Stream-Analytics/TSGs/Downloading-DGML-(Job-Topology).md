## Using Visual Studio Code

1. Search FX Trace Event for the DGML topology using the following **server** query. Use ``DgmlTopology`` for the dgml without trill operators, and ``DgmlQueryPlanTopology`` for the dgml including trill operators.
```
where ActivityId=="<job run id>" AND Type=="<DgmlTopology|DgmlQueryPlanTopology>"
```

2. Trim the chunk guids using the following **client** query:
```
orderby PreciseTimeStamp asc select message.Substring(37) as msg
```

3. Download the results to CSV using this button:
![image.png](/.attachments/image-1d76756f-735f-40ae-979f-58301af45442.png)

4. Open the CSV in Visual Studio Code.

5. Delete the first line and **only** the first quote.
6. Delete the last blank line and **only** the last quote.
7. Find and remove line breaks using **Edit->Replace** and this pattern:
![image.png](/.attachments/image-f901a10b-1d12-42df-bd9a-b4cb459bc0f0.png)
Make sure **Use Regular Expression** is selected. Click replace all.
8. Find and replace double quotes with single using **Edit->Replace** and this pattern:
![image.png](/.attachments/image-76e99f7f-0ee0-4ec0-9fca-2b4cba23acef.png)
Click replace all.
9. Save it as ``<any name>.dgml``.
10. Open dgml with Visual Studio.

## Using Emacs

1. Follow the same steps as above to download the job's DGML as a CSV file. Open the file in Emacs.

2. Evaluate the below elisp code (`C-M-x` anywhere in the function definition). For your convenience, you can also add it to your `init.el` file so it will be loaded on startup.

3. Run the function within the CSV file (`M-x convert-csv-to-dgml RET`) and follow the prompt to save the `.dgml` file. The file can then be opened in Visual Studio.

```lisp
(defun convert-csv-to-dgml()
    "Convert the downloaded CSV DGML representation to the .dgml format."
    (interactive)
    ;; Delete header (message)
    (goto-char 0)
    (kill-whole-line)
    ;; Delete opening quote
    (goto-char 0)
    (delete-char 1)
    ;; Replace all double quotes with single quotes
    (while (search-forward "\"\"" nil :no-error)
      (replace-match "\""))
    (goto-char 0)
    ;; Remove line breaks surrounded by quotes
    (while (re-search-forward "\"\n\"" nil :no-error)
      (replace-match ""))
    ;; Delete closing quote
    (goto-char (point-max))
    (when (looking-at-p "^\s*$")
      (forward-line -1))
    (end-of-line)
    (delete-char -1)
    ;; Write new .dgml file
    (let ((filename (read-file-name "Enter DGML file name: ")))
      (when (not (string-suffix-p ".dgml" filename))
        (setq filename (concat filename ".dgml")))
      (write-file filename)))
```

_Authored By: Sam Cedarbaum_