@echo off

echo %date%
echo %time%
copy C:\Users\burhan.ali\Desktop\burhan_ali*zip*.* C:\Users\burhan.ali\Desktop\Picx\FolderD
echo "File Sucessful to Copy"
echo "UnZipping File....!!!"
powershell -Command "Expand-Archive -LiteralPath 'C:\Users\burhan.ali\Desktop\Picx\FolderD\burhan_ali.zip' -DestinationPath C:\Users\burhan.ali\Desktop\Picx\FolderD"
echo "Done"
pause