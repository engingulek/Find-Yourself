enum AppConstants {
  onboardingTitle,
  findYourselfButton,
  discoverNavTitle,
  detailNavTitle,
  productsNavTitle,
  myCartNavTitle,
  favoritesNavTitle,
  popular,
  showAll,
  addCart,
  sort,
  filter,
  itemTitle,
  subtotal,
  shipping,
  tax,
  total,
  noProduct,
}

extension AppConstantsExtension on AppConstants {
  String get value {
    switch (this) {
      case AppConstants.onboardingTitle:
        return "Welcome To Find Yourself";
      case AppConstants.findYourselfButton:
        return "Find Yourself";
      case AppConstants.discoverNavTitle:
        return "Discover";
      case AppConstants.detailNavTitle:
        return "Detail";
      case AppConstants.productsNavTitle:
        return "Products";
      case AppConstants.myCartNavTitle:
        return "My Cart";
      case AppConstants.favoritesNavTitle:
        return "My Cart"; 
      case AppConstants.popular:
        return "Popular";
      case AppConstants.showAll:
        return "Show All";
      case AppConstants.addCart:
        return "Add Cart";
      case AppConstants.sort:
        return "Sort";
      case AppConstants.filter:
        return "Filter";
      case AppConstants.itemTitle:
        return "Item(s)";
      case AppConstants.subtotal:
        return "Subtotal";
      case AppConstants.shipping:
        return "Shipping";
      case AppConstants.tax:
        return "Tax";
      case AppConstants.total:
        return "Total";
      case AppConstants.noProduct:
        return "No Product";
    }
  }
}
