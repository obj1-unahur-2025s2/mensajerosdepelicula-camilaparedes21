object roberto {
    var vehiculo = camion
    method cambiarVehiculo(unVehiculo) {
      vehiculo= unVehiculo
    }
    method peso() {
    return 90 + vehiculo.peso()
  }

  method puedeLlamar() = false
  
}

object bicicleta {
  method peso() = 5
}

object camion  {
    var cantidadDeAcoplados = 0

  method peso() = cantidadDeAcoplados * 500

  method cantidadDeAcoplados(unaCantidad) {
    cantidadDeAcoplados = unaCantidad
  }
  }


object chuck {
 method peso()=80
 method puedeLlamar() =  true
}

object neo {
  method peso() = 0
  var  tieneCredito= false

  method cambiarCredito() {
    tieneCredito = !tieneCredito
  }
}







object mensajeria {
  
  const mensajeros = {}

  method contratarMensajero(unMensajero ) {
        mensajeros.add(unMensajero)
  }

  method despedirMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }

  method despedir() {
    mensajeros.clear()
  }

  method mensajeriaGrande(unaMensajeria) {
    mensajeros.size(unaMensajeria)>=2
  }

  method puedeSerEntregadoPorElPrimerMensajero(unPaquete) {
    mensajeros.first().puedeEntregrar(unPaquete)
  }

  method pesoDelUltimoMensajero() {
    mensajeros.last().peso()
  }
}


