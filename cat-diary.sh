###################################################################
#	            CAT-DIARY BY AMIT KARANDE
###################################################################

echo -e "\n*******CAT-DIARY (CATD)*******"
CURR_DIR=`pwd`
DIARY_DIR=~/Diary/
if [ ! -d "$DIARY_DIR" ]
then
echo -e "\nSeems like a new user...Creating Diary folder...Adding alias.. \n\nHope you enjoy using me.. =)\n\nYou can call me 'catd'\n\n"
echo "alias catd=\"bash $CURR_DIR/cat-diary.sh\"" >> ~/.bashrc
source ~/.bashrc
mkdir $DIARY_DIR
fi
TODAY=$(date)
YEAR=$( date | awk '{print $NF}')
DIARY_FILE=~/Diary/$YEAR.txt
if [ ! -e "$DIARY_FILE" ]
then
echo "Creating new diary for the year $YEAR.....Happy writing!! =)"
touch $DIARY_FILE
#else
#echo "Adding entry to existing diary for $YEAR"
fi 
echo $TODAY >> $DIARY_FILE
echo "============================" >> $DIARY_FILE
echo -e "Press Enter followed by Ctrl+D after writing...\n"
cat >> $DIARY_FILE
echo -e "\n" >> $DIARY_FILE
