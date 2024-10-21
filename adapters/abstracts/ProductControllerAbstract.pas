unit ProductControllerAbstract;

interface

uses
  DBClient;

type
  IProductController = interface
    ['{C3151AE1-D802-48A6-95F2-2BE8BB4CE037}']
    function Handle: TClientDataSet;
  end;

implementation

end.

