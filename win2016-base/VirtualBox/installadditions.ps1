Copy-Item e:\cert c:\ -recurse
$file = Get-ChildItem -Path c:\cert\vbox-sha1.cer
$file | Import-Certificate -CertStoreLocation Cert:\LocalMachine\TrustedPublisher
$file = Get-ChildItem -Path c:\cert\vbox-sha256.cer
$file | Import-Certificate -CertStoreLocation Cert:\LocalMachine\TrustedPublisher
$file = Get-ChildItem -Path c:\cert\vbox-sha256-r3.cer
$file | Import-Certificate -CertStoreLocation Cert:\LocalMachine\TrustedPublisher
e:\VBoxWindowsAdditions.exe /S
sleep 60