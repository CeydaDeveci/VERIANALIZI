wine <- read.csv("wine.csv")
sayisal.sutunlar <- sapply(wine, class) != 'factor'
sayisal.veri <- wine[,sayisal.sutunlar]

v<- sayisal.veri$Alcohol

ortalama <- mean(v)
ortalama


ssapma <- sqrt(var(v))
ssapma

hist(v, probability =  TRUE, xlab =  "alkol orani", ylim= c(0,0.5),
     main = "Alkol histogram")


curve(dnorm(x, mean = ortalama, sd = ssapma), col= "red" , lwd=3, add =TRUE)


install.packages("moments")
library(moments)


carpiklik = skewness(v)
basiklik =kurtosis(v)
carpiklik
basiklik


test <- ks.test(v, 'pnorm')
if (test$p.value <0.05) {
  cat("Veriler normal degildir p=", test$p.value)
}else {
  cat("dagılım normaldir")
}



library(nortest)
test <- lillie.test(v)
if (test$p.value <0.05) {
  cat("Veriler normal degildir p=", test$p.value)
}else {
  cat("dagılım normaldir")
}

