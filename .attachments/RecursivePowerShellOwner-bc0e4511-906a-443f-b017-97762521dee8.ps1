[cmdletbinding()]
Param()

############### Parameters
$PathName = "/testadlstool/testacl/testownerfodler";
$startUserID = "cdae0fef-57f0-4d93-b849-9ce6d88e6922";
$adlsAccount = "dyadlsg1";
$subscription = "ad0fac83-3915-4f35-8ea5-da7b5e6f392d";


############### Azure Login
Write-Verbose -Message "Logging In, Check Pop-Up";
$login = Connect-AzAccount
$set = Select-AzSubscription -SubscriptionId $subscription


############## Recursive Function
function recurseDataLakeStoreChildItem  ([hashtable] $Params, [string] $PathName, [string] $OwningUserID) {
    $ChildItems = Get-AzDataLakeStoreChildItem @Params;
    $Path = $Params["Path"];
    $Account = $Params["Account"];
    $OwningUserID = $OwningUserID;
    Write-Verbose -Message "Set Owner to OwningUserID for $Path";
    $b = Set-AzDataLakeStoreItemOwner -AccountName $Account -Path $Path -Type User -id $OwningUserID -PassThru -WarningAction SilentlyContinue 
    foreach ($ChildItem in $ChildItems) {
        switch ($ChildItem.Type) {
            "FILE" {
                $filepath = $Path+"/"+$ChildItem.Name;
                Write-Verbose -Message "Set Owner to $OwningUserID for $filepath";
                $c = Set-AzDataLakeStoreItemOwner -AccountName $Account -Path $filepath -Type User -id $OwningUserID -PassThru -WarningAction SilentlyContinue
            }
            "DIRECTORY" {
                $Params.Remove("Path");
                $Params.Add("Path", $Path + "/" + $ChildItem.Name);
                $PathNameNew= $PathName+$ChildItem.Name+"\";
                recurseDataLakeStoreChildItem -AllFiles $AllFiles -Params $Params -PathName $PathNameNew -OwningUserID $OwningUserID;
            }
        }
    }
}

$a = recurseDataLakeStoreChildItem -Params @{ 'Path' = $PathName; 'Account' = $adlsAccount } -PathName $PathName -OwningUserID $startUserID;
Write-Verbose -Message "Owning User Set to $startUserID for all children under $PathName";
Write-Verbose -Message "Complete";
