# 🍣 Sushi App

## Descripción

**Sushi App** es una aplicación simple que permite a los usuarios navegar por una lista de deliciosos sushi, seleccionar cualquiera de ellos y ver una página de detalles con la imagen, el nombre, el precio y una descripción detallada del plato. Además también permite añadir o eliminar sushi de la lista 🍱

## 🛠️ Tecnologías Utilizadas

- **SwiftUI**: Framework moderno para construir la interfaz de usuario declarativa.
- **MVVM**: Arquitectura utilizada para separar la lógica de negocio de la presentación.
- **SwiftData**: Tecnología utilizada para la persistencia local de los datos de la aplicación.
- **PhotosPicker**: Componente para permitir a los usuarios seleccionar imágenes desde su galería.

## 🚀 Funcionalidades

- **Lista de Sushi**: Explora una lista de diferentes tipos de sushi con imágenes y nombres.
- **Detalles del Sushi**: Al tocar un elemento de la lista, se accede a una vista de detalles con información completa sobre el sushi seleccionado.
- **Agregar Nuevo Sushi**: Los usuarios pueden añadir nuevos elementos de sushi a la lista.
- **Eliminar Sushi**: Los usuarios pueden eliminar un sushi de la lista desde la pantalla de detalle.

## 📂 Estructura del Proyecto
- **App**
  - `SushiApp.swift`: Punto de entrada de la aplicación.
- **Core**: Carpeta que contiene las pantallas principales.
  - **AddSushi**:
    - `AddSushiView.swift`: Vista para agregar un nuevo sushi.
    - `AddSushiViewModel.swift`: Lógica de negocio para manejar la adición de sushi.
  - **Components**:
    - `ItemRow.swift`: Componente reutilizable que representa un sushi en la lista.
  - **SushiDetail**:
    - `SushiDetailView.swift`: Vista de detalles para un sushi.
    - `SushiDetailViewModel.swift`: Lógica de negocio para manejar la eliminación de sushi desde la vista de detalles.
  - **SushiMenu**:
    - `SushiView.swift`: Vista principal que muestra la lista de sushis.
    - `SushiViewModel.swift`: Lógica de negocio para manejar la lista de sushis.
- **Helpers**
  - `ImageHelper.swift`: Proporciona funciones para cargar y guardar imágenes en el almacenamiento local.
- **Models**
  - `SushiItem.swift`: Define el modelo de datos para un elemento de sushi.
- **Services**
  - `DataService.swift`: Proporciona la lógica para interactuar con los datos utilizando SwiftData.


## 📸 Capturas de Pantalla
![Menú de Sushis](https://github.com/user-attachments/assets/b459cd9d-b4e1-4ba7-853b-eaf5c5206372)
![Detalle](https://github.com/user-attachments/assets/631bec6f-3fb1-4c1a-91c9-6a2298ccc9b2)
![Añadir Sushi](https://github.com/user-attachments/assets/7dff2448-d2ea-4f9b-9922-f0288f8062c2)

