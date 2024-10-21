unit ListAllProductUseCase;

interface

uses
  ProductUseCaseAbstract, ProductRepositoryAbstract, Datasnap.DBClient;

type
  TListAllProductUseCase = class(TInterfacedObject, IProductsUseCase)
    FProductsRepository: IProductsRepository;
  public
    function PerformDataSet: TClientDataSet;
    constructor Create(const ProductsRepository: IProductsRepository);
    class function New(const ProductsRepository: IProductsRepository): IProductsUseCase;
  end;

implementation

{ TListAllProductUseCase }

constructor TListAllProductUseCase.Create(const ProductsRepository: IProductsRepository);
begin
  inherited Create;
  FProductsRepository := ProductsRepository;
end;

class function TListAllProductUseCase.New(const ProductsRepository: IProductsRepository): IProductsUseCase;
begin
  Result := Self.Create(ProductsRepository);
end;

function TListAllProductUseCase.PerformDataSet: TClientDataSet;
begin
 Result := FProductsRepository.ListAllProducts;
end;

end.

