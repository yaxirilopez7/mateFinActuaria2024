#Esta funcion realiza el calculo y grafica de la aproximacion del numero e del
#numero e con t como argumento de entrada

simulaNumeroE=function(nTotal){
  #creamos un objeto tipo data.drame con los calculos del numero e:
  #primero creamos los objetos que seran insumos para el calculo de VF:
  VA=1
  i=1
  t=1:nTotal
  
  tablaNumeroE=data.frame(
    t=t,
    VF=VA*((1+(i/t))^t)
  )
  #creamos un objeto tipo lista con la tabla del numero e y algunos otros objetos:
  objetolista1=list(
    tableE=tablaNumeroE,
    valorActual=VA,
    tasaInteres=i,
    periodosSimulados=nTotal
  )
  #Ahora grafico los valores de la tabla del numero e:
  
  plot(x=tablaNumeroE$t,y=tablaNumeroE$VF,type="l",
       col="violet")
  
  return(objetolista1)
  
                      }