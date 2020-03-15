
repo="https://raw.githubusercontent.com/watsonwarriors2020/challenges/master/"
wget --quiet $repo"ww.txt"

files=( "ww.py" "Challenge%209%20-%20Step%20it%20UP%20(py)%20v2.ipynb" "Challenge%207%20Fight%20Fire%20with%20Data%20(PY)%20v2.ipynb" "Challenge%206%20-%20Where%20There%20is%20Smoke%20TF%20Ke.ipynb" "fire_weather_speed_dis.csv" "Challenge_7_Merged_Data_single_fire.csv" )

cat ./ww.txt

printf "\nFetching Watson Warriors dependencies...\n\n"

for file in "${files[@]}"
do
    echo 
    wget -N --quiet --show-progress $repo$file
done

printf "\nFinished.\nPlease return to the Watson Warriors dashboard and proceed with the current challenge. \n\n"

rm ./ww.txt