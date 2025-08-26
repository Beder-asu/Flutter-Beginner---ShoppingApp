# Flutter Shopping App

A comprehensive Flutter project that demonstrates building a fully functional shopping application with user authentication, product displays, cart interactions, and responsive UI.

## Project Overview

This shopping app simulates a real-world shopping interface with the following features:

- **Welcome Screen**: Custom styled UI with Sign-in and Sign-up options
- **User Authentication**: Sign-up and Sign-in forms with validation
- **Shopping Home Screen**: Featured products in a PageView, product grid, and hot offers
- **Smooth Transitions**: Animated page transitions for a polished user experience
- **Responsive Design**: Adaptable to different device sizes with:
  - Dynamic layout that switches between ListView and GridView based on screen width
  - Optimized display for both mobile and desktop/tablet devices
  - Adaptive card layouts for different form factors
- **Custom Fonts**: Uses Suwannaphum font family for consistent styling throughout the app

## Features

### Welcome Screen
- Custom AppBar with app title
- Two images displayed in a row (1 local + 1 online)
- Custom font styling (Suwannaphum)
- Styled Sign-up and Sign-in buttons with navigation

### Sign-up Form
- Full name validation (First letter must be uppercase)
- Email validation (Must include @)
- Password validation (At least 6 characters)
- Confirm password validation (Must match password)
- Success dialog on valid submission

### Sign-in Form
- Email validation (Must include @)
- Password validation (At least 6 characters)
- Success dialog on valid submission

### Shopping Home Screen
- Interactive PageView for featured products
- Responsive product display:
  - GridView on larger screens (3 products per row)
  --> I implemented it using a grid 
  - ListView on smaller screens (width < 700px)
- Different card layouts optimized for grid and list views
- Add to Cart functionality with SnackBar notification
- "Hot Offers" section with scrollable ListView

## Setup Instructions

1. Clone the repository:
   
2. Navigate to the project directory:
  
3. Install dependencies:
   ```
   flutter pub get
   ```

4. Run the app:
   ```
   flutter run
   ```

5. For running on specific platforms:
   ```
   flutter run -d chrome    # Run on Chrome
   flutter run -d windows   # Run on Windows
   flutter run -d android   # Run on Android device/emulator
   flutter run -d ios       # Run on iOS device/simulator
   ```

## Project Structure

```
lib/
  ├── main.dart              # App entry point
  ├── screens/               # App screens
  │   ├── welcome_screen.dart  # Welcome screen with sign-in/sign-up buttons
  │   ├── sign_in_screen.dart  # User sign-in screen
  │   ├── sign_up_screen.dart  # User registration screen
  │   └── home_screen.dart     # Main shopping screen
  └── widgets/               # Reusable widgets
      └── product_card.dart    # Product card for the grid view
```

## Notes for Developers

- Each widget/class is in a separate file for better organization
- Google Fonts is used throughout the app for modern typography
- The app uses proper form validation for user inputs
- Responsive design with adaptive layouts based on screen width:
  - Products display as a ListView on smaller screens (width < 700px)
  - Products display as a GridView on larger screens
- Animation transitions are used for navigation between screens
