unit DashboardPresenterAbstract;

interface

uses
  ProductData, Datasnap.DBClient;

type
  IDashboardPresenter = interface
    ['{47BB4D3D-C009-4743-B7C2-C594B56010A7}']
    function ListAllProducts: TClientDataSet;
    function ProductsStatistics: TProductsData;
  end;

implementation

end.

