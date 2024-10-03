unit ProdutosControllerFactoryAbstract;

interface

uses
  ProdutosControllerAbstract, ProdutosPresenter, Vcl.StdCtrls;

type
  IProdutosControllerFactory = interface
    ['{8F928C47-3A15-42BC-91FB-682EA7EB1936}']
    function MakeListarProdutos(const Memo: TMemo): IProdutosPresenter;
  end;

implementation

end.

