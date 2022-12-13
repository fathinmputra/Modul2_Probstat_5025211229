# Modul2_Probstat_5025211229
## Praktikum Modul 2

**<br>Nama  : Fathin Muhashibi Putra**
**<br>NRP   : 5025211229**
**<br>Kelas : Probstat A**

## NO. 1
> **Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.**
> 
> <img width="207" alt="image" src="https://user-images.githubusercontent.com/103252800/206852632-f7c7adc9-1a72-4c69-9c63-85b9f358c6de.png">
> 
> **Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.**
  
  **1a.)** **Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas**
  Pertama-tama, diinputkan terlebih dahulu data X dan Y, kemudian dihitung selisihnya.
Kemudian, dihitung standar deviasi dari selisih data tersebut menggunakan fungsi `sd()`. Sehingga, didapatkan nilai `Standar Deviasi =  6.35959467611297`.

```
# Menginputkan data 
X <- c(78,75,67,77,70,72,78,74,77)
Y <- c(100,95,70,90,90,90,89,90,100)

#Menghitung selisih data X dan Y.
Selisih <- c(Y-X)

#Menghitung standar deviasi.
StandarDeviasi <- sd(Selisih)
paste("Standar Deviasi = ", StandarDeviasi)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/207226949-dc985914-4e65-461c-bd96-76425fc1b5a0.png">

  **1b.)** **carilah nilai t (p-value)**
  Untuk mendapatkan nilai t(p-value) digunakan fungsi `t.test()`. Sehingga didapatkan hasil `t = 7.6525, df = 8, p-value = 6.003e-05`
```
t.test (Y, X, paired = TRUE, var.equal = FALSE)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/207226709-6d8b3b69-fb75-4ee2-9366-06e9cb67bf09.png">
  
  **1c.)** **tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”**
```
H0 : “Tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
H1 : “Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

Confident level = 95% = 0.95
Significant Level (𝛼) = 5% = 0,05 

Penyelesain soal ini menggunakan two-tail.
Lihat Tabel distribusi t :
  Kolom = 𝛼/2 = 0,05/2 = 0,025
  Baris = df = 8 (nilai didapat dari no. 1b) 
Maka, critical value = 2,306

t = 7.6525 (nilai didapat dari no. 1b)
Nilai t = 7,625 berada di daerah tolak H0. Sehingga kesimpulannya sesuai dengan H1 atau Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴

𝛼(Significant Level) = 5% = 0,05 (Significant Level)
p-value = 6.003e-05 = 0,00006003 (nilai didapat dari no. 1b)
0,00006003 < 0,05
Karena p-value <= 𝛼, maka kesimpulannya adalah tolak H0. Sehingga kesimpulannya sesuai dengan H1 atau Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴
```  

## NO. 2
> **(Hipotesa 1 sampel) Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul). **

Terlebih dahulu menginstall packages dan library berikut :
```
install.packages("BSDA")
library(BSDA)
```
Soal ini menggunakan prinsip Uji Hipotesa 1 Sampel.

Membuat Hipotesis H0 dan H1 :
```
H0 :Rata-rata mobil dikemudikan <= 20.000 kilometer per tahun.
H1 :Rata-rata mobil dikemudikan > 20.000 kilometer per tahun.
```

#Data yang diketahui :
```
# mean = 23500 = mean.x
# standar deviasi = 3900 = sigma.x
# n = 100 = n.x
# H1 = lebih besar dari = greater =(alternative)
# mu = 20000 
# confident level = 95% = 0.95 = conf.level
# significant level (α)= 5% = 0.05
```

  **2a.)** **Apakah Anda setuju dengan klaim tersebut?**
Karena n >= 30 maka dapat digunakan distribusi normal dengan uji z-distribution. Menggunakan fungsi `zsum.test()` dan menggunakan data yang diketahui sebagai berikut :
```
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "greater", mu = 20000, conf.level = 0.95)
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207230389-9a42d583-c3f9-4d4a-808a-d8762819d720.png">

Berdasarkan hasil yang telah didapatkan, Hipotesis Alternatif atau H1 bernilai benar bahwa Rata-rata mobil dikemudikan lebih dari 20.000 kilometer per tahun. Jadi, Saya setuju dengan klaim tersebut.

  **2b.)** **Jelaskan maksud dari output yang dihasilkan!**
  Output yang dihasilkan adalah sebagai berikut :
  
<img width="342" alt="image" src="https://user-images.githubusercontent.com/103252800/207230746-078f9989-120b-47e1-b7e0-698ac1f6a589.png">

Penjelasan :
```
Confident level = 95% = 0.95
Significant Level (𝛼) = 5% = 0.05 

z = 8.9744 merupakannilai uji statistik

