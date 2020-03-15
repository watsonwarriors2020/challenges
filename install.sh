
repo="https://raw.githubusercontent.com/watsonwarriors2020/challenges/master/"
wget --quiet $repo"ww.txt"

files=( "ww.py" "Challenge 9 - Step it UP (py) v2.ipynb" "Challenge 7 Fight Fire with Data (PY) v2.ipynb" "Challenge 6 - Where There is Smoke TF Ke.ipynb" "fire_weather_speed_dis.csv" )

cat ./ww.txt

printf "\nFetching Watson Warriors dependencies...\n\n"

for file in "${files[@]}"
do
    wget -N --quiet --show-progress $repo$file
done

printf "\nFinished.\nPlease return to the Watson Warriors dashboard and proceed with the current challenge. \n\n"

rm ./ww.txt