import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/api/api_manager.dart';
import 'package:movie/details/cubit/popular_details_states.dart';

class PopularDetailsViewModel extends Cubit<PopularDetailsStates>{
  PopularDetailsViewModel():super(PopularDetailsLoadingState());

  Future<void> getSimilarMovies(int movieId) async {
    emit(PopularDetailsLoadingState());
    try{
      var response = await APIManager.getSimilar(movieId);
      if(response.statusCode != null){
        emit(PopularDetailsErrorState(errorMessage: response.statusMessage!));
      }else{
        emit(PopularDetailsSuccessState(moviesList: response.results ?? []));
      }
    }catch(e){
      emit(PopularDetailsErrorState(errorMessage: e.toString()));
    }
  }
}
