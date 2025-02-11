analiz_verisi <- read.csv2('imports-85.csv')
numeric_sutunlar <- sapply (analiz_verisi,class)=="numeric"
integer_sutunlar <- sapply(analiz_verisi,class)=="integer"


sayisal_sutunlar <- numeric_sutunlar|integer_sutunlar
sayisal_veri <- analiz_verisi[,sayisal_sutunlar]
summary(sayisal_veri)

install.packages('psych')
library('psych')

describe(sayisal_veri)
describeBy(sayisal_veri, group = analiz_verisi$YakitTuru)
describeBy(sayisal_veri, group = analiz_verisi$Fiyat)

nominal_sutunlar <- !sayisal_sutunlar
nominal_veri <- analiz_verisi[,nominal_sutunlar]

for(i in 1:ncol(nominal_veri)) {
  print(table(nominal_veri[,i]))
}


capraz.tablo <- table(nominal_veri$YakitTuru, nominal_veri$KapiSayisi)
capraz.tablo

toplamli.capraz.tablo <- addmargins(capraz.tablo)
toplamli.capraz.tablo


yuzdelikli.capraz.tablo <- prop.table(capraz.tablo)
yuzdelikli.capraz.tablo

print(round(100*yuzdelikli.capraz.tablo,2))
