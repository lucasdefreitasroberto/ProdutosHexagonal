unit ProdutosPresenter;

interface

uses
  ProdutosUseCaseAbstract;

type
  IProdutosPresenter = interface
    ['{4E6CB4C9-03F5-4D0D-A065-4ADE943D7D1C}']
    procedure ListarProdutos;
  end;

type
  TProdutosPresenter = class(TInterfacedObject, IProdutosPresenter)
  private
    FUseCase: IProdutosUseCase;
  public
    constructor Create(const UseCase: IProdutosUseCase);
    procedure ListarProdutos;
  end;

implementation

constructor TProdutosPresenter.Create(const UseCase: IProdutosUseCase);
begin
  FUseCase := UseCase;
end;

procedure TProdutosPresenter.ListarProdutos;
begin
  FUseCase.Handle;
end;

end.

