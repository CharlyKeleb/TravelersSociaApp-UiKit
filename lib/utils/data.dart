import 'dart:math';
Random random = Random();
List names = [
  "Ling Waldner",
  "Gricelda Barrera",
  "Lenard Milton",
  "Bryant Marley",
  "Rosalva Sadberry",
  "Guadalupe Ratledge",
  "Brandy Gazda",
  "Kurt Toms",
  "Rosario Gathright",
  "Kim Delph",
  "Stacy Christensen",
];
List location = [
  "Thailand",
  "Costa Rica",
  "Bahamas",
  "Nigeria",
  "Canada",
  "Iceland",
  "Turkey",
  "Australia",
  "Germany",
  "Saudi Arabia",
  "Ukraine",
];
List places = [
  "Blue Caves",
  "Wonder Land",
  "Magic Land",
  "Attraction Parc",
  "Waterfalls",
];
List city = [
  "New York",
  "Washington Dc",
  "Florence",
  "Madrid",
  "Barcelona",
  "Alaves",
  "Istanbul",
  "Kirklareli",
  "Ankara",
  "Porto Novo",
  "Stacy Christensen",
];
List data = List.generate(10, (index)=>{
  "name": names[random.nextInt(5)],
 "city": city[random.nextInt(5)],
 "location": location[random.nextInt(5)],
 "places": places[random.nextInt(5)],
 "dp": "assets/images/friends/dp${random.nextInt(4)}.jpg",
 "posts": "assets/images/posts/post${random.nextInt(3)}.jpg",
 "saved": "assets/images/saved/saved${random.nextInt(4)}.jpg",
 "story": "assets/images/story/cm${random.nextInt(10)}.jpeg",
});

