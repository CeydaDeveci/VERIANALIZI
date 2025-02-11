x <- c(30,30,26,26,25,24,20,19)
y <- c(28,26,26,25,22,21,16,12)

fark= x-y

test = shapiro.test(fark)
if(test$p.value<0.05){
  cat("veri normal dağılmaktadır, t testi uygulanmaz")
} else {
  ttest = t.test(x,y, paired = TRUE)
  if(ttest$p.value<0.05){
    cat("x ve y arasında fark bulunmaktadır")
    test = t.test(x,y, paired = TRUE , alternative ="greater")
    if (test$p.value<0.05){
      cat("x turu verimi y veriminden fazladir")
    } else{
      cat("x turu verimi y türü veriminden azdır")
    }
  } else {
    cat("x ve y arasında fark bulunmamaktadır.")
  }
}
