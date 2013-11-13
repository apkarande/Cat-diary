TODAY=$(date)
YEAR=$( date | awk '{print $NF}')
DIARY_FILE="~/Diary/$YEAR.txt"
if [ ! -e $DIARY_FILE ]
then
echo "Creating new diary for the year $YEAR.....Happy writing!! =)"
touch $DIARY_FILE
#else
#echo "Adding entry to existing diary for $YEAR"
fi 
echo $TODAY >> $DIARY_FILE
echo "============================" >> $DIARY_FILE
echo -e "Press Ctrl-D after writing...\n"
cat >> $DIARY_FILE
echo -e "\n" >> $DIARY_FILE
