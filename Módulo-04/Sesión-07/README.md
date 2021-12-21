
# Sesión #7: Manejo de gestures

## :dart: Objetivos

Agregar los objetivos de las sesión (Mínimo poner tres objetivos y Borrar está linea una vez se hay leido )

- Crear gesto TAP.
- Obtener información de nuestro plist.
- Crear gesto PINCH.


## ⚙ Requisitos

+ Sesiones anteriores
+ Codigo de la sesión 6


## DESARROLLO

En nuestra pantalla de logout agregar el gesto TAP sobre la imagen
Obtener la información desde el plist
Por medio de un alert mostrar la información
Sobre la imagen agregamos el gesto PINCH
Incluir la lógica para hacer grande la imagen

Con el uso normal de las aplicaciones, siempre tenemos un lugar donde podemos ver información básica sobre la versión o el compilado, nuestra app no puede ser la excepción, por lo que lo manejaremos aprovechando el uso de los gestos, como primer paso agregaremos el gesto del TAP

let gesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
self.imagen.addGestureRecognizer(gesture)
self.imagen.isUserInteractionEnabled = true

Agregamos el método handleTap con el que estaremos obteniendo la información desde el plist, la información a mostrar es:
Versión: 
Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
Compilado
Bundle.main.infoDictionary?["CFBundleVersion"] as? String
Nombre de aplicación
Bundle.main.infoDictionary?["CFBundleName"] as? String	



Como siguiente paso, en caso de mostrar una imagen de usuario podríamos aplicar un PINCH para poder hacerla grande, para ello agrega el PINCH a la imagen y aplica el código para poder hacerla grande o regresar a su estado normal:

if let scale = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale)) {
            guard scale.a > 1.0 else { return }
            guard scale.d > 1.0 else { return }
             sender.view?.transform = scale
            sender.scale = 1.0
 }




