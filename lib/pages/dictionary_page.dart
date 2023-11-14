import 'package:flutter/material.dart';

class DictionaryPage extends StatefulWidget {
  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _dictionaryTerms = [
    "Noun",
    "Verb",
    "Adjective",
    // Add more terms as needed
  ];
  List<String> _filteredTerms = [];

  @override
  void initState() {
    super.initState();
    _filteredTerms = _dictionaryTerms;
  }

  void _searchTerm(String enteredKeyword) {
    List<String> results = [];
    if (enteredKeyword.isEmpty) {
      results = _dictionaryTerms;
    } else {
      results = _dictionaryTerms
          .where((term) =>
          term.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _filteredTerms = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grammar Dictionary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: _searchTerm,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredTerms.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredTerms[index]),
                    onTap: () {
                      // Add functionality to navigate to the term's details or explanation
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
