# VMovie

VMovie (V-Movie) is a mobile application for browsing movies with their details about IMDB ratings, Plot, Casts and Crews, Duration, and etc. This application is developed with Flutter framework and has SQLite as a local database. This project is for education purpose and designed to integrate with [Gemfire](https://tanzu.vmware.com/gemfire) for caching data that retrieves from [RapidAPI](https://rapidapi.com/apidojo/api/imdb8). 

## More about Flutter
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Getting Started

### Running Gemfire in background
1. Start Gemfire to make sure that we have connection to call data from RapidAPI and caching mechamism to store it as a cache. Go to [gemfire-spring-poc](https://github.com/guyzsarun/gemfire-spring-poc) and follow along the instruction. 

2. `gemfire-spring-poc` will start on port 8080. Visit [localhost](http://localhost:8080/api/movie?name=avengers) to see data package when calling API.

### Installation
Clone this project 
```
git clone https://github.com/Raksani/vmovie.git
```
Install and setup Flutter by following the [instructions](https://docs.flutter.dev/get-started/install)
### Run VMovie
```
flutter run
```

### Version
Recommend
- Flutter: 2.10.0-0.3.pre
- iOS simulator: iPhone 12/12 Pro Max
- xCode: 12.4
- IntelliJ IDEA Community Edition: 2021.2.2

###### For more detail please contact developer
