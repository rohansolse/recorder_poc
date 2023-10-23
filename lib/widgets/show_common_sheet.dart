import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';
import 'package:recorder_poc/widgets/common_elevated_button.dart';

void showBottomSheetWidget(BuildContext context) {
  List<Item> items = List.generate(5, (index) => Item('Item $index', false));
  final TextEditingController searchController = TextEditingController();
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter state) {
          var filteredItems = items.where((item) => item.title.toLowerCase().contains(searchController.text.toLowerCase())).toList();
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 102, 78, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filter',
                        style: TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 1),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Archivo',
                          fontSize: 22,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Color.fromRGBO(250, 250, 250, 1),
                        ),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Patient Name',
                        style: TextStyle(
                          color: Color.fromRGBO(86, 89, 91, 1),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          labelText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(210, 210, 210, 1), width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(210, 210, 210, 1), width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        onChanged: (value) {
                          state(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(filteredItems[index].title),
                        value: filteredItems[index].checked,
                        onChanged: (bool? value) {
                          state(() {
                            filteredItems[index].checked = value!;
                          });
                        },
                        activeColor: const Color.fromRGBO(0, 152, 116, 1),
                        controlAffinity: ListTileControlAffinity.leading,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    children: [
                      CommonElevatedButton(
                        elevation: 0,
                        hight: 48.0,
                        width: 159.0,
                        backgroundColor: AppConstants.whiteColor,
                        textColor: AppConstants.primaryColor,
                        fontSize: 16.0,
                        text: 'Reset Filters',
                        borderColor: AppConstants.primaryColor,
                        fontFamily: AppConstants.fontFamilyRoboto,
                        fontWeight: AppConstants.fontWeight500,
                        onPressed: () {
                          state(() {
                            for (var item in items) {
                              item.checked = false;
                            }
                          });
                        },
                        iconLink: '',
                      ),
                      const SizedBox(width: 15),
                      CommonElevatedButton(
                        elevation: 0,
                        hight: 48.0,
                        width: 159.0,
                        backgroundColor: AppConstants.primaryColor,
                        textColor: AppConstants.whiteColor,
                        fontSize: 16.0,
                        text: 'Apply Filters',
                        borderColor: AppConstants.primaryColor,
                        fontFamily: AppConstants.fontFamilyRoboto,
                        fontWeight: AppConstants.fontWeight500,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconLink: '',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          );
        },
      );
    },
  );
}

class Item {
  String title;
  bool checked;

  Item(this.title, this.checked);
}
