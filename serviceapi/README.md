# Ejercicios de Flutter con APIs

Ejercicios:

1. **Accés a un servei**
2. **Integrar vista i model**
3. **Acudits**
4. **TMB**

---

# 1. Accés a un servei

## Descripción

Prueba de acceso a un servicio de una API para una aplicación que nos permite ver modelos de coches.

## API utilizada

https://car-data.p.rapidapi.com

## Se ha implementado

- model > rentcar.dart
- service > car_http_service.dart
- test > exercici1.dart

## Funcionamiento

1. El usuario no tiene frontend, por lo que simplemente corre el test.
2. La aplicación realiza una petición HTTP a la API.
3. Recibe respuesta en un JSON.

# 2. Integrar vista i model

## Descripción

Continuación de la API de coches, en este caso se integra la vista correspondiente para poder hacer uso de la API.

## API utilizada

https://car-data.p.rapidapi.com

## Se ha implementado

- view > exercici_2.dart

## Funcionamiento

1. El usuario abre la aplicación.
2. Pulsa el botón de actualizar.
3. La aplicación realiza una petición HTTP a la API.
4. Se obtiene la lista de vehículos en pantalla.

# 3. Acudits

## Descripción

Aplicación que muestra un chiste al azar cada vez que le das al botón.

## API utilizada

https://api.sampleapis.com/jokes/goodJokes

Ejemplo de respuesta:

```json
{
"id": 1,
"setup": "Why did the chicken cross the road?",
"punchline": "To get to the other side."
}
```

## Funcionamiento

1. El usuario abre la aplicación.
2. Pulsa el botón de actualizar.
3. La aplicación realiza una petición HTTP a la API.
4. Se obtiene un chiste aleatorio.
5. El chiste se muestra en pantalla.

---

# 4. TMB

## Descripción

Esta aplicación permite consultar los autobuses que pasarán por una parada de bus utilizando la API oficial de Transport Metropolitans de Barcelona (TMB).

El usuario introduce el código de una parada y la aplicación muestra las líneas y destinos de los próximos autobuses.

## Registro en la API

Para usar la API es necesario registrarse en:

https://developer.tmb.cat

Después del registro se generan:

* `APP_ID`
* `APP_KEY`

Estos valores se utilizan para autenticar las peticiones.

## API utilizada

Documentación oficial:

https://developer.tmb.cat/api-docs/v1/ibus

Endpoint utilizado:

```
GET /v1/itransit/bus/parades/{stopCode}
```

Ejemplo:

```
https://api.tmb.cat/v1/itransit/bus/parades/108?app_id=APP_ID&app_key=APP_KEY
```

## Funcionamiento

1. El usuario introduce un código de parada.
2. La aplicación consulta la API de TMB.
3. Se reciben los datos en formato JSON.
4. Se muestran las líneas de autobús y destinos.

---

# Arquitectura del proyecto

Las aplicaciones siguen el patrón **MVC (Model - View - Controller)**.

```
lib/
 ├── models/
 ├── controllers/
 ├── services/
 └── views/
```

**Model**

Representa los datos (Joke, Bus, etc.).

**Controller**

Gestiona la lógica de la aplicación y las peticiones a la API.

**Service**

Realiza las llamadas HTTP a las APIs.

**View**

Contiene la interfaz de usuario.

---

# Dependencias utilizadas

En `pubspec.yaml`:

```
http
provider
```

* **http**: para realizar peticiones a APIs REST.
* **provider**: para gestionar el estado de la aplicación.

---

# Tecnologías utilizadas

* Flutter
* Dart
* REST APIs
* JSON
* Arquitectura MVC

