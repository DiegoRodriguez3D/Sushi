# 🍣 Sushi App

## Descripción

**Sushi App** es una aplicación simple que permite a los usuarios navegar por una lista de deliciosos sushi, seleccionar cualquiera de ellos y ver una página de detalles con la imagen, el nombre, y una descripción detallada. Además también permite añadir o eliminar sushi de la lista 🍱

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
- **Galería**: Explora imágenes ampliables de platos de Sushi a modo de inspiración.
- **About**: El usuario puede conocer más acerca de la app y sus características.

## 📂 Estructura del Proyecto
- **App**
  - `SushiApp.swift`: Punto de entrada de la aplicación.
- **Core**: Carpeta que contiene las pantallas principales.
  - **Main**:
    - `MainView.swift`: Contiene el TabView para la barra inferior de navegación.
  - **About**:
    - `AboutView.swift`: Vista para mostrar información básica sobre la app al usuario.
  - **AddSushi**:
    - `AddSushiView.swift`: Vista para agregar un nuevo sushi.
    - `AddSushiViewModel.swift`: Lógica de negocio para manejar la adición de sushi.
  - **Components**:
    - `ItemRow.swift`: Componente reutilizable que muestra una imagen con un título.
    - `FeatureView.swift`: Componente reutilizable que muestra un icono con un título y descripción.
  - **SushiDetail**:
    - `SushiDetailView.swift`: Vista de detalles para un sushi.
    - `SushiDetailViewModel.swift`: Lógica de negocio para manejar la eliminación de sushi desde la vista de detalles.
  - **SushiMenu**:
    - `SushiView.swift`: Vista principal que muestra la lista de sushis.
    - `SushiViewModel.swift`: Lógica de negocio para manejar la lista de sushis.
  - **Gallery**:
    - `GalleryView.swift`: Vista que muestra un grid de imagenes seleccionables.
  - **GalleryDetail**:
    - `GalleryDetailView.swift`: Vista que muestra una imagen ampliada al seleccionarla en la galería.
- **Helpers**
  - `ImageHelper.swift`: Proporciona funciones para cargar y guardar imágenes en el almacenamiento local.
- **Models**
  - `SushiItem.swift`: Define el modelo de datos para un elemento de sushi.
- **Services**
  - `DataService.swift`: Proporciona la lógica para interactuar con los datos utilizando SwiftData.


## 📸 Capturas de Pantalla
![Sushi-Menu](https://github.com/user-attachments/assets/8ce42ef3-b337-40c5-95fe-0544f4f4a2b9)
![Sushi-About](https://github.com/user-attachments/assets/f6102ec1-097e-45fc-b31d-dc22630fc16a)
![Sushi-Gallery](https://github.com/user-attachments/assets/1944a99e-96a0-457d-ba09-a2d2a8c5970e)
![Gallery-Detail](https://github.com/user-attachments/assets/92869e53-1e06-4a88-8356-8a5e8cbc3926)
![Add-Sushi](https://github.com/user-attachments/assets/6ffe9ff4-ccaa-4be2-8168-6ae0f038bcc4)
![Sushi-Detail](https://github.com/user-attachments/assets/02af960e-52d5-4396-be9a-5d552e2ffd0a)
