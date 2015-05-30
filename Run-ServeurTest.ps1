Param(
    [switch]$test
)

$webRoot = ([string]$MyInvocation.MyCommand.Path).Replace("\"+[string]$MyInvocation.MyCommand.Name, '')

if(-not $test){
    $webRoot = Join-Path -Path $webRoot -ChildPath '.'
    php -S 127.0.0.2:8765 -t "$webRoot"
    &"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "127.0.0.2:8765/index.php"
} else {
	php -S 127.0.0.2:8765 -t "$webRoot"
	&"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "127.0.0.2:8765/test.php"    
}    