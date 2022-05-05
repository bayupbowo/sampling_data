#!/bin/bash

# a. Download file weather_data.xlsx
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# b. Convert sheet weather_2014 dan weather_2015 pada file weather_data.xlsx menjadi file csv terpisah 
in2csv weather_data.xlsx --sheet weather_2014 > weather_2014.csv
in2csv weather_data.xlsx --sheet weather_2015 > weather_2015.csv

# c.1 Gabung data weather 2014 dan 2015 ke dalam file weather.csv
csvstack weather_2014.csv weather_2015.csv > weather.csv

# c.2 Hapus file weather_data.xlsx
rm weather_data.xlsx

# d. Sampling file weather.csv dengan rate 0.3 lalu simpan ke dalam file sample_weather.csv
cat weather.csv | sample -r 0.3 > sample_weather.csv
