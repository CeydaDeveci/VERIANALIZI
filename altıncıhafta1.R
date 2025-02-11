#A ilacının uygulandığı hastaların ort iyileşme süresinin  7 günden kısa olduğu iddia edilmektedir
#üretici firma bu ilacı uygulandığı hastaların iyilişme sürelerinin dağılımının normal olmadığını belirtmiştir 
# alfa 0.05 için testi r ortamında gerçekleştiriniz

5 6 8 7 9 3 4 5 4 6 

veri <- c(5, 6, 8, 7, 9, 3, 4, 5, 4, 6)
wilcox.test(veri, alternative = "less", mu = 7)



#bir ayçiçek yağı firmasının üretim bandında ürettiği 5 ltlik yağların hacminde herhangi bir sapma olup olmadığını
#araştırmak için 10 adet numune alınmış ve hacimleri aşağıda verilmiştir
#kitle dağılımının normal olmadığı varsayımı ile üretilen ayçiçek yağlarına ilişkin hacim değerlerinin 5 lt den 
#istatiksel olarak anlamlı derecede farklılaşıp farklılaşmadığına karar veriniz

veri <- c(5.1, 4.8, 5.3, 5.5, 4.5, 4.7, 4.9, 5, 5.1, 4.7)
test <- wilcox.test(veri, alternative = "two.sided", mu = 5)
if(test$p.value < 0.05){
  cat("Medyan 5'e eşit değildir")
} else {
  cat("medyan 5'e eşittir")
}


veri <- read.csv2("parkinsons2.csv")
degisken <- veri$Fo
test1 <- wilcox.test(degisken, alternative = "two.sided", mu = 160)
if(test1$p.value < 0.05){
  cat("medyan 160'a eşit değildir")
} else {
    cat("medyan 160'a eşittir")
}
