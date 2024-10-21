unit ProductControllerFactoryAbstract;

interface

uses
  ProductControllerAbstract;

type
  IProductControllerFactory = interface
    ['{E325776C-7BE8-4458-88C0-A6BC194979A4}']
    function MakeListAllProduct: IProductController;
  end;

implementation

end.

