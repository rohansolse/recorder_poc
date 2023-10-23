List<Item> items = [
  Item('No Recording', false),
  Item('Summary in Progress', false),
  Item('Summary for Review', false),
  Item('Summary Approved', false),
];

class Item {
  String title;
  bool checked;

  Item(this.title, this.checked);
}
