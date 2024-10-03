unit ProdutosService;

interface

uses
  ProdutosRepositoryAbstract, ProdutosData;

type
  IProdutosService = interface
    ['{1F3A9FC6-2F63-44CE-B953-1A57A86936B3}']
    function ListarProdutos: TArray<TProdutosData>;
  end;

  TProdutosService = class(TInterfacedObject, IProdutosService)
  private
    FProdutosRepository: IProdutosRepository;
  public
    constructor Create(const ProdutosRepository: IProdutosRepository);
    function ListarProdutos: TArray<TProdutosData>;
  end;

implementation

constructor TProdutosService.Create(const ProdutosRepository: IProdutosRepository);
begin
  inherited Create;
  FProdutosRepository := ProdutosRepository;
end;

function TProdutosService.ListarProdutos: TArray<TProdutosData>;
begin
  Result := FProdutosRepository.ListAll;
end;

end.

