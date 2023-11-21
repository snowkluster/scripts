$choice = Read-Host "Push or Pull: "

if ($choice-eq"push") {
    <# Action to perform if the condition is true #>
    git add .
    $message = Read-Host "Enter commit message: "
    git commit -S -m "$message" 
    git push -u origin master
}
elseif ($choice-eq"pull") {
    <# Action when this condition is true #>
    git pull
}
else {
    Write-Host "Commands are either 'push' or 'pull'. Please enter correct commands"
}
