# Praktikum Modul 2
# Nama : Fathin Muhashibi Putra
# NRP : 5025211229
# Kelas : Probstat A


#NO. 1

#Penyelesaian No. 1a

# Menginputkan data 
X <- c(78,75,67,77,70,72,78,74,77)
Y <- c(100,95,70,90,90,90,89,90,100)

#Menghitung selisih data X dan Y.
Selisih <- c(Y-X)

#Menghitung standar deviasi.
StandarDeviasi <- sd(Selisih)
paste("Standar Deviasi = ", StandarDeviasi)
#Standar Deviasi =  6.35959467611297


#Penyelesaian No. 1b
t.test (Y, X, paired = TRUE, var.equal = FALSE)  
#t = 7.6525, df = 8, p-value = 6.003e-05


#Penyelesaian No. 1c
#H0 : “Tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
#H1 : “Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

#Confident level = 95% = 0.95
#Significant Level (𝛼) = 5% = 0,05 

# Menggunakan two-tail, 
# Lihat Tabel distribusi t
# Kolom = 𝛼/2 = 0,05/2 = 0,025
# Baris = df = 8 (nilai didapat dari no. 1b) 
# Maka, critical value = 2,306
# t = 7.6525 (nilai didapat dari no. 1b)
# 7,625 berada di daerah tolak H0
# Sehingga kesimpulannya sesuai dengan H1 atau Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴

#𝛼(Significant Level) = 5% = 0,05 (Significant Level)
# p-value = 6.003e-05 = 0,00006003
# 0,00006003 <= 0,05 (nilai didapat dari no. 1b)
# Jika p-value <= 𝛼, maka kesimpulannya adalah tolak H0
# Sehingga kesimpulannya sesuai dengan H1 atau Ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴




#NO. 2

# Terlebih dahulu menginstall packages dan library berikut :
install.packages("BSDA")
library(BSDA)

#Membuat Hipotesis H0 dan H1 :
# H0 :Rata-rata mobil dikemudikan <= 20.000 kilometer per tahun.
# H1 :Rata-rata mobil dikemudikan > 20.000 kilometer per tahun.

#Data yang diketahui :
# mean = 23500 = mean.x
# standar deviasi = 3900 = sigma.x
# n = 100 = n.x
# H1 = lebih besar dari = greater =(alternative)
# mu = 20000 
# confident level = 95% = 0,95 = conf.level
# significant level (α)= 5% = 0,05


#Penyelesaian No. 2a
# karena n >= 30 maka dapat digunakan distribusi normal dengan uji z-distribution :
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "greater", mu = 20000, conf.level = 0.95)  
# Berdasarkan hasil yang telah didapatkan, H1 bernilai benar bahwa Rata-rata mobil dikemudikan lebih dari 20.000 kilometer per tahun
# Saya setuju dengan klaim tersebut.


# Penyelesaian No. 2b
# Output yang dihasilkan adalah sebagai berikut :
# z = 8.9744 merupakan nilai uji statistik
# p-value < 2.2e-16 merupakan p-value(z>=8.97)
# Maka, p-value(z>=8.97) < (α=0.05)
# Sehingga, H0 ditolak atau berada pada daerah penolakan


# Penyelesaian No. 2c
# p-value(z>=8.97) < (α=0.05)
# Berada pada daerah penolakan atau H0 ditolak.
# Sehingga, kesimpulannya Hipotesis Alternatif (H1) bernilai benar atau menerima H1 bahwa Rata-rata mobil dikemudikan lebih dari 20.000 kilometer per tahun




#NO. 3

#Jika belum, terlebih dahulu diinstal packages dan library berikut : 
install.packages("BSDA")
library(BSDA)

#Penyelesaian No. 3a
# HO : Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)
# H1 : Ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)


#Penyelesaian No. 3b
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
# t = 1.9267, df = 44, p-value = 0.06049


#Penyelesaian No. 3c
# Terlebih dahulu menginstall packages dan library berikut :
install.packages("vctrs")
install.packages("mosaic")
library(mosaic)

# Menampilkan grafik yang akan digunakan untuk set nilai kritikal
plotDist(dist = 't', df = 2, col = "blue")


#Penyelesaian No. 3d
qt(p=0.05/2, df=22, lower.tail=FALSE)
# nilai critical = 2.073873


#Penyelesaian No. 3e
# Keputusan berdasarkan hasil yang didapatkan sebelumnya :
# t = 1.9267 dan nilai kritikal = 2.073873
# t < nilai kritikal, atau t berada pada daerah penerimaan H0 (TERIMA H0)

# p-value = 0.06049 dan α = 0.05
# p-value >= α (TERIMA H0)

#Jadi, keputusannya adalah menerima Hipotesis null atau H0


#Penyelesaian No. 3f
# Berdasarkan keputusan pada no. 3e, maka kesimpulannya:
# Tidak ada perbedaan pada rata-rata saham kota Bandung (µ1) dengan rata-rata saham Kota Bali (µ2)
# µ1 = µ2




#NO. 4

#Penyelesaian No. 4a

