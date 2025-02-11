veri <- read.csv2("parkinsons2.csv")
spread <- veri$spread2
ppe <- veri$PPE

test <- wilcox.test(spread, ppe, paired = FALSE)
if(test$p.value<0.05){
  cat("spread ve ppe medyanları aynı değildir.")
} else{
  cat("spread ve ppe medyanları aynı değildir")
}

test <- wilcox.test(spread, ppe, paired = FALSE alternative = "l")