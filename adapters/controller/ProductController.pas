unit ProductController;

interface

uses
  ProductControllerAbstract, ProductUseCaseAbstract, Datasnap.DBClient;

type
  TProductController = class(TInterfacedObject, IProductController)
  private
    FUseCase: IProductsUseCase;
  public
    constructor Create(const UseCase: IProductsUseCase);
    class function New(const UseCase: IProductsUseCase): IProductController;
    function Handle: TClientDataSet;
  end;

implementation

{ TProductController }

constructor TProductController.Create(const UseCase: IProductsUseCase);
begin
  FUseCase := UseCase;
end;

function TProductController.Handle;
begin
 Result := FUseCase.PerformDataSet;
end;

class function TProductController.New(const UseCase: IProductsUseCase): IProductController;
begin
  Result := Self.Create(UseCase);
end;

end.

