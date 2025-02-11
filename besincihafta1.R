veri <- read.csv2("parkinsons2.csv")

library(nortest)

test <- lillie.test(veri$Fo)
if (test$p.value < 0.05) {
  cat(" dağılım normal değildir. p=", test$p.value)
} else {
  cat("dağılım normaldir.")
}


#parkinsons verisinde Fo alanının ortalamasının kitle ort olan 140 tan farkının
# 0.05 anlamlılık düzeyinde anlamlı olup olmadığını test ediyoruz.

test1 <- t.test(veri$Fo, alternative = "two.sided", mu=140)
if (test1$p.value <0.05){
  cat("Fo alanının ortalaması 140'tan  farklidir. p=", test1$p.value)
} else {
  cat(" Fo alanının ortalaması 140'tan farklıdır. p=", test1$p.value)
}

#parkinsons verisinde Fo alanının ortalamasının kitle ort olan 140 tan farkının
# 0.05 anlamlılık düzeyinde anlamlı olup olmadığını test ediyoruz.

test.edilecek.deger=140
test1 <- t.test(veri$Fo,alternative = "two.sided", mu=test.edilecek.deger)
if (test1$p.value < 0.05) {
  cat("Fo alanının ortalaması", test.edilecek.deger "'tan farklidir. p=" , test1$p.value)
} else {
  cat("Fo alanının ortalaması", test.edilecek.deger "'tan farkli değildir. p=" , test1$p.value)
}


##parkinsons verisinde Fo alanının ortalamasının kitle ort olan 150 den 0.05 anlamlılık düzeyinde
#büyük olup olmadığını test ediyoruz

test.edilecek.deger = 150
test1 <- t.test(veri$Fo, alternative =" greater", mu = test.edilecek.deger)
if ( test1$p.value < 0.05) {
  cat( "Fo alanının ortalaması" , test.edilecek.deger "'ten büyüktür. p=" test1$p.value)
} else {
  cat("Fo alaninin ortalamasi", test.edilecek.deger "'büyük değildir. p=", test1$p.value)
}


##parkinsons verisinde Fo alanının ortalamasının kitle ort olan 150 den 0.05 anlamlılık düzeyinde
#küçük olup olmadığını test ediyoruz

test.edilecek.deger = 150
test1 <- t.test(veri$Fo, alternative ="less", mu = test.edilecek.deger)
if ( test1$p.value < 0.05) {
  cat( "Fo alanının ortalaması" , test.edilecek.deger "'ten küçüktür. p=" test1$p.value)
} else {
  cat("Fo alaninin ortalamasi", test.edilecek.deger "'ten küçük değildir. p=", test1$p.value)
}
