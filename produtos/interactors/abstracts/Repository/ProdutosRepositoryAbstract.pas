unit ProdutosRepositoryAbstract;

interface

uses
  ProdutosData;

type
  IProdutosRepository = interface
    ['{5E0EFBF5-7A1B-4623-9BE6-1AB91597FF7F}']
    function ListAll: TArray<TProdutosData>;
  end;

implementation

end.

