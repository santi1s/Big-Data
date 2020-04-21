[Azure Docs]: <https://docs.microsoft.com/azure>
[azure-docs-pr]: <https://github.com/MicrosoftDocs/azure-docs-pr>

# WHAT

_You_ can contribute directly to the official [Azure Docs]!

# WHY

- Update out-of-date articles
- Document undocumented features
- Clarify commonly-misunderstood behavior
- Demonstrate examples of common scenarios
- Publish customer-facing TSGs
- _...and much more!_

# WHERE

The Azure Docs [source][azure-docs-pr] is right on GitHub!

# WHEN

Azure Docs pull-requests are reviewed and published [three times per day](https://review.docs.microsoft.com/en-us/help/contribute/publishing-schedules)!

# HOW

1. Prepare your development environment.
   1. Install [Git](https://git-scm.com/download).
   1. Install [VS Code](https://code.visualstudio.com).
   1. Install the [Docs Authoring Pack](https://marketplace.visualstudio.com/items?itemName=docsmsft.docs-authoring-pack) extension for VS Code.
1. Configure your GitHub account.
   1. Create a _personal_ [GitHub](https://docs.microsoft.com/en-us/contribute/get-started-setup-github) account. You will keep this account even if you leave Microsoft.
   1. Set up [two-factor authentication](https://help.github.com/en/github/authenticating-to-github/configuring-two-factor-authentication) on your GitHub account.
1. Request access to the Azure Docs source.
   1. Sign up for [Microsoft Open Source](https://repos.opensource.microsoft.com).
   1. Join the [MicrosoftDocs](https://repos.opensource.microsoft.com/MicrosoftDocs) team.
1. Get your own copy of the Azure Docs source so you can make edits.
   1. On GitHub, [fork](https://guides.github.com/activities/forking/) the [MicrosoftDocs/azure-docs-pr][azure-docs-pr] repo to your own account.
   1. In VS Code, [clone](https://code.visualstudio.com/docs/editor/versioncontrol#_cloning-a-repository) your fork of the repo to your local machine.
1. Edit the Azure Docs source.
   - Azure Docs is written in [Docs-flavored Markdown](https://review.docs.microsoft.com/en-us/help/contribute/markdown-reference?branch=master). It is very similar to GitHub-flavored Markdown, but has additional features such as [alerts](https://review.docs.microsoft.com/en-us/help/contribute/markdown-reference?branch=master#alerts-note-tip-important-caution-warning), [buttons](https://review.docs.microsoft.com/en-us/help/contribute/markdown-reference?branch=master#next-step-action), [includes](https://review.docs.microsoft.com/en-us/help/contribute/markdown-reference?branch=master#included-markdown-files), [selectors](https://review.docs.microsoft.com/en-us/help/contribute/markdown-reference?branch=master#selectors), [snippets](https://review.docs.microsoft.com/en-us/help/contribute/code-in-docs?branch=master#in-repo-snippet-references), etc.
   - The [Docs Authoring Pack](https://review.docs.microsoft.com/en-us/help/contribute/docs-authoring-pack?branch=master) for VS Code is quite helpful. For example, you can [preview](https://marketplace.visualstudio.com/items?itemName=docsmsft.docs-preview) what your edits will look like.
   - VS Code itself is a powerful and _very_ extensible editor. Read the [getting started](https://code.visualstudio.com/docs) guide to VS Code if you're new, then visit the [Extension Marketplace](https://marketplace.visualstudio.com/vscode) to customize VS Code to your heart's content. In particular, take a look at the [version control guide](https://code.visualstudio.com/docs/editor/versioncontrol) and install the [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) extension.
   - **Always** follow Microsoft's official [style guide](https://docs.microsoft.com/en-us/contribute/style-quick-start) and standard [formatting guidelines](https://docs.microsoft.com/en-us/contribute/text-formatting-guidelines).
1. Submit your edits for review and publication.
   1. In VS Code, [commit](https://code.visualstudio.com/docs/editor/versioncontrol#_commit) your local changes (edits).
   1. In VS Code, [push](https://code.visualstudio.com/docs/editor/versioncontrol#_remotes) your local commits to _your_ fork on GitHub.
   1. On GitHub, create a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request) from your fork to the original repo. Your pull request will be automatically reviewed if possible. Otherwise, you will have to [request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/requesting-a-pull-request-review) a human review.
   1. On GitHub, once your pull request is approved (successfully reviewed), then follow the instructions of your reviewer to sign it. **Always** re-read your entire contribution one last time before signing it.
   1. Approved and signed pull requests will be published during the next time slot in the [publishing schedule](https://review.docs.microsoft.com/en-us/help/contribute/publishing-schedules?branch=master#publishing-schedule---azure-docs-pr).

# See Also

- [Azure Docs source code][azure-docs-pr]
- [Docs contributor guide](https://docs.microsoft.com/contribute)
- [Docs Markdown reference](https://docs.microsoft.com/en-us/contribute/markdown-reference)
- [Git cheatsheet](https://github.github.com/training-kit/downloads/github-git-cheat-sheet)
- [GitHub quickstart](https://help.github.com/en/github/getting-started-with-github/quickstart)
