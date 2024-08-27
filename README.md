# 🍣 Sushi App

## Descripción

**Sushi App** es una aplicación simple que permite a los usuarios explorar un menú de sushi con detalles completos sobre cada plato. Los usuarios pueden navegar por una lista de deliciosos sushi, seleccionar cualquiera de ellos y ver una página de detalles con la imagen, el nombre, el precio y una descripción detallada del plato. 🍱

Esta aplicación está construida utilizando **SwiftUI** y aprovecha el patrón **MVVM (Model-View-ViewModel)** para asegurar un código limpio, modular y fácil de mantener. Además, los datos del menú se gestionan mediante la tecnología **SwiftData** para una persistencia eficiente.

## 🛠️ Tecnologías Utilizadas
- **SwiftUI**: Framework moderno para construir la interfaz de usuario declarativa.
- **MVVM**: Arquitectura utilizada para separar la lógica de negocio de la presentación.
- **SwiftData**: Tecnología utilizada para la persistencia local de los datos de la aplicación.

## 🚀 Funcionalidades
- **Lista de Sushi**: Explora una lista de diferentes tipos de sushi con imágenes y nombres.
- **Detalles del Sushi**: Al tocar un elemento de la lista, se accede a una vista de detalles con información completa sobre el sushi seleccionado.

## 📂 Estructura del Proyecto
- `SushiView.swift`: Contiene la vista principal de la aplicación, mostrando la lista de sushi.
- `SushiDetailView.swift`: Muestra los detalles completos del sushi seleccionado.
- `DataService.swift`: Proporciona los datos del menú de sushi, utilizando SwiftData para la persistencia.
- `SushiItem.swift`: Define el modelo de datos para un elemento de sushi.

## 📸 Capturas de Pantalla
![Menu Principal](https://github.com/user-attachments/assets/c75cdff4-3b5d-4eb7-854d-6a39ac41fedf)
![Vista de Detalle](https://github.com/user-attachments/assets/c94cb04c-cd0f-4adb-a5f2-1364ba0a37ae)

