veri <- read.csv2("parkinsons2.csv")
spread <- veri$spread2
ppe <- veri$PPE


#varyans homojenliği
library(car)

birlestirilmis.degisken <- c(spread, ppe)

spread.uzunluk <- length(spread)
ppe.uzunluk <- length(ppe)

spread.belirtec <- rep(1, spread.uzunluk)
ppe.belirtec <- rep(2, ppe.uzunluk)

birlestirilmis.belirtec <- c(spread.belirtec , ppe.belirtec)

levene = leveneTest(birlestirilmis.degisken, birlestirilmis.belirtec)
levene

pdegeri <- levene$'Pr(>F)' [1]

if(pdegeri<0.05){
  ttest = t.test(spread, ppe , var.equal = FALSE)
  if (ttest$p.value<0.05) {
    print("spread ortalaması ppe den farklıdır")
} else{
  print("spread ortalaması ppe den farklı değildir")
}
} else{
  test <- t.test(spread, ppe, var.equal = TRUE)
  if(ttest$p.value<0.05){
    print("spread ortalaması ppeden farklıdır")
  }else{
    print("spread prtalaması ppeden farklı değildir")
  }
}

