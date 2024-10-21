unit ProductUseCaseAbstract;

interface

uses
  DBClient;

type
  IProductsUseCase = interface
    ['{2DB0803C-63F7-44FF-8EFD-5277B0E0C60D}']
    function PerformDataSet: TClientDataSet;
  end;

implementation

end.
