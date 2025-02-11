x <- c(1,2,3,4,5)
f <- c(1/5,1/5,1/5,1/5,1/5)
e <- sum(x*f)
e

varyans <- sum((x-e)^2*f)
varyans       

F <- cumsum(f)       
F

## kesikli olasılık dağılımları
## binom, geom, pois
## sürekli olasılık dağılımları
## uniform unif, üstel exp, normal norm
##olasılık yoğunluk fonk (dbinom, dgeom...)
##Birikimli olasılık yoğ. fonk. (pbinom,pgeom)


dbinom(3,10,prob=0.53)
pbinom(3,10,prob=0.53)

sum(dbinom(0:3,10, prob=0.53))

deger <- 1-pbinom(7,10,prob=0.53)
deger

#bir atıcının her atışta hedefi vurma olasılığının aynı ve ve 3/4 olduğu biliniyor
#x rastgele değişkeni arka arkaya yapılan atışlar sonucunda atıcının hedefi ilk kez vurması için
#gereken atış sayısı olduğuna göre atıcının hedefi ilk kez 4. atışta vurma olasılığı nedir geometrik dağılım

dgeom(4,prob= 3/4)
dgeom(1, prob= 3/4)

#geçmişteki kayıplardan ankaranın belirli bir bölgesinde bir gün içerisinde araba kazalarının sayısının ortalama 2.6
#olduğu görüşmüştür
#a) verilen herhangi bir günde bu bölgede hiç kaza olmaması olasılığı

dpois(0,2.6)

#b) verilen herhangi bir günde bu bölgede en az 5 araba kazası olması olasılığı

1- ppois(4,2.6)

# standart normal dağılıma sahip bir rastgele değişken ise 
#a) p(z<0.75)
#b) p(z>2)

pnorm(0.75,0,1)
1-pnorm(2,0,1)
