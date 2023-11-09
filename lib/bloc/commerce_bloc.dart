import 'package:kurtoba_module/bloc/base_bloc/base_bloc.dart';
import 'package:kurtoba_module/model/cat_model.dart';
import 'package:kurtoba_module/model/prod_model.dart';
import 'package:kurtoba_module/reposetory/repo.dart';
import 'package:kurtoba_module/source/prod_source.dart';
import 'package:kurtoba_module/utilis/result/result.dart';
class CommerceBloc {
  CommerceModuleBaseBloc<List<CategoryModel>> catigorybloc  = CommerceModuleBaseBloc();
  CommerceModuleBaseBloc<List<ProductionModel>> prodbloc  = CommerceModuleBaseBloc();
  CommerceModuleBaseBloc<ProductionModel> prodDetailsbloc  = CommerceModuleBaseBloc();

  void getCatigories() async {
  catigorybloc.loadingState();
 var repo = CommerceRepo(httpSoucre: ProdHttpDataSource());
  var result =  await  repo.getCatigory()   ;
  result.pick(onData: (v){

var data = v.data  ;
List<CategoryModel> list  = [] ;
    data ["results"].map((e)  {
      CategoryModel cat =   CategoryModel.formJson(e) ;
    list.add(cat);
    }).toList();
     catigorybloc.successState( list    );
  }, onError: (error){
    catigorybloc.failedState(error, () {});
  });
}

  void getProducts(int i ) async {
    prodbloc.loadingState();
    var repo = CommerceRepo(httpSoucre: ProdHttpDataSource());
    var result =  await  repo.getCatigoryById(i)   ;
    result.pick(onData: (v){

      var data = v.data  ;
      List<ProductionModel> list  = [] ;
      data ["results"].map((e)  {
        ProductionModel prod =   ProductionModel.formJson(e) ;
        list.add(prod);
      }).toList();
      prodbloc.successState( list    );
    }, onError: (error){
      prodbloc.failedState(error, () {});
    });
  }
}