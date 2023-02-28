import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';
import 'package:shifacom/controllers/bottom_nav_bar_providers/search_provider.dart';
import 'package:shifacom/core/strings/messages.dart';
import 'package:shifacom/core/utlis/media_query.dart';

class SearchBarDynamicWidget extends StatelessWidget {
  const SearchBarDynamicWidget({Key? key, this.categoryID = "", this.isEnabled = true})
      : super(key: key);
  final String categoryID;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, searchProvider, child) => PlatformTextField(
        material: (context, platform) => MaterialTextFieldData(
          onChanged: (value) {
            context.read<SearchProvider>().searchValue = value;
            if (categoryID != "") {
              searchProvider.fetchProfilesFromSearch(context, categoryID);
            }
          },
          enabled: isEnabled,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: getHeight(context) * 0.02),
            hintText: START_SEARCH,
            filled: true,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
        cupertino: (context, platform) => CupertinoTextFieldData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          placeholder: START_SEARCH,
          placeholderStyle: const TextStyle(color: Colors.grey),
          padding: EdgeInsets.symmetric(horizontal: getHeight(context) * 0.02),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
