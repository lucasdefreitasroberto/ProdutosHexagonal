unit ProdutosControllerFactory;

interface

uses
  ProdutosControllerFactoryAbstract, ProdutosUseCaseAbstract, ProdutosService,
  ProdutosPresenter, Vcl.StdCtrls;

type
  TProdutosControllerFactory = class(TInterfacedObject,
    IProdutosControllerFactory)
  private
    FProdutosService: IProdutosService;
  public
    constructor Create(const ProdutosService: IProdutosService);
    function MakeListarProdutos(const Memo: TMemo): IProdutosPresenter;
  end;

implementation

uses
  ListarProdutosUseCase;

constructor TProdutosControllerFactory.Create(const ProdutosService
  : IProdutosService);
begin
  FProdutosService := ProdutosService;
end;

function TProdutosControllerFactory.MakeListarProdutos(const Memo: TMemo): IProdutosPresenter;
var
  UseCase: IProdutosUseCase;
begin
  UseCase := TListarProdutosUseCase.Create(FProdutosService, Memo);
  Result := TProdutosPresenter.Create(UseCase);
end;

end.
