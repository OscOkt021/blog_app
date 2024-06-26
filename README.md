# Blog App 
Blog App is a mobile application built using Flutter that allows users to write and manage blog posts. This project is designed with clean architecture principles, adhering to SOLID principles of object-oriented programming, and utilizing dependency injection for a more scalable and maintainable codebase. Additionally, it incorporates Hive for local storage, Supabase for authentication and online storage, and Bloc for state management. 

## Overview 
Blog App is a comprehensive mobile application designed to facilitate the creation,  and management of blog posts. It is built using Flutter, a popular and powerful framework for building mobile applications. The app is structured around a clean architecture, which separates the application into three main layers: data, domain, and presentation. This approach ensures that each layer is responsible for a specific task, making it easier to maintain and update the application. 

## Features 
- User Authentication: The app uses Supabase for user authentication, allowing users to register and log in securely. 
- Blog Post Management: Users can create blog posts, with features for adding content, images, and tags. 
- Local Storage: Hive is used for local storage, ensuring that user data is stored securely on the device. 
- Online Storage: Supabase is used for online storage, allowing users to access their blog posts from any device. 
- State Management: Bloc is used for state management, ensuring that the app's UI is always in sync with the app's state. 

## Architecture 
### Data Layer 
The data layer is responsible for handling data storage and retrieval. It uses Hive for local storage and Supabase for online storage. 
### Domain Layer 
The domain layer defines the business logic of the app, including the rules and constraints for managing blog posts. 
### Presentation Layer 
The presentation layer is responsible for rendering the app's UI. It uses Flutter widgets to create a visually appealing and user-friendly interface. 

## Technical Requirements 
- Flutter: The app is built using Flutter, a popular and powerful framework for building mobile applications. 
- Hive: Hive is used for local storage, ensuring that user data is stored securely on the device. 
- Supabase: Supabase is used for user authentication and online storage, allowing users to access their blog posts from any device. 
- Bloc: Bloc is used for state management, ensuring that the app's UI is always in sync with the app's state. 

## Disclaimer
This project, blog_app, is a development of Oscar Oktorian based on the original work of Rivaan Ranawat. 

## Contributing 
If you'd like to contribute to this project, please feel free to fork the repository and submit a pull request. We welcome any suggestions or improvements that can enhance the functionality and user experience of the app. License This project is licensed under the MIT License.
