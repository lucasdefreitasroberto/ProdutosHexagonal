unit DashboardPresenter;

interface

uses
  ObserverAbstract, DashboardPresenterAbstract, ProductControllerFactoryAbstract,
  ProductData, Datasnap.DBClient;

type
  TDashboardPresenter = class(Tsubject, IDashboardPresenter)
  private
    FProductControllerFactory: IProductControllerFactory;
  public
    constructor Create(const ProductControllerFactory: IProductControllerFactory);
    class function New(const ProductControllerFactory: IProductControllerFactory): IDashboardPresenter;
    function ListAllProducts: TClientDataSet;
    function ProductsStatistics: TProductsData;
  end;

implementation


{ TDashboardPresenter }

constructor TDashboardPresenter.Create(const ProductControllerFactory: IProductControllerFactory);
begin
  FProductControllerFactory := ProductControllerFactory;
end;

class function TDashboardPresenter.New(const ProductControllerFactory: IProductControllerFactory): IDashboardPresenter;
begin
  Result := Self.Create(ProductControllerFactory);
end;

function TDashboardPresenter.ProductsStatistics: TProductsData;
begin
  Self.Notify;
end;

function TDashboardPresenter.ListAllProducts: TClientDataSet;
begin
  Result:= FProductControllerFactory.MakeListAllProduct.Handle;
end;

end.

