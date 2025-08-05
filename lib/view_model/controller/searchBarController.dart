import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Searchbarcontroller extends GetxController {
  //track whether the search bar is opened
  var isSearchActive = false.obs;

  //which tab is currently selected
  var selectedTab = 'Top'.obs;

  //Current text typed in searchbar

  var searchQuery = ''.obs;

  //FOR BOTTOM NAV BAR APPEARANCE AND DISAPPEARANCE

  var showBottomNav = true.obs;
  var showFloatButton = true.obs;

  final allQuizzes = <Map<String, String>>[
    {
      'title': 'Statistics Math Quiz',
      'subtitle': 'Math • 12 Quizzes',
      'image': 'assets/images/mathq.png',
    },
    {
      'title': 'Matrices Quiz',
      'subtitle': 'Math • 6 Quizzes',
      'image': 'assets/images/matric.png',
    },
  ].obs;

  final allFriends = <Map<String, dynamic>>[
    {
      'name': 'Maren Workman',
      'points': '325',
      'image': 'assets/images/a2.png',
      'flag': 'assets/images/ger.png',
    },
    {
      'name': 'Brandon Matrovs',
      'points': '124',
      'image': 'assets/images/a5.png',
      'flag': 'assets/images/cz.png',
    },
    {
      'name': 'Manuela Lipshutz',
      'points': '437',
      'image': 'assets/images/a3.png',
      'flag': 'assets/images/it.png',
    },
  ].obs;
  final allCategories = <Map<String, dynamic>>[
    {
      'name': 'Math',
      'quizCount': ' 12 Quiz',
      'bgColor': Colors.deepPurple,
      'logoColor': Colors.purpleAccent,
    },
    {
      'name': 'Sports',
      'quizCount': '9 Quiz',
      'bgColor': Colors.green,
      'logoColor': Colors.greenAccent,
    },
    {
      'name': 'Music',
      'quizCount': ' 7 Quiz',
      'bgColor': Colors.orange,
      'logoColor': Colors.deepOrangeAccent,
    },
    {
      'name': 'Science',
      'quizCount': '14 Quiz',
      'bgColor': Colors.blue,
      'logoColor': Colors.lightBlueAccent,
    },
  ].obs;

  //   1. When Search Bar is Active and has Text
  // Show filtered data based on the searchQuery

  // Only the current selected tab's data is visible (Top, Quiz, Friends, etc.)

  // 2. When Search Bar is Active but Empty (or not searching)
  // Show all data from the controller for that tab:

  // Top → show all quizzes, categories, and friends

  // Quiz → show all quizzes

  // Friends → show all friends

  // Categories → show all categories

  // ✅ Controller Logic: How to Fetch Data
  // Let’s improve the controller logic so that the UI knows:

  // If searchQuery is empty, show full list

  // If not empty, show filtered list

  List<Map<String, String>> get quizzesToShow {
    return searchQuery.isEmpty ? allQuizzes : filteredQuizzes;
  }

  List<Map<String, dynamic>> get categoriesToShow {
    return searchQuery.isEmpty ? allCategories : filteredCategory;
  }

  List<Map<String, dynamic>> get friendsToShow {
    return searchQuery.isEmpty ? allFriends : filteredFriends;
  }
  //These are the lists shown in UI — filtered by tab and text input.

  var filteredQuizzes = <Map<String, String>>[].obs;
  var filteredCategory = <Map<String, dynamic>>[].obs;
  var filteredFriends = <Map<String, dynamic>>[].obs;

  // This function updates the filtered lists when the user types or switches tabs.

  void filterResults() {
    final query = searchQuery.value.toLowerCase();

    ///Let’s break this:

    // 🔹 allQuizzes.where((q) => ...)
    // This means: “Go through every quiz (q) in the quiz list”

    // It’s a filter: only keep the ones that match a condition.

    // 🔹 q['title'].toString().toLowerCase()
    // From each quiz q, take its title (e.g., "Matrices Quiz")

    // Convert it to lowercase to avoid case mismatch

    // "Math" becomes "math", "quiz" stays "quiz"

    // 🔹 .contains(query)
    // Check if that title includes the user’s search input.

    // If the query is "mat", it will match "Matrices Quiz"

    // If the query is "his", it won’t match

    // 🔹 .toList()
    // Converts the filtered results from a where() iterable into a real list — because .value expects a List.

    // ✅ Final Thought
    // So this whole block says:

    // "If the user is in Top or Quiz tab, then go through the list of all quizzes and pick only those quizzes whose title contains the search text — and show them."

    if (selectedTab.value == 'Top' || selectedTab.value == 'Quiz') {
      filteredQuizzes.value = allQuizzes
          .where((q) => q['title'].toString().toLowerCase().contains(query))
          .toList();
    }

    // "If the user is in Top or Category tab, then go through the list of all quizzes and pick only those quizzes whose title contains the search text — and show them."

    if (selectedTab.value == 'Top' || selectedTab.value == 'Categories') {
      filteredCategory.value = allCategories
          .where((c) => c['subject'].toString().toLowerCase().contains(query))
          .toList();
    }
    //// "If the user is in Top or Friends tab, then go through the list of all quizzes and pick only those quizzes whose title contains the search text — and show them."

    if (selectedTab.value == 'Top' || selectedTab.value == 'Friends') {
      filteredFriends.value = allFriends
          .where((f) => f['name'].toString().toLowerCase().contains(query))
          .toList();
    }
  } //FILTERRESULTS

  void switchTab(String tabName) {
    selectedTab.value = tabName;
    filterResults();
  } //When a new tab is tapped, update state and re-filter the data.

  void updateSearch(String value) {
    searchQuery.value = value;
    filterResults();
    //This is called when the user types in the search bar.
  }

  void toggleSearch(bool value) {
    isSearchActive.value = value;
    showBottomNav.value = !value; // hide nav bar when search is active
    showFloatButton.value = !value;
    if (!value) {
      searchQuery.value = '';
      selectedTab.value = 'Top';
      filteredQuizzes.clear();
      filteredCategory.clear();
      filteredFriends.clear();
    } else {
      filterResults();
    }
  }

  void deactivateSearch() {
    isSearchActive.value = false;
    showBottomNav.value = true;
    showFloatButton.value = true;
    searchQuery.value = '';
    selectedTab.value = 'Top';
    filteredQuizzes.clear();
    filteredCategory.clear();
    filteredFriends.clear();
  }
}
