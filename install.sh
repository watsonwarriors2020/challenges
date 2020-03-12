
repo="https://raw.githubusercontent.com/watsonwarriors2020/challenges/master/"
wget --quiet $repo"ww.txt"

files=( "ww.py" "Challenge%201%20-%20Enter%20Watson.ipynb" )

cat './ww.txt'
echo "\nFetching Watson Warriors dependencies...\n"

for file in "${files[@]}"
do
    wget -N --quiet --show-progress $repo$file
done