p-value < 2.2e-16 merupakan p-value(z>=8.97)

Maka, p-value(z>=8.97) < (α=0.05)

Sehingga, H0 ditolak atau berada pada daerah penolakan.
```
  
  **2c.)** **Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!!**

Karena `p-value(z>=8.97) < (α=0.05)` , maka H0 ditolak atau berada pada daerah penolakan. Sehingga, kesimpulannya Hipotesis Alternatif (H1) bernilai benar atau menerima H1, bahwa Rata-rata mobil dikemudikan lebih dari 20.000 kilometer per tahun.



## NO. 3
> **(Hipotesa 2 sampel) Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.**
> 
> <img width="323" alt="image" src="https://user-images.githubusercontent.com/103252800/206852836-ae3397e6-1840-40cc-837f-17455d2d840e.png">
> <img width="321" alt="image" src="https://user-images.githubusercontent.com/103252800/206852842-6c6a7bd5-4790-4fcb-8303-bdb96324b51e.png">
> 
> **Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :**
  
  **3a.)** **H0 dan H1**
  
  Menentukan Hipotesis :
```
HO : Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2).
H1 : Ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2).

```

  **3b.)** **Hitung Sampel Statistik**

Pertama-tama diinputkan terlebih dahulu data-data yang diketahui. Kemudian menggunakan TWO-SIDED atau TWO-TAILED test, dipakai fungsi `tsum.test()`. Sehingga, didapatkan hasil `t = 1.9267, df = 44, p-value = 0.06049`.

```
n_bandung <- 19
n_bali <- 27
mean_bandung <- 3.64
mean_bali<- 2.79
sd_bandung <- 1.67
sd_bali <- 1.32
confident_level <- 0.95
# signifikan_level <- 0.05
# variance_bandung = variance_bali

#Menggunakan TWO-SIDED atau TWO-TAILED test 

tsum.test(mean.x=mean_bandung, s.x = sd_bandung, n.x = n_bandung, 
          mean.y =mean_bali , s.y = sd_bali, n.y = n_bali, 
          alternative = "two.side", var.equal = TRUE, conf.level = confident_level)
```

<img width="600" alt="image" src="https://user-images.githubusercontent.com/103252800/207232910-5f8053e6-65a1-4d6c-84a0-bdcfd2882ca4.png">
  
  **3c.)** **Lakukan Uji Statistik (df =2)**
Terlebih dahulu menginstall packages dan library berikut :
```
install.packages("vctrs")
install.packages("mosaic")
library(mosaic)
```

Kemudian, untuk melakukan uji statistik(df=2) kita perlu menampilkan grafik visualisasi yang akan digunakan untuk set nilai kritikal nantinya. Fungsi yang digunakan, yaitu `plotDist()`.
```
plotDist(dist = 't', df = 2, col = "blue")
```
Sehingga, ditampilkan grafik visualisasi untuk uji statistik dengan derajat bebas(df)=2 sebagi berikut. 

<img width="481" alt="image" src="https://user-images.githubusercontent.com/103252800/207234114-270b5ec4-c1fe-4098-a075-2bfcaaa3c800.png">
  
  **3d.)** **Nilai Kritikal**

Untuk mendapatkan nilai kritikal dengan kondisi TWO-TAILED, maka digunkan fungsi `qt()` , sehingga didapatkan `nilai kritikal = 2.073873`.
```
qt(p=0.05/2, df=22, lower.tail=FALSE)
```
<img width="481" alt="image" src="https://user-images.githubusercontent.com/103252800/207234420-b43d1f73-4f5a-403f-a5d2-610ec807c36b.png">
    
  **3e.)** **Keputusan**  
  
Berdasarkan hasil yang telah didapatkan sebelumnya, kita dapat membuat keputusan sebagai berikut :
```
t = 1.9267 dan nilai kritikal = 2.073873
t < nilai kritikal, atau t berada pada daerah penerimaan H0 (TERIMA H0)

