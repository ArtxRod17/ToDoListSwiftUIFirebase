# SwiftUI Todo App with Firebase Integration

This is a simple Todo app built using SwiftUI and integrated with Firebase as the backend database. The app allows users to create and manage their tasks, and the data is synchronized in real-time across multiple devices using Firebase's Firestore.

## Features

- User authentication: Users can sign up and log in to the app using their email and password.
- Create tasks: Users can create new tasks by providing a title and optional description.
- Task list: The app displays a list of tasks sorted by creation date, showing the title and status (completed or not).
- Mark as completed: Users can mark tasks as completed or mark them as pending by tapping on them.
- Delete tasks: Users can delete tasks by swiping them to the left and tapping the delete button.
- Real-time synchronization: Any changes made to tasks are automatically synchronized across all devices in real-time.

## Prerequisites

Before running the app, make sure you have the following:

- Xcode installed on your macOS device.
- A Firebase project with Firestore enabled. You can create a new project at [https://console.firebase.google.com](https://console.firebase.google.com).

## Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/your-username/todo-app.git
```

2. Open the project in Xcode:

```bash
cd todo-app
open ToDoApp.xcodeproj
```

3. Configure Firebase:

- Create a new Firebase project or use an existing one.
- In the Firebase console, go to your project settings and download the `GoogleService-Info.plist` file.
- Drag and drop the `GoogleService-Info.plist` file into the Xcode project.
- Open the `AppDelegate.swift` file and replace the following line with your Firebase configuration:

```swift
FirebaseApp.configure()
```

4. Install dependencies:

```bash
pod install
```

5. Build and run the app in Xcode.

## Folder Structure

- `ToDoApp`: Xcode project folder containing the app's source code.
  - `Views`: SwiftUI view files for different screens.
  - `ViewModels`: View models responsible for handling data and business logic.
  - `Models`: Data models used within the app
  - `Other`: Utility classes and extensions.
  - `Components`: Supporting SubViews.
  
## Configuration

The Firebase configuration is done in the `AppDelegate.swift` file. If you have multiple Firebase configurations (e.g., development and production), you can create separate configuration files and switch between them based on your build scheme.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or bug fixes, please open an issue or submit a pull request.

## Acknowledgments

- The app was inspired by various Todo app tutorials and examples available online.
- The Firebase integration is based on the official Firebase documentation and guides.

Feel free to customize and extend this Todo app to meet your specific requirements. Happy coding!
