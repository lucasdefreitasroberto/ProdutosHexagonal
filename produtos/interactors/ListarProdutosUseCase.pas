unit ListarProdutosUseCase;

interface

uses
  ProdutosUseCaseAbstract, ProdutosService, ProdutosData, ProdutoUI,
  Vcl.StdCtrls;

type
  TListarProdutosUseCase = class(TInterfacedObject, IProdutosUseCase)
  private
    FMemo: TMemo;
    FProdutosService: IProdutosService;
  public
    constructor Create(const ProdutosService: IProdutosService; const Memo: TMemo);
    procedure Handle;
  end;

implementation

uses
  SysUtils;

constructor TListarProdutosUseCase.Create(const ProdutosService: IProdutosService; const Memo: TMemo);
begin
  inherited Create;
  FProdutosService := ProdutosService;
  FMemo := Memo;
end;

procedure TListarProdutosUseCase.Handle;
var
  Produtos: TArray<TProdutosData>;
  Produto: TProdutosData;
begin
  FMemo.Lines.Clear;
  Produtos := FProdutosService.ListarProdutos;
  for Produto in Produtos do
  begin
    FMemo.Lines.Add((Format('Produto: %d ||  %s  || Preço: %f  || Estoque: %f', [Produto.Codigo, Produto.Descricao, Produto.Valor, Produto.QntEstoque])));
  end;
end;

end.

