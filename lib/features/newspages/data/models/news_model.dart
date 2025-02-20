class NewsModel {
  final String title;
  final String urlImage;
  final String category;

  NewsModel(
      {required this.title, required this.urlImage, required this.category});
}

List<NewsModel> news = [
  NewsModel(
      title: 'Insurtech startup PasarPolis gets \$54 million — Series B',
      urlImage: 'assets/images/image2.png',
      category: 'TECHNOLOGY'),
  NewsModel(
      title: 'The IPO parade continues as Wish files, Bumble ',
      urlImage: 'assets/images/image3.png',
      category: 'TECHNOLOGY'),
  NewsModel(
      title: 'Hypatos gets \$11.8M for a deep learning approach',
      urlImage: 'assets/images/image4.png',
      category: 'TECHNOLOGY'),
  NewsModel(
      title: 'Insurtech startup PasarPolis gets \$54 million — Series B',
      urlImage: 'assets/images/image2.png',
      category: 'TECHNOLOGY'),
  NewsModel(
      title: 'Hypatos gets \$11.8M for a deep learning approach',
      urlImage: 'assets/images/image4.png',
      category: 'TECHNOLOGY'),
  NewsModel(
      title: 'The IPO parade continues as Wish files, Bumble',
      urlImage: 'assets/images/image3.png',
      category: 'TECHNOLOGY'),
];
