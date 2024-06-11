# quote_app_daily_task

A new Flutter project.

## ⚫ Factory constructor :

- Instead, it may return an existing instance or even an instance of a different class.
- This flexibility allows developers to control the object creation process more precisely.

### Advantages of Factory constructor :

-  With factory constructors, you can implement custom logic for creating instances of a class. This can be useful when you need to perform additional operations or validations before returning an object.
-  Factory constructors allow you to control the instantiation process, including whether a new instance should be created or an existing one should be reused. This can be particularly helpful in scenarios where you want to maintain a pool of instances or enforce singleton behavior.
-  Factory constructors can return instances of subclasses or different implementations based on certain conditions. This enables you to encapsulate complex instantiation logic and provide a clean interface for creating objects, without exposing the internal details of the class hierarchy.
-  In cases where you want to create immutable objects, factory constructors can be used to return pre-existing instances or construct new ones with the same state. This helps in optimizing memory usage and improving performance by reducing the number of object allocations.
-  Factory constructors can optimize object creation by reusing instances or performing lazy initialization. This can lead to improved memory efficiency and reduced overhead, especially in scenarios where object creation is frequent or resource-intensive.

### Disadvantages of Factory constructor :

- Factory constructors can introduce additional complexity into your codebase. This can make the code harder to read and maintain, especially for developers who are not familiar with the factory pattern.
- If not implemented carefully, factory constructors can introduce performance overhead. For instance, if the factory constructor involves expensive operations like reading from a database or performing complex calculations, it could slow down the creation of instances.
- Using factory constructors can sometimes make it less clear how instances are being created. This lack of transparency can lead to confusion, especially when debugging issues related to instance creation.
- In Dart, factory constructors cannot use initializer lists, which can limit their flexibility compared to regular constructors. This can be a limitation when you need to initialize final fields that rely on complex initialization logic.
- If factory constructors are used to implement caching (returning existing instances instead of creating new ones), this can lead to unexpected behavior if the cached instances are modified elsewhere in the code. It requires careful management to avoid such issues.

## ⚫ Modal class  :

- We all know the concept of classes in Object Oriented Programming, similar to that , we can declare the variables, their data types and can write some methods to add some functionality.

### Advantages of Modal Class :

- Model classes encapsulate data and provide a clear structure for it.
- Model classes can be reused throughout the application, ensuring consistency.
- Model classes simplify the process of converting data to and from different formats, such as JSON.
- Keeping data-related logic within model classes makes the code easier to maintain and understand.

### Disadvantages of Modal Class :

- Model classes can lead to a significant amount of boilerplate code, especially if you have many fields and need to implement methods for serialization, deserialization, equality checks, and other operations. This can make the codebase more cumbersome to manage.
- If you have similar models with slight variations, it can lead to code duplication. This may happen when different parts of the application require similar but slightly different data structures.
- If you need to change the structure of your data, such as adding, removing, or renaming fields, it can be complex and error-prone. All the places where the model is used must be updated accordingly, which can be time-consuming and may introduce bugs.
- Rigidly defined model classes can sometimes limit flexibility, especially when dealing with dynamic or evolving data structures. If your application frequently needs to handle data with varying structures, maintaining strict model classes can be challenging.

  
### Example
```
class User {
  final String name;
  final String email;
  final String role;

  // Private constructor
  User._({required this.name, required this.email, required this.role});

  // Factory constructor
  factory User({required String name, required String email, required String role}) {
    switch (role) {
      case 'admin':
        return User._(name: name, email: email, role: 'Administrator');
      case 'editor':
        return User._(name: name, email: email, role: 'Editor');
      case 'viewer':
        return User._(name: name, email: email, role: 'Viewer');
      default:
        return User._(name: name, email: email, role: 'Guest');
    }
  }

  // Optional: Override toString for easier debugging
  @override
  String toString() {
    return 'User{name: $name, email: $email, role: $role}';
  }
}

void main() {
  // Create users with different roles
  final admin = User(name: 'Naresh', email: 'naresh@example.com', role: 'admin');
  final editor = User(name: 'Sumit', email: 'sumit@example.com', role: 'editor');
  final viewer = User(name: 'Rohan', email: 'rohan@example.com', role: 'viewer');
  final guest = User(name: 'Hiren', email: 'hiren@example.com', role: 'unknown');

  // Print the users
  print(admin);
  print(editor);
  print(viewer);
  print(guest);
}
```

# Random Quotes Generator

<h1 align="center"> 1.Random Quotes Generator </h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/8ba9d311-5acc-4f9b-bb86-0848c41cb13f" height ="550">
   <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/2f42f05b-0663-4f46-a310-209f3c030c6f" height ="550">


https://github.com/Nikks27/quote_app_daily_task/assets/148762716/83813ca7-87df-40d0-9dea-907640203a25


</div>

# Listview to Gridview Toggle View

<h1 align="center"> 1.Listview to Gridview Toggle View </h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/c2a30508-07af-4c4c-bf87-f58f028b9a75" height ="550">
   <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/b03832a2-36d0-456a-b6f2-e721811fc32d" height ="550">

https://github.com/Nikks27/quote_app_daily_task/assets/148762716/027a5b40-3d4f-46fe-8e11-11def5e1db82

</div>

</div>

# Invoice Generator

<h1 align="center"> 1.Invoice Generator </h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/62b2f3a2-7690-4263-9317-7d114ad6f829" height ="550">
   <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/5ab64790-1606-4192-90cb-4244d013b876" height ="550">
    <img src = "https://github.com/Nikks27/quote_app_daily_task/assets/148762716/7be3af29-b330-4e3c-a468-4375b87fcc6f" height ="550">




https://github.com/Nikks27/quote_app_daily_task/assets/148762716/418a658e-45a5-4e4a-a17b-5296afc15286




</div>
