unit IBXProdutosRepository;

interface

uses
  ProdutosData, IBX.IBQuery, FireDAC.Comp.Client, ProdutosRepositoryAbstract;

type
  TIBXProdutosRepository = class(TInterfacedObject, IProdutosRepository)
  private
//    FQueryFactory: TFDQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IProdutosRepository;
    function ListAll: TArray<TProdutosData>;
  end;

implementation

uses
  dm;

constructor TIBXProdutosRepository.Create;
begin
  inherited Create;
end;

destructor TIBXProdutosRepository.Destroy;
begin
  inherited;
end;

class function TIBXProdutosRepository.New: IProdutosRepository;
begin
  Result := Self.Create;
end;

function TIBXProdutosRepository.ListAll: TArray<TProdutosData>;
var
  IBQuery: TFDQuery;
  Produtos: TArray<TProdutosData>;
  Produto: TProdutosData;
begin
  IBQuery := TFDQuery.Create(nil);
  IBQuery.Connection := DMConexao.con;

  IBQuery.SQL.Text :=
    'select COD_PRODUTO, DESCRICAO, VALOR, QTD_ESTOQUE, DATA_ULT_ALTERACAO from PRODUTO  ';
  IBQuery.Open;
  try
    while not IBQuery.Eof do
    begin
      Produto.Codigo := IBQuery.FieldByName('COD_PRODUTO').AsInteger;
      Produto.Descricao := IBQuery.FieldByName('DESCRICAO').AsString;
      Produto.Valor := IBQuery.FieldByName('VALOR').AsCurrency;
      Produto.QntEstoque := IBQuery.FieldByName('QTD_ESTOQUE').AsCurrency;
      Produto.DataUltAlt := IBQuery.FieldByName('DATA_ULT_ALTERACAO').AsCurrency;
      Produtos := Produtos + [Produto];
      IBQuery.Next;
    end;
  finally
    IBQuery.Close;
  end;
  Result := Produtos;
end;

end.
