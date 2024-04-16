
// abstract class RouterApp {
//   static String kHomeView = '/homeView';
//   static String kBookDetailsView = '/BookDetailsView';
//   static String kSearchView = '/SearchView';

//   static final router = GoRouter(
//     routes: <RouteBase>[
//       GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) {
//           return const SpalshView();
//         },
//       ),
//       GoRoute(
//         path: kHomeView,
//         builder: (context, state) => const HomeView(),
//       ),
//       GoRoute(
//           path: kBookDetailsView,
//           builder: (context, state) =>
//                  BookDetailsView(
//                   bookModel: state.extra as BookModel,
//                 ),
//               ),
  
//       GoRoute(
//           builder: (context, state) => BlocProvider(
//                 create: (context) => SearchCubit(
//                   getIt.get<SearchRopoImple>(),
//                 ),//..getSerchBooks(bookName: ),
//                 child: const SearchView(),
//               ),
//           path: kSearchView)
//     ],
//   );
// }
