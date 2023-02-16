# riverpod_exp
Basic Riverpod example to understand how its work

## Riverpod State Management :-


### Riverpod is a reactive caching and data-binding framework, advance version of Provider

#### Riverpod is very versatile, and you can use it to:
1. catch programming errors at compile-time rather than at runtime
2. easily fetch, cache, and update data from a remote source.
3. perform reactive caching and easily update your UI.
4. depend on asynchronous or computed state
5. create, use, and combine providers with minimal boilerplate code
6. dispose the state of a provider when it is no longer used
7. write testable code and keep your logic outside the widget tree

## — There are eight different kinds of providers (and when to use them).

— Additional Riverpod features (modifiers, provider overrides, filtering, testing support, logging, etc.).


— ProviderScope is a widget that stores the state of all the providers we create.
— Provider completely replace design patterns such as singletons, service locators, dependency injection, and InheritedWidgets.


## — What is Singleton:-?
In other words, the singleton pattern ensures that only one instance of a class is ever created, making it easy to access it as a global variable.

### — Creating and Reading a Provider —

// provider that returns a string value
final helloWorldProvider = Provider<String>((ref) {
  return 'Hello world';
});

## How to get the value  of provider :-
— using extending with ConsumerWidget 
—  or else warping with Consumer to particular widget

## — What is WidgetRef?
- an object that allows widgets to interact with providers.
- WidgetRef lets us access any provider in our codebase (as long as we import the corresponding file).
- There are mainly 3 use cases of Ref :—
	1. ref.read :-
	-  Using this, you can directly read the value of the provider without listening to its value.
	2. ref.watch :-
	-  can be used to obtain other providers.
	- if you are creating a provider and that provider depends on the value of some other provider, then you 		   should use this ref.watch in order to obtain/listen to that other provider.
	3. ref.listen :-
	- You can add a listener to your provider using ref.listen and then perform an action such as navigating to a 	     new page or showing a modal, showing a snack bar whenever that provider changes.


## — When to use read, watch and listen ?
* ref.read:
    * ref.read usually used in the cases like, on button press, getting the value from other provider, etc.
    * Using ref.read should be avoided as much as possible because it is not reactive. It exists for cases where using watch or listen would cause issues.
* ref.watch:
    * Whenever possible, prefer using ref.watch over ref.read or ref.listen to implement a feature. By relying on ref.watch, your application becomes both reactive and declarative, which makes it more maintainable.
    * The ref.watch method should not be called asynchronously, like inside an onPressed of an ElevatedButton. Nor should it be used inside initState and other State life-cycles.
* ref.listen:
    * ref.listen is usually used in cases where you want to perform something when any state changes. For example, Open a snack bar, Navigate to another screen, etc.
    * The ref.listen should not be called asynchronously, like inside an onPressed of an ElevatedButton. Nor should it be used inside initState and other State life cycles.


### ConsumerWidget vs Consumer  :—
- CW build entire build method again and again when the provider value is changed but wrapping a particular widget with consumer will rebuild only that widget 



— There are Eight diff kind of Providers — 
1. Provider
2. StateProvider (legacy)
3. StateNotifierProvider (legacy)
4. FutureProvider
5. StreamProvider
6. ChangeNotifierProvider (legacy)
7. NotifierProvider (new in Riverpod 2.0)
8. AsyncNotifierProvider (new in Riverpod 2.0)

1. Provider :—
— Provider is great for accessing dependencies and objects that don’t change.
You may use this to access a repository, a logger, or some other class that doesn't contain mutable state.
— This provider just allows you to only read its data. It does not allow you to change the data.

2. StateProvider :—
— StateProvider is great for storing simple state objects that can change, such as a counter value
— StateProvider is useful where you have simple state like boolean, integer, string, etc.
Avoid using StateProvide when your state is a complex object (such as a custom class, a list/map, ...), the logic for modifying your state is more advanced.


3. StateNotifier & StateNotifierProvider :—
— Use this to listen to and expose a StateNotifier.
— StateNotifierProvider and StateNotifier are ideal for managing state that may change in reaction to an event or user interaction.
— This is an observable class that can store one single state.
— StateNotifier is designed to be subclassed, which means you need to extend your class with this class.
 Eg:— class FruitsNotifier extends StateNotifier<List<String>> {}

NOTE :—  It is essential to note that when you extend your class with StateNotifier, you must pass the initial value in the constructor, or else you will encounter an error. So let's provide the initial value.

—  StateNotifierProvider is a provider that is used to listen to and expose a StateNotifier.

4. FutureProvider :-
- If you are calling an API to get the data, then using FutureProvider is a better option.
- FutureProvider is mainly used for this type of scenario where your code is asynchronous.
- AsyncValue is basically a class that is used to safely manipulate asynchronous data.
- By using AsyncValue, you are guaranteed that you cannot forget to handle the loading/error state of an asynchronous operation.
- So, we can use .when to convert an AsyncValue into either a progress indicator, an error screen, or to show the data:
	- This will automatically rebuild the UI when the Future completes.
	
5. StreamProvider :-
- StreamProvider is used to watch a Stream of results from a realtime API and reactively rebuild the UI.
This is usually used where we want to:
    -- listen to Firebase or web-sockets
    -- rebuild another provider every few seconds
