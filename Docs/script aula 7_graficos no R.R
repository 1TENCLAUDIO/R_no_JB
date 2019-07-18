#BOAS PRATICAS NA CONSTRUÇAO DE GRAFICOS#

1. nocoes basicas de graficos no R

NAO FAÇA!
  GRÁFICOS 3 D (excepcionalmente)

FAÇA!
  use cores para repartir niveis de variaveis

NUNCA USE GRAFICOS DE PIZZA!

FAÇA ASSIM:
  grafico de barras (%) horizontal ou vertical
  ordene as barras do maior pro menor ou vice versa
  adicione intervalo de confiança ou desvio padrao (medida de erro) em caso de medias centrais
  MAS...use pontos com os intervalos de erro para visualizar o valor e o desvio

  MAS vale pensar em grafico, tabela ou a informaçao no corpo do texto para poucos dados.

  Diagrama de Pontos ordenado

  Grafico de Dispersão com símbolos poluídos = cuidados com cores e transparências

  Pensem....
  o gráfico deve ser muito necessário
  cuidados com vieses de observação
  cuidado com qtd e a cor usada na tinta
  apresentar sempre a medida de erro (intervalo de confiança)
  a ordem dos elementos sempre importa
  "las=1" edita o eixo y do grafico


2. Editando gráficos

o grafico de barras: use plot() boxplot() barplot()
  mudar a ordem das barras? observe a frequencia dos dados
  mudar estrutura de caixa para 2 eixos = bty()
  mudar o eixo y? (las=1)
  mudar os rótulos? xlab=",,," e ylab="..."
  incluir cor? col= numero ou nome ou codigo hexadecimal do HTML ou pelo código RGB de cores?
  mudar a transparencia de cores? use o codigo rgb

o gráfico de barras com subcategorias
grafico de barra com categorias
grafico de barra em mosaico = proporçao % = mosaicplot()

o grafico de dispersão use plot()
use log() ou não...
use cores e transparencias
icones library(png), library(grid), pic<-readPNG("figs/car.png"). grid.raster()
por exemplo


grafico de multiplas janelas
definir objeto 'zones'
funçao layout(), plot(), abline(m1), grid.raster(), barplot(), par()

graficos para modelos lineares
lm()
coef()
limy
limx
par()
plot()
abline() = extrair o coeficiente do interceptor e da inclinaçao
mtext() = A e B figuras diferentes no mesmo plotagem
grid.raster()

series temporais
data(longley)
data(year)
plot(GNP~Year. data longley, type='1', xant = 'n', las=1, bty='1', lty=1, lwd=2)axis(1, at=longley$Year)

Recursos para apresentaçoes

paleta de cores
color brewer
adobe color
COLOR lovers

icones para adicionar graficos
The noun project

pacotes de cores R
wesandersosn
RColorBrewer::
  outros

Mas ainda temos que falar sobre

ggplot2 = um excel gourmetizado

gganimate