p-value = 0.06049 dan α = 0.05
p-value >= α (TERIMA H0)
```
Jadi keputusannya adalah menerima Hipotesis null atau H0.
  
  **3f.)** **Kesimpulan**
Berdasarkan keputusan pada no. 3e, maka kesimpulannya:

Menerima Hipotesis null atau H0 bahwa Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2).
µ1 = µ2

  
## NO. 4
> **(Anova satu arah) Seorang Peneliti sedang meneliti spesies dari kucing di ITS.
Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren,
kucing hitam dan kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:**
  
  **4a.)** **Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.**
Pertama, diinputkan terlebih dahulu tabel data yang telah disediakan.
```
data_anovaSatuArah <- read.table ("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt", header = T)
```

Kemudian, kita perlu men-set Group menjadi suatu factor, kemudian memberikan label pada factor tersebut.
```
data_anovaSatuArah$Group <- as.factor(data_anovaSatuArah$Group)
data_anovaSatuArah$Group = factor(data_anovaSatuArah$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
```

Selanjutnya, kita mengelompokkan data menjadi 3 kelompok sebagai berikut :
```
Grup1 <- subset(data_anovaSatuArah, Group == "Kucing Oren")
Grup2 <- subset(data_anovaSatuArah, Group == "Kucing Hitam")
Grup3 <- subset(data_anovaSatuArah, Group == "Kucing Putih")
```

<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207238813-3a7bdbfe-5900-4917-bc79-7c363f563c31.png">

Setelah dikelompokkan, masing-masing kelompok dibuatkan plot kuantil normal menggunakan fungsi `qqnorm()` dan `qqline()` sebagai berikut :

Grup 1
```
qqnorm(Grup1$Length)
qqline(Grup1$Length)
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207239860-e07f2737-7bee-4418-8c43-81859cd3a56b.png">

Grup 2
```
qqnorm(Grup2$Length)
qqline(Grup2$Length)
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207239719-a628455f-a61d-4a91-bf79-11e01c1e23b5.png">

Grup 3
```
qqnorm(Grup3$Length)
qqline(Grup3$Length)
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207239976-ef06baf9-8b77-4693-b2e2-59992b403cec.png">

  **4b.)** **carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?**
Menentukan H0 dan H1 terlebih dahulu
```
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama 
H1 : Minimal ada sepasang spesies yang memiliki perbedaan panjang atau rata-rata panjangnya berbeda.
```

Menggunakan fungsi `bartlett.test()`, didapatkan hasil `Bartlett's K-squared = 0.43292, df = 2, p-value = 0.8054`.
```
bartlett.test(Length~Group, data=data_anovaSatuArah)
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207240688-ba0f381a-a3c7-4b0b-b8f8-920b60827ba6.png">

Didapatkan p-value sebesar 0.8054, p-value lebih besar dari signifikan level(α=0.05) yang artinya varians dari ketiga kelompok nilainya sama. Kesimpulannya, terdapat homogenitas varians untuk melakukan anova satu arah (one way).

  **4c.)** **Untuk uji ANOVA, buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1. **

Menggunakan fungsi `lm()` dan `anova()` dibuatlah model linier dengan Panjang versus Grup dengan diberi `model 1`.
```
model1 = lm(Length ~ Group, data = data_anovaSatuArah)
anova(model1)
```
  <img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/207241182-54b1e502-b614-418d-bcb0-1618f1587456.png">
  
  **4d.)** **Dari Hasil Poin C , Berapakah nilai-p ? ,  Apa yang dapat Anda simpulkan dari H0?**

Berdasarkan hasil yang didapatkan dari poin C :
```
Signifikan level = 0.05
Berdasarkan hasil poin C, didapatkan P-Value dari tabel F, yaitu P-Value = 0,0013
Sedangkan, F-Value dari hasil perhitungan ANOVA satu arah, yaitu F-Value = 7,0982
F-Value > P-Value
```
Sehingga, kesimpulannya adalah menolak H0 atau menunjukkan bahwa Minimal ada sepasang spesies yang memiliki perbedaan panjang atau rata-rata panjangnya berbeda.
  
  **4e.)** **Verifikasilah jawaban model 1 dengan Post-hooc test TukeyHSD ,  dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.**
  
Menggunakan fungsi `TukeyHSD()` dilakukan verifikasi jawaban model 1 .
```
TukeyHSD(aov(model1))
```
Dengan signifikan level = 0.05 , didapatkan hasil sebagai berikut :
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/207242044-8d8dcfff-cbf5-4e88-aa8c-26d877ad392f.png">

```
Dari Hasil yang didapatkan, terdapat 3 kelompok (masing-masing 2 spesies) untuk membandingkan masing-masing spesies kucing.

Jika P-Value yang didapatkan nilainya lebih besar dari signifikan level = 0.05 , maka memiliki panjang yang sama.
Sedangkan, jika P-Value yang didapatkan nilainya lebih kecil dari signifikan level = 0.05 , maka memiliki panjang yang berbeda.

