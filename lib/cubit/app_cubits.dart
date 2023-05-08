// import 'package:bloc/bloc.dart';

// class AppCubits extends Cubit<CubitStates>{
//   AppCubits({required this.data}) : super(InitialState()){
//     emit(WelcomeState());
//   }
//   final DataServices data;
//   late final places;

//   void getData()async{
//     try{
//       emit(LoadingState());
//       places = await data.getInfo();
//       emit(LoadedState(places));
//     }catch(e){

//     }
//   }

//   detailPage(DataModel data){
//     emit(DetailState(data));
//   }

//   goHome(){
//     emit(LoadedState(places));
//   }

// }