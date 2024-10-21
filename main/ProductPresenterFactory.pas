unit ProductPresenterFactory;

interface

uses
  ProductPresenterFactoryAbstract, MainPresenter, DashboardPresenter,
  IDashboardPresenterAbstract, ListAllProductUseCase, ProductsRepository,
  ProductControllerFactoryAbstract, ProductControllerFactory;

type
  TProductPresenterFactory = class(TInterfacedObject, IProductPresenterFactory)
  private
    FControllerFactory: IProductControllerFactory;
  public
    class function MainMake: IMainPresenter;
    class function DashboardMake: IDashboardPresenter;
  end;

implementation

{ TProductPresenterFactory }

class function TProductPresenterFactory.DashboardMake: IDashboardPresenter;
begin
  Result := TDashboardPresenter.New(TProductControllerFactory.Create);
end;

class function TProductPresenterFactory.MainMake: IMainPresenter;
begin
  Result := TMainPresenter.New;
end;

end.

