program OrionProduct;

uses
  MainUi in '..\external\ui\MainUi.pas' {frmMainUI},
  DashboardUI in '..\external\ui\DashboardUI.pas' {frmDashboard},
  Main in '..\main\Main.pas',
  MainPresenter in '..\adapters\presenter\MainPresenter.pas',
  ObserverAbstract in '..\adapters\abstracts\ObserverAbstract.pas',
  DashboardPresenter in '..\adapters\presenter\DashboardPresenter.pas',
  AppNavigator in '..\adapters\AppNavigator.pas',
  AppNavigatorAbstract in '..\adapters\abstracts\AppNavigatorAbstract.pas',
  ProductsRepository in '..\external\structs\ProductsRepository.pas',
  ProductData in '..\interactors\structs\ProductData.pas',
  ProductRepositoryAbstract in '..\interactors\abstracts\RepositorysAbstract\ProductRepositoryAbstract.pas',
  DataBaseProducts in '..\external\database\DataBaseProducts.pas',
  DashboardPresenterAbstract in '..\adapters\abstracts\DashboardPresenterAbstract.pas',
  ProductControllerFactory in '..\main\ProductControllerFactory.pas',
  ProductControllerFactoryAbstract in '..\adapters\abstracts\ProductControllerFactoryAbstract.pas',
  ProductControllerAbstract in '..\adapters\abstracts\ProductControllerAbstract.pas',
  ProductUseCaseAbstract in '..\interactors\abstracts\UseCaseAbstract\ProductUseCaseAbstract.pas',
  ListAllProductUseCase in '..\interactors\usecase\ListAllProductUseCase.pas',
  ProductController in '..\adapters\controller\ProductController.pas';

{$R *.res}

begin
  TMain.New.Initialize;
end.

