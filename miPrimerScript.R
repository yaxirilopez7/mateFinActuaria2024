#este es mi primer script de R en clase:
#Creamos un objeto numerico llamado a:"
a=5
#Creamos un objeto numerico llamado A:
A=5
#Creamos un objeto numerico llamado A,2:
A2=5
#Creamos un vectorde numeros
vector1=c(1,2,pi,10)
#Creamos un vector con una secuencia de numeros del 1 al 100,000
t=1:100000
#creamos una secuencia de numeros pero ahora se incrementa en 
#o.o2 unidades:
t2=seq(from=1,to=10,by=0.02)
#creamos un objeto con una sola cadena de texto:
objetoTexto1="UMSNH"
#creamos un vector con cadena de texto:
vectorTexto1=c("FCCA","UMSNH","2024")

#creamos un objeto tipo data.drame con los calculos del numero e:
#primero creamos los objetos que seran insumos para el calculo de VF:
VA=1
i=1
nTotal=10000

tablaNumeroe=data.frame(
                        t=t,
                        VF=VA*((1+(i/t))^t)
                       )
#creamos un objeto tipo lista con la tabla del numero e y algunos otros objetos:
objetolista1=list(
                 tableE=tablaNumeroe,
                 valorActual=VA,
                 tasaInteres=i,
                 periodosSimulados=nTotal
                 )
#Ahora grafico los valores de la tabla del numero e:

plot(x=tablaNumeroe$t,y=tablaNumeroe$VF,type="l",
     col="violet")

