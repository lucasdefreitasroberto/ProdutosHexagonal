unit ProductsRepository;

interface

uses
  ProductRepositoryAbstract, ProductData, DataBaseProducts, DBClient, DB;

type
  TProductsRepository = class(TInterfacedObject, IProductsRepository)
  private
    function CreateProductDataSet: TClientDataSet;
  public
    function ListAllProducts: TClientDataSet;
    class function New: IProductsRepository;
  end;

implementation

{ TProductsRepository }

function TProductsRepository.ListAllProducts: TClientDataSet;
begin
  Result := Self.CreateProductDataSet;
end;

class function TProductsRepository.New: IProductsRepository;
begin
  Result := Self.Create;
end;

function TProductsRepository.CreateProductDataSet: TClientDataSet;
var
  I: Integer;
  LCDS: TClientDataSet;
begin
  LCDS := TClientDataSet.Create(nil);
  LCDS.FieldDefs.Add('ID', ftInteger);
  LCDS.FieldDefs.Add('Description', ftString, 100);
  LCDS.FieldDefs.Add('Value', ftCurrency);
  LCDS.FieldDefs.Add('QntStock', ftFloat);

  LCDS.CreateDataSet;

  for I := Low(ListProductsRaw) to High(ListProductsRaw) do
  begin
    LCDS.Append;
    LCDS.FieldByName('ID').AsInteger         := ListProductsRaw[I].ID;
    LCDS.FieldByName('Description').AsString := ListProductsRaw[I].Description;
    LCDS.FieldByName('Value').AsCurrency     := ListProductsRaw[I].Value;
    LCDS.FieldByName('QntStock').AsCurrency  := ListProductsRaw[I].QntStock;
    LCDS.Post;
  end;

  LCDS.FieldByName('ID').DisplayLabel := 'Código';
  LCDS.FieldByName('Description').DisplayLabel := 'Descrição';
  LCDS.FieldByName('Value').DisplayLabel := 'Preço';
  LCDS.FieldByName('QntStock').DisplayLabel := 'Quant.Estoque';

  Result := LCDS;
end;

end.

