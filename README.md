# Mosque List App

A simple mosque list app based on a fixed location. The page is created based on the bloc state management library.


### Presentation layer
`pages/mosque_list_page` - contains the page itself. It fetches the mosque data using the repository and renders the ListItem widget

`widgets/mosque_list_item` - the item component. It renders some basic info about the mosque.

### Business Layer
`buiseness_logic/bloc/mosque_bloc.dart` - fetches the mosques using the repository function. Emits the appropriate state based on the data.

`buiseness_logic/bloc/mosque_event.dart` - contains the `FetchMosques` event

`buiseness_logic/bloc/mosque_state.dart` contains all the different states - `MosqueLoading`, `MosqueLoaded`, `MosqueError`

### Data Layer
`data/dataproviders/mosque_api_provider` - deals with calling the API

`data/repositories/mosque_repository` - call the `mosque_api_provider` to fetch the data and transform the JSON response as a list of mosque objects for the UI to consume

`data/models/mosque` - contains the mosque object and fromJson function.

### Output

![Simulator Screenshot - iPhone 15 Pro - 2024-04-26 at 12 19 48](https://github.com/Saad-Bashar/mosque-list-flutter/assets/13269141/4cc1796a-3d00-44f5-b7f9-d56bfb63f6d5)
