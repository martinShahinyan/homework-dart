class Book {
  String title;
  String author;
  int pages;
  Book({required this.title, required this.author, required this.pages});
  String getInfo() => "$title by $author, $pages ej";
}
void main() {
  Book myBook = Book(title: '1984', author: 'George Orwell', pages: 328);
  print(myBook.getInfo());
}
