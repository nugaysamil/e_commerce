# e-commerce

e-commerce is a Flutter project designed to showcase an online shopping experience. The application allows users to browse through a collection of products, view detailed information about each product, and add items to their shopping cart.

## Features

- **Product Browsing:** Users can browse through a list of products fetched from an API.
- **Product Details:** Clicking on a product displays detailed information about it, including price, rating, and description.
- **Shopping Cart:** Users can add products to their shopping cart and view the total cost of their selected items.
- **Responsive Design:** The app is designed to work on both mobile and tablet devices.

## Dependencies

The project uses the following packages:

- `equatable`: For simplifying object comparisons.
- `dio`: For network requests and API interactions.
- `cached_network_image`: For efficient image loading and caching.
- `json_annotation` & `json_serializable`: For JSON serialization and deserialization.
- `flutter_svg`: For rendering SVG images.
- `kartal`: For simplifying common Flutter tasks.
- `flutter_rating_bar`: For displaying ratings in a star format.
- `riverpod` & `flutter_riverpod`: For state management.

## Overview

The application's main screen displays a list of products fetched from an API. Each product is presented in a card with its title, image, and price. Users can tap on a product to see more details, such as the product's rating, description, and category. The app also includes a shopping cart feature that allows users to add products to their cart and view the total cost.

## Architecture

The project follows a simple MVVM (Model-View-ViewModel) architecture:

- **Model:** Represents the data structure and handles data manipulation.
- **View:** Displays the UI and responds to user interactions.
- **ViewModel:** Connects the model and view, handling business logic and state management.

## Conclusion

e-commerce is a simple yet functional application that demonstrates the use of various Flutter packages and APIs. It provides a solid foundation for building more complex e-commerce applications.
