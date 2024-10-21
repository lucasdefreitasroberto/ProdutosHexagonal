unit ProductControllerFactory;

interface

uses
  ProductControllerFactoryAbstract, ProductControllerAbstract;

type
  TProductControllerFactory = class(TInterfacedObject, IProductControllerFactory)
  public
    function MakeListAllProduct: IProductController;
  end;

implementation

uses
  ProductController, ListAllProductUseCase, ProductsRepository;

{ TProductControllerFactory }

function TProductControllerFactory.MakeListAllProduct: IProductController;
begin
  Result := TProductController.New(TListAllProductUseCase.New(TProductsRepository.New));
end;

end.

