class OnboardingPages {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPages({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

const List<OnboardingPages> onboardingView = [
  OnboardingPages(
    title: "Step Into the Legacy",
    description:
        "Discover the world of Nike and Jordan—iconic sneakers, stories, and exclusive drops.",
    imagePath:
        "assets/images/onbording screen/pexels-obviouslyarthur-1102777.jpg",
  ),
  OnboardingPages(
    title: "Your Sneaker Playground",
    description:
        "Browse new releases, limited editions, and classic kicks. Never miss a drop.",
    imagePath: "assets/images/onbording screen/pexels-mallonymedia-4914807.jpg",
  ),
  OnboardingPages(
    title: "Make It Yours",
    description:
        "Get personalized recommendations, save your favorites, and unlock exclusive perks.",
    imagePath:
        "assets/images/onbording screen/pexels-grailify-2658558-4252970.jpg",
  ),
];
