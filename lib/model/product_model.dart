class Fruit {
  final String id;
  final String name;
  final String imagePath;
  final String price;

  Fruit( {required this.id, required this.name, required this.imagePath, required this.price});
}

class Vegetable{
   final String id;
  final String name;
  final String imagePath;
  final String price;

  Vegetable( {required this.id ,required this.imagePath, required this.name, required this.price});
}

class Exotic{
   final String id;
  final String name;
  final String imagePath;
  final String price;

  Exotic( {required this.id ,required this.imagePath, required this.name, required this.price});
}

List<Fruit>fruitList=[
  Fruit(id:"1",name: "Apple", imagePath: "assets/fruits/apple.jpg",price:"Rs 250"),
  Fruit(id:"2",name: "Pineapple", imagePath: "assets/fruits/pineapple.jpg",price:"Rs 250"),
  Fruit(id:"3",name: "Watermelon", imagePath: "assets/fruits/melon.jpg",price:"Rs 250"),
  Fruit(id:"4",name: "Guava", imagePath: "assets/fruits/guava.jpg",price:"Rs 250"),
  Fruit(id:"5",name: "Grapes", imagePath: "assets/fruits/grapes.jpg",price:"Rs 250"),
  Fruit(id:"6",name: "Banana", imagePath: "assets/fruits/Banana.png",price:"Rs 250"),
  Fruit(id:"7",name: "Orange", imagePath: "assets/fruits/oranges.jpg",price:"Rs 250"),
  Fruit(id:"8",name: "Strawberry", imagePath: "assets/fruits/strawberry.jpg",price:"Rs 250"),
  Fruit(id:"9",name: "Pomegranate", imagePath: "assets/fruits/pomegranate.jpg",price:"Rs 250"),
  Fruit(id:"10",name: "Mango", imagePath: "assets/fruits/mango.png",price:"Rs 250"),
  Fruit(id:"11",name: "Papaya", imagePath: "assets/fruits/papaya.jpg",price:"Rs 250"),
  

 ];


 List<Vegetable>vegetableList=[
  Vegetable(id:"1",imagePath: "assets/vegetables/beans.jpg", name: "Long beans",price:"Rs 250"),
  Vegetable(id:"2",imagePath: "assets/vegetables/broccoli.jpg", name: "Broccoli",price:"Rs 250"),
  Vegetable(id:"3",imagePath: "assets/vegetables/capsicum.jpg", name: "Capsicum",price:"Rs 250"),
  Vegetable(id:"4",imagePath: "assets/vegetables/beetroot.png", name: " Beetroot",price:"Rs 250"),
  Vegetable(id:"5",imagePath: "assets/vegetables/Bottle-Guard.png", name: " Bottle Guard",price:"Rs 250"),
  Vegetable(id:"6",imagePath: "assets/vegetables/Carrot-Online.jpg", name: "Carrot ",price:"Rs 250"),
  Vegetable(id:"7",imagePath: "assets/vegetables/cauliii.jpg", name: "Cauliflower ",price:"Rs 250"),
  Vegetable(id:"8",imagePath: "assets/vegetables/Chamsur-Saag.jpg", name: "Chamsur Saag ",price:"Rs 250"),
  Vegetable(id:"9",imagePath: "assets/vegetables/Chillies.jpg", name: " Green Chillies",price:"Rs 250"),
  Vegetable(id:"10",imagePath: "assets/vegetables/Chinese-Cabbage.jpg", name: " Chinese Cabbage",price:"Rs 250"),
  Vegetable(id:"11",imagePath: "assets/vegetables/Coriander.jpg", name: " Coriander",price:"Rs 250"),
  Vegetable(id:"12",imagePath: "assets/vegetables/Eggplant.jpg", name: " EGGplant",price:"Rs 250"),
  Vegetable(id:"13",imagePath: "assets/vegetables/garlic.jpg", name: " Garlic",price:"Rs 250"),
  Vegetable(id:"14",imagePath: "assets/vegetables/Green-Pumpkin.jpg", name: "Green pumpkin ",price:"Rs 250"),
  Vegetable(id:"15",imagePath: "assets/vegetables/Ladys-Finger.jpg", name: " Ladys Finger",price:"Rs 250"),
  Vegetable(id:"16",imagePath: "assets/vegetables/Ginger.jpg", name: " Ginger",price:"Rs 250"),
  Vegetable(id:"17",imagePath: "assets/vegetables/Palak.jpg", name: "Palak Saag ",price:"Rs 250"),
  Vegetable(id:"18",imagePath: "assets/vegetables/potato.jpg", name: " Potato",price:"Rs 250"),
  Vegetable(id:"19",imagePath: "assets/vegetables/parwal.jpg", name: "Parwal ",price:"Rs 250"),
  Vegetable(id:"20",imagePath: "assets/vegetables/Raddish.jpg", name: " Raddish",price:"Rs 250"),


  Vegetable(id:"21",imagePath: "assets/vegetables/tomato.jpg", name: " Tomato",price:"Rs 250"),

  Vegetable(id:"22",imagePath: "assets/vegetables/Rayo-Saag.jpg", name: " Rayo Saag",price:"Rs 250"),

  Vegetable(id:"23",imagePath: "assets/vegetables/tama.jpg", name: " Taama",price:"Rs 250"),

  Vegetable(id:"24",imagePath: "assets/vegetables/Local-Cucumber.jpg", name: "Cucumber ",price:"Rs 250"),

];

List<Exotic> exoticList=[
  Exotic(id: "1", imagePath: "assets/exotic/avocado.jpg", name: "Avocado", price: "Rs.550"),
  Exotic(id: "2", imagePath: "assets/exotic/custardapple.jpg", name: "Custard Apple", price: "Rs.620"),
  Exotic(id: "3", imagePath: "assets/exotic/Dragon-fruit.png", name: "Dragon Fruit", price: "Rs.550"),
  Exotic(id: "4", imagePath: "assets/exotic/kiwi.png", name: "Kiwi", price: "Rs.500"),
  Exotic(id: "5", imagePath: "assets/exotic/passionfruit.jpg", name: "Passion Fruit", price: "Rs.750")


];