P-Value Kucing Hitam-Kucing Oren  = 0.0020955 < 0.05 (PANJANGNYA BERBEDA)
P-Value Kucing Putih-Kucing Oren  = 0.8726158 > 0.05 (PANJANGNYA SAMA)
P-Value Kucing Putih-Kucing Hitam = 0.0098353 < 0.05 (PANJANGNYA BERBEDA)
```
Sehingga, dapat disimpulkan bahwa Minimal ada sepasang spesies yang memiliki perbedaan panjang atau rata-rata panjangnya berbeda.
(Sesuai dengan kesimpulan dari No. 4d)
  
  **4f.)** **Visualisasikan data dengan ggplot2**
Menggunakan fungsi `ggplot()` dibuat sebuah visualisasi data.
```
ggplot(data_anovaSatuArah, aes(x = Group, y = Length)) +
  geom_boxplot(color = c("#FF8C00", "#000000", "#A9A9A9")) +
  scale_x_discrete() + xlab("Grup") + ylab("Panjang (cm)")
```

Visualisasi data yang dihasilkan sebagai berikut :
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207242635-f250bb48-28be-4764-88aa-f56990f74760.png">

## NO. 5
> **(Anova dua arah) Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut:**
>  
> **Data Hasil Eksperimen.** 
> 
> <img width="183" alt="image" src="https://user-images.githubusercontent.com/103252800/206853169-c4dcc1b0-ce84-4168-a29e-b241f73e254d.png">
> 
> **Dengan data tersebut:**
  
  **5a.)** **Buatlah plot sederhana untuk visualisasi data**
Pertama-tama, diinputkan terlebih dahulu data yang telah disediakan menggunakan fungsi `read.csv()`. Kemudian, dibuatlah plot sederhana untuk visualisasi data menggunakan fungsi `qplot()`.

```
GlassTempLight <- read_csv("C:/Users/Fathin Muhashibi P/Downloads/GTL.csv")

qplot(x = Temp, y = Light, geom = "point", data = GlassTempLight) + facet_grid(.~Glass, labeller = label_both)
```
Sehingga, ditampilkan plot sebagai berikut :

<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/207243646-a885567b-80f3-4324-b769-7de6d495ab86.png">

  **5b.)** **Lakukan uji ANOVA dua arah untuk 2 faktor**

Untuk melakukan uji ANOVA dua arah untuk 2 faktor, pertama-tama dibuat terlebih dahulu variabel as factor sebagai suatu anova, kemudian dilakukan Analisis of Variace.
```
GlassTempLight $Glass <- as.factor(GlassTempLight $Glass)
GlassTempLight $Temp_Factor <- as.factor(GlassTempLight $Temp)
str(GlassTempLight)

anova <- aov(Light ~ Glass*Temp_Factor, data = GlassTempLight)
summary(anova)
```

<img width="478" alt="image" src="https://user-images.githubusercontent.com/103252800/207244986-a2aceb7c-5a12-4f54-9c61-1e64020f090f.png">


  **5c.)** **Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)**

Untuk menampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi), digunakan fungsi `group_by()`, `summarise()` dan `arrange()`. Kemudian dicetak menggunakan fungsi `print()`.
```
SummaryData <- group_by(GlassTempLight, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(SummaryData)
```
<img width="479" alt="image" src="https://user-images.githubusercontent.com/103252800/207245448-3e87e478-92e6-4715-8b6e-4002509d6ddc.png">

  
  **5d.)** **Lakukan uji Tukey**

Untuk melakukan uji Tukey digunkan fungsi `TukeyHSD()`  dan dicetak menggunakan fungsi `print()`.

```
tukeyGlassTempLight <- TukeyHSD(anova)
print(tukeyGlassTempLight)

```
Maka, ditampilkan hasil sebagai berikut :
<img width="404" alt="image" src="https://user-images.githubusercontent.com/103252800/207246325-e29213fe-694c-41db-a99c-4078f695f96b.png">

    
  **5e.)** **Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey**

Pertama-tama, perlu diinstall packages dan library berikut :
```
install.packages("multcompView")
library(multcompView)
```

Kemudian, dibuat suatu compact letter display menggunakan fungsi `multcompLetters4()` dan dicetak menggunakan fungsi `print()`.
```
tukey.cld <- multcompLetters4(anova, tukeyGlassTempLight)
print(tukey.cld)
```
Maka, ditampilkan hasil sebagai berikut :

<img width="477" alt="image" src="https://user-images.githubusercontent.com/103252800/207247866-13314014-5611-40f8-aa6e-8d5604017d5f.png">

Selanjutnya, dilakukan penambahan kolom mean dan sd(standar deviasi) ke tabel compact letter display menggunakan fungsi `as.data.frame.list()` , `SummaryData$Tukey <- cld$Letters` , dan dicetak menggunakan fungsi `print()`.

```
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
SummaryData$Tukey <- cld$Letters
print(SummaryData)
```
Maka, ditampilkan hasil sebagai berikut :

<img width="481" alt="image" src="https://user-images.githubusercontent.com/103252800/207248057-e9090410-9898-4359-83b7-323710cd1aba.png">

