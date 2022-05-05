# sampling_data

Repository ini merupakan jawaban tugas ke-4 kelas Shell/Tooling program Non-Degree Continuation BI/DS batch 8 pacmann siswa a.n Bayu Prabowo (bayu-EOh0).

Di dalam repository ini terdiri dari file utama **sampling.sh** yang berisikan command yang melakukan perintah berikut ini:
1. Download file weather_data.xlsx
   `wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx`
2. Convert sheet weather_2014 pada file weather_data.xlsx menjadi file **weather_2014.csv**
   `in2csv weather_data.xlsx --sheet weather_2014 > weather_2014.csv`
3. Convert sheet weather_2015 pada file weather_data.xlsx menjadi file **weather_2015.csv**
   `in2csv weather_data.xlsx --sheet weather_2015 > weather_2015.csv`
4. Gabung data weather 2014 dan 2015 ke dalam file **weather.csv**
   `csvstack weather_2014.csv weather_2015.csv > weather.csv`
5. Hapus file weather_data.xlsx
   `rm weather_data.xlsx`
6. Sampling file weather.csv dengan rate 0.3 lalu simpan ke dalam file **sample_weather.csv**
   `cat weather.csv | sample -r 0.3 > sample_weather.csv`