#Menginputkan data yang telah disediakan :
data_anovaSatuArah <- read.table ("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt", header = T)

# Men-set Group menjadi suatu factor, kemudian memberikan label pada factor tersebut.
data_anovaSatuArah$Group <- as.factor(data_anovaSatuArah$Group)
data_anovaSatuArah$Group = factor(data_anovaSatuArah$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

# Membagi data menjadi 3 bagian sesuai dengan label masing-masing grup yang telah diberikan sebelumnya.
Grup1 <- subset(data_anovaSatuArah, Group == "Kucing Oren")
Grup2 <- subset(data_anovaSatuArah, Group == "Kucing Hitam")
Grup3 <- subset(data_anovaSatuArah, Group == "Kucing Putih")

#Grup 1
qqnorm(Grup1$Length)
qqline(Grup1$Length)  

#Grup 2
qqnorm(Grup2$Length)
qqline(Grup2$Length) 

#Grup 3
qqnorm(Grup3$Length)
qqline(Grup3$Length) 


#Penyelesaian No. 4b

# H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama    
# H1 : Minimal ada sepasang spesies yang memiliki perbedaan panjang atau rata-rata panjangnya berbeda.

bartlett.test(Length~Group, data=data_anovaSatuArah)
#Bartlett's K-squared = 0.43292, df = 2, p-value = 0.8054
#Didapatkan p-value sebesar 0.8054, p-value lebih besar dari signifikan level 
#yang artinya varians dari ketiga kelompok sama dan kesimpulannya terdapat homogenitas varians untuk melakukan anova satu arah (one way).


#Penyelesaian No. 4c
model1 = lm(Length ~ Group, data = data_anovaSatuArah)
anova(model1)


#Penyelesaian No. 4d
# Signifikan level = 0.05
# Berdasarkan hasil poin C, didapatkan P-Value dari tabel F, yaitu P-Value = 0,0013
# Sedangkan, F-Value dari hasil perhitungan ANOVA satu arah, yaitu F-Value = 7,0982
# F-Value > P-Value
# Sehingga, kesimpulannya adalah menolak H0 atau menunjukkan bahwa Minimal ada sepasang spesies yang memiliki perbedaan panjang atau rata-rata panjangnya berbeda.


#Penyelesaian No. 4e
TukeyHSD(aov(model1))
# Dengan signifikan level = 0.05 , didapatkan hasil sebagai berikut :
#(Gambar)
# Dalam Hasil yang didapatkan, terdapat 3 kelompok (masing-masing 2 spesies) untuk membandingkan masing-masing spesies kucing.
# Jika P-Value yang didapatkan nilainya lebih besar dari signifikan level = 0.05 , maka memiliki panjang yang sama
# Sedangkan, jika P-Value yang didapatkan nilainya lebih kecil dari signifikan level = 0.05 , maka memiliki panjang yang berbeda
# P-Value Kucing Hitam-Kucing Oren  = 0.0020955 < 0.05 (PANJANGNYA BERBEDA)
# P-Value Kucing Putih-Kucing Oren  = 0.8726158 > 0.05 (PANJANGNYA SAMA)
# P-Value Kucing Putih-Kucing Hitam = 0.0098353 < 0.05 (PANJANGNYA BERBEDA)
# Sehingga, dapat disimpulkan bahwa Minimal ada sepasang spesies yang memiliki perbedaan panjang atau rata-rata panjangnya berbeda.
# Sesuai dengan kesimpulan dari No. 4d


#Penyelesaian No. 4f
ggplot(data_anovaSatuArah, aes(x = Group, y = Length)) +
  geom_boxplot(color = c("#FF8C00", "#000000", "#A9A9A9")) +
  scale_x_discrete() + xlab("Grup") + ylab("Panjang (cm)")




#NO. 5

#Penyelesaian No.5a
GlassTempLight <- read_csv("C:/Users/Fathin Muhashibi P/Downloads/GTL.csv")

qplot(x = Temp, y = Light, geom = "point", data = GlassTempLight) + facet_grid(.~Glass, labeller = label_both)


#Penyelesaian No.5b
GlassTempLight $Glass <- as.factor(GlassTempLight $Glass)
GlassTempLight $Temp_Factor <- as.factor(GlassTempLight $Temp)
str(GlassTempLight)

anova <- aov(Light ~ Glass*Temp_Factor, data = GlassTempLight)
summary(anova) 


#Penyelesaian No. 5c
SummaryData <- group_by(GlassTempLight, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(SummaryData)


#Penyelesaian No. 5d
tukeyGlassTempLight <- TukeyHSD(anova)
print(tukeyGlassTempLight)


#Penyelesaian No. 5e

# Perlu menginstal packages dan library berikut :
install.packages("multcompView")
library(multcompView)

# Terlebih dahulu membuat compact letter display
tukey.cld <- multcompLetters4(anova, tukeyGlassTempLight)
print(tukey.cld)

# Kemudian ditambahkan mean dan sd ke tabel compact letter display
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
SummaryData$Tukey <- cld$Letters
print(SummaryData)









































