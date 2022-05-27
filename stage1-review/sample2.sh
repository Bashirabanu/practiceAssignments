for file in `ls *.java *.py *.js`
do
  folderName=`echo $file | awk -F. '{ print $1 }'`
subfolderName=`echo $file | awk -F. '{ print $2 }'`
fileName=`echo $file | awk -F. '{ print $1 }'`
mkdir -p $folderName/$subfolderName/ $filename
mv $fileName $subfolderName
mv $file $subfolderName
  mv $subfolderName $folderName
  echo moved $file to $subfolderName

done
