for file in `ls *.txt`
do
folderName=`echo $file | awk -F '{ print $1 }'`
echo $folderName
done

