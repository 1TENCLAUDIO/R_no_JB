#Estatísticas descritivas
#Medidas de tendência central
#Média, mediana, moda

vars <- iris[,-5]
apply(vars, 2, mean)
apply(vars, 2, median)

freq_sl <- sort(table(iris$Sepal.Length), decreasing = TRUE)
freq_sl[1]

apply(vars, 2, var)

sd01 <- apply(vars, 2, sd)

# outra forma:

sd02 <- apply(vars, 2, function(x) sqrt(var(x)))
sd01
sd02
sd01==sd02

cv <- function(x){
  sd(x)/mean(x)*100
}
apply(vars, 2, cv)

# sumario de 5 numeros
apply(vars, 2, quantile)
# 5%, 50% e 95%
apply(vars, 2, quantile, probs=c(0.05, 0.5, 0.95))

# a funcao range nos retorna os valores minimo e maximo
apply(vars, 2, range)
# aplicando a funcao diff ao resultado do range, temos o valor desejado
# uma boa pratica é nunca sobrescrever um objeto já existente no R, por isso
# nunca nomeie um objeto com um nome já existente
my_range <- function(x){diff(range(x))}
apply(vars, 2, my_range)

apply(vars, 2, IQR)

cor(vars)

a <- rnorm(100,5,1)
mean(a)
sum(a)/length(a)

minha_media <-function(x){sum(x)/length(x)}
# x é o argumento

minha_var <- function(x){(x-mean(x))^2)/(length(x)-1)}

#entendendo a funçao: diigte a funçao
ls

boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width)
boxplot(iris$Petal.Length)
boxplot(iris$Petal.Width)

boxplot(iris$Sepal.Width)
my_boxplot <- boxplot(iris$Sepal.Width, plot=FALSE)
my_boxplot
# o objeto é uma lista e os valores outliers estão guardados no elemento $out da lista
outliers <- my_boxplot$out
#qual a posicao dos outliers
which(iris$Sepal.Width %in% outliers)
# vamos usar a posicao para indexar o objeto
iris[which(iris$Sepal.Width %in% outliers), c("Sepal.Width", "Species")]

boxplot(Sepal.Width ~ Species, data=iris)
my_boxplot2 <- boxplot(Sepal.Width ~ Species, data=iris, plot=FALSE)
my_boxplot2
# o objeto é uma lista e os valores outliers estão guardados no elemento $out da lista
outliers2 <- my_boxplot2$out
# neste caso, queremos apenas os outliers da especie setosa
# vamos usar a posicao para indexar o objeto
iris[iris$Sepal.Width %in% outliers2 &
       iris$Species=="setosa",
     c("Sepal.Width", "Species")]
