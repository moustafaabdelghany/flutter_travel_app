class RecommendedModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  int price;

  RecommendedModel(this.name, this.tagLine, this.image, this.images,
      this.description , this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['tagLine'],
    item['image'], item['images'], item['description'] , item['price'],))
    .toList();

var recommendationsData = [
  {
    "name": "Dubai Museum",
    "tagLine": "Dubai Museum",
    "image":
    "https://images.memphistours.com/large/7275098cffc2aef0ab99cdc376e068d3.jpg",
    "images": [
      "https://images.memphistours.com/large/7275098cffc2aef0ab99cdc376e068d3.jpg",
      "https://images.memphistours.com/large/2334f189a21319336a4d74bd88872583.jpg",
      "https://images.memphistours.com/large/f54fabe3b2cf8bfe1918d5e0f99a60b2.jpg",
    ],
    "description":
    "The museum was opened by the Ruler of Dubai in 1971, with the aim of presenting the traditional way of life in the Emirate of Dubai. When entering, one can see the fort constructed and the various displays that go along with it. From the fort, there is a path to the galleries, which display the general culture of the land, especially in the 1800s. It includes local antiques as well as artifacts from African and Asian countries that traded with Dubai. It also includes several dioramas showing life in the emirate before the advent of oil, in addition to artifacts from recent discoveries as old as 3000 BC.",
    "price": 120
  },
  {
    "name": "Burj Khalifa",
    "tagLine": "Burj Khalifa",
    "image":
    "https://www.guinnessworldrecords.ae/Images/Burj-portrait-lagre_tcm27-475749.jpg",
    "images": [
      "https://www.great-towers.com/sites/default/files/2019-06/2018-BurjKhalifa%20image%201.jpg"
      "https://mma.prnewswire.com/media/1393737/Emaar_New_Years_Eve_2021.jpg?w=950",
      "https://images.adsttc.com/media/images/59eb/8a55/b22e/38dd/0500/0155/slideshow/Burj_Khalifa_SOM_exterior_%28c%29_Nick_Merrick_for_Hedrich_Blessing_%2810%29.jpg?1508608588",
      "https://images.adsttc.com/media/images/59eb/8bfa/b22e/38dd/0500/0160/slideshow/Burj_Khalifa_SOM_interior_%28c%29_Nick_Merrick_for_Hedrich_Blessing_%287%29.jpg?1508609003",

    ],
    "description":
    "Burj Khalifa is a megatall skyscraper in Dubai, United Arab Emirates, the building is best known for being the current world's tallest skyscraper, it's the most popular tourist attraction in Dubai ",
   "price": 130
  },

  {
    "name": "Marisol fort ",
    "tagLine": "Marisol fort",
    "image":
    "https://q-xx.bstatic.com/images/hotel/max1024x768/214/214971115.jpg",
    "images": [
      "https://q-xx.bstatic.com/images/hotel/max1024x768/214/214971143.jpg",
      "https://q-xx.bstatic.com/images/hotel/max1024x768/217/217249815.jpg",
      "https://q-xx.bstatic.com/images/hotel/max1024x768/214/214971160.jpg",
    ],
    "description":
    "Situated in Le Gosier, within 2.9 km of Anse Tabarin, POP'S APPARTEMENTS RESIDENCE MARISOL au bord de la mer offers accommodation with free WiFi, air conditioning and an outdoor swimming pool. This apartment features a private pool, a garden and free private parking.",
    //"price": 110
  },

];