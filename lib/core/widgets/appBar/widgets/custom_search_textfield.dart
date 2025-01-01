import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/search_cubit/search_cubit.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  FocusNode focusNode = FocusNode();
   bool _isSearching = false;

  @override
  void initState() {
    super.initState();

    // Listen for focus changes on the search text field
    focusNode.addListener(() {
      setState(() {
        _isSearching = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .05,
      width: width * .6,
      child: TextField(
        focusNode: focusNode,
        onSubmitted: (value) {
          if(value == ''){
            value = 'null';
          }
          BlocProvider.of<SearchCubit>(context).search(value: value.toString(), isSearching: _isSearching);
          print(value.toString());
        },
        style: kCandara18Bold,
        scrollPadding: EdgeInsets.zero,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: kSecondaryColor,
          ),
          contentPadding: const EdgeInsets.only(right: 15),
          filled: true,
          fillColor: kWhiteColor,
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          hintText: 'Search',
          hintStyle: kCandara18Bold.copyWith(color: kSecondaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: kSecondaryColor, width: 2),
      borderRadius: BorderRadius.circular(18));
}
