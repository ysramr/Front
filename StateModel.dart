class StateModel {
  final String name;
  final String description;

  StateModel({
    required this.name,
    required this.description,
  });
}

List<StateModel> statesList = [
  StateModel(name: 'Terengganu', description: 'Description for Terengganu.'),
  StateModel(name: 'Kedah', description: 'Description for Kedah.'),
  StateModel(name: 'Penang', description: 'Description for Penang.'),
  StateModel(name: 'Perlis', description: 'Description for Perlis.'),
  StateModel(name: 'Kelantan', description: 'Description for Kelantan.'),
  StateModel(name: 'Johor', description: 'Description for Johor.'),
  StateModel(name: 'Kuala Lumpur', description: 'Description for Kuala Lumpur.'),
  StateModel(name: 'Selangor', description: 'Description for Selangor.'),
  StateModel(name: 'Pahang', description: 'Description for Pahang.'),
];
