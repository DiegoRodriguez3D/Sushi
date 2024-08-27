# 🍣 Sushi App

## Descripción

**Sushi App** es una aplicación simple que permite a los usuarios navegar por una lista de deliciosos sushi, seleccionar cualquiera de ellos y ver una página de detalles con la imagen, el nombre, el precio y una descripción detallada del plato. Además también permite añadir nuevos platos a la lista 🍱

## 🛠️ Tecnologías Utilizadas

- **SwiftUI**: Framework moderno para construir la interfaz de usuario declarativa.
- **MVVM**: Arquitectura utilizada para separar la lógica de negocio de la presentación.
- **SwiftData**: Tecnología utilizada para la persistencia local de los datos de la aplicación.
- **PhotosPicker**: Componente para permitir a los usuarios seleccionar imágenes desde su galería.

## 🚀 Funcionalidades

- **Lista de Sushi**: Explora una lista de diferentes tipos de sushi con imágenes y nombres.
- **Detalles del Sushi**: Al tocar un elemento de la lista, se accede a una vista de detalles con información completa sobre el sushi seleccionado.
- **Agregar Nuevo Sushi**: Los usuarios pueden añadir nuevos elementos de sushi a la lista, incluyendo cargar una imagen desde su galería.
- **Persistencia de Datos**: Los datos del menú se almacenan localmente utilizando SwiftData, lo que permite su disponibilidad sin conexión.

## 📂 Estructura del Proyecto
- **App**
  - `SushiApp.swift`: Punto de entrada de la aplicación.
- **Core**
  - **AddSushi**
    - `AddSushiView.swift`: Contiene la vista para añadir un nuevo sushi, permitiendo al usuario ingresar detalles y seleccionar una imagen.
    - `AddSushiViewModel.swift`: Maneja la lógica de negocio para agregar un nuevo sushi, incluida la carga de imágenes y la persistencia de datos.
  - **Components**
    - `ItemRow.swift`: Componente reutilizable que representa una fila de sushi en la lista.
  - **SushiDetail**
    - `SushiDetailView.swift`: Muestra los detalles completos del sushi seleccionado.
  - **SushiMenu**
    - `SushiView.swift`: Contiene la vista principal de la aplicación, mostrando la lista de sushi.
- **Helpers**
  - `ImageHelper.swift`: Proporciona funciones para cargar y guardar imágenes en el almacenamiento local.
- **Models**
  - `SushiItem.swift`: Define el modelo de datos para un elemento de sushi.
- **Services**
  - `DataService.swift`: Proporciona la lógica para interactuar con los datos utilizando SwiftData.


## 📸 Capturas de Pantalla
![Menú de Sushis](https://github.com/user-attachments/assets/b459cd9d-b4e1-4ba7-853b-eaf5c5206372)
![Detalle](https://github.com/user-attachments/assets/c94cb04c-cd0f-4adb-a5f2-1364ba0a37ae)
![Añadir Sushi](https://github.com/user-attachments/assets/7dff2448-d2ea-4f9b-9922-f0288f8062c2)

