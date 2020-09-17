[cmdletbinding()]
Param()

Connect-AzAccount

function recurseDataLakeStoreChildItem  ([hashtable] $Params, [string] $PathName) {
    $ChildItems = Get-AzDataLakeStoreChildItem @Params;
    $Path = $Params["Path"];
    $Account = $Params["Account"];
    Write-Verbose -Message "Removed ACLs from $Path";
    Remove-AzDataLakeStoreItemAcl -AccountName $Account -Path $Path -Force;
    foreach ($ChildItem in $ChildItems) {
        switch ($ChildItem.Type) {
            "FILE" {
                $filepath = $Path+"/"+$ChildItem.Name;
                Write-Verbose -Message "Removed ACLs from $filepath";
                Remove-AzDataLakeStoreItemAcl -AccountName $Account -Path $filepath -Force;
            }
            "DIRECTORY" {
                $Params.Remove("Path");
                $Params.Add("Path", $Path + "/" + $ChildItem.Name);
                $PathNameNew= $PathName+$ChildItem.Name+"\";
                recurseDataLakeStoreChildItem -AllFiles $AllFiles -Params $Params -PathName $PathNameNew;
            }
        }
    }
}

$PathName = "";
$a = recurseDataLakeStoreChildItem -Params @{ 'Path' = '/testadlstool'; 'Account' = 'dyadlsg1'}
