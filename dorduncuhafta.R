veri <- read.csv2("imports-85.csv")
capraz.tablo <- table(veri$Enjeksiyon, veri$KapiSayisi)
capraz.tablo
chisq.test(capraz.tablo)


t <- table(veri$Enjeksiyon, veri$YakitTuru)
t


test <- fisher.test(t)


install.packages('vcd')
library(vcd)
istatistik <- assocstats(t)
istatistik$cramer


if (test$p.value <0.05){
  cat("Degiskenler arasinda iliski vardir.")
  istatistik <- assocstats(t)
  cat("ilişkinin derecesi", istatistik$cramer, "dir.")
}else {
  cat("Degiskenler arasinda iliski yoktur.")
  }
