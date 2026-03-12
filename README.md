# swiftIOS-catalog

An iOS catalog app that showcases a list of products with details, built in Swift as a practical learning project.

Where `swiftIOS-booklist` focuses on books, this project explores a more generic **product catalog**: listing items, showing details, and keeping the codebase simple enough to read in one sitting.

## Overview

The app displays a collection of products loaded from a local data source, then renders them in a list with navigation to a detail screen.  
It is a good playground for working with models, services, and simple UI composition in Swift.

The main Xcode project lives in the `CatalogueSwift` directory.

## Features

- Product list view
- Product detail screen with key information
- Local data source using a property list (`Produits.plist`)
- Straightforward structure for training and experimentation

## Tech stack

- **Language**: Swift  
- **UI framework**: SwiftUI (based on the file structure)  
- **Minimum iOS target**: iOS 15+ (adjust in Xcode as needed)  
- **IDE**: Xcode

## Getting started

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/swiftIOS-catalog.git
   cd swiftIOS-catalog
   ```
2. Open the Xcode project:
   ```bash
   open CatalogueSwift.xcodeproj
   ```
3. Select an iOS simulator or a connected device.
4. Press **Run** in Xcode.

## Screenshots

Screenshots for this app can live either at the repository root or inside a dedicated `Screenshots/` folder.  
You can reference them from this section using standard Markdown image syntax, for example:

```markdown
![Product list](Screenshots/product-list.png)
![Product detail](Screenshots/product-detail.png)
```

## Possible improvements

- Add categories or filters for products  
- Load data from a remote API instead of a local plist  
- Improve the visual design of the list and detail screens  
- Add localization for multiple languages

## Notes

This project is intentionally small and focused on learning.  
Feel free to adapt it for your own catalog use cases or extend it with more advanced architecture later on.