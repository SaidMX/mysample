
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileLocation = Join-Path $toolsDir 'HelloWorld.exe'
$packagename = 'HelloWorld'

$packageArgs = @{
  packageName   = $packagename
  #unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  #url           = $toolsDir 
  #url64bit      = $url64
  file         = $fileLocation

  softwareName  = 'HelloWorld*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique


  # MSI
  # silentArgs   = '/S'           # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0) #please insert other valid exit codes here

}

  Install-ChocolateyInstallPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-install-package

