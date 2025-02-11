diyet_oncesi <- c(84,83,80,75,70,72,70,64)
diyet_sonrasi <- c(75,84,75,75,62,60,61,60)

test <- wilcox.test(diyet_oncesi, diyet_sonrasi, paired = TRUE)
P <- test$p.value[1]


if( p>0.05){
  cat("farklar yıgın medyanı 0dır")
} else {
  test1 <- wilcox.test(diyet_oncesi ,diyet_sonrasi, paired = TRUE, alternative = "g")
  p1 <- test1$p.value[1]
  if(p < 0.05){
    cat("farklar yığını medyanı 0 dan büyüktür")
} else {
    cat("farklar yıgını 0dan  kucuktur")
}
}
