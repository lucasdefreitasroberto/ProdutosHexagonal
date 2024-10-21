unit ProductRepositoryAbstract;

interface

uses
  System.Generics.Collections, ProductData, Datasnap.DBClient;

type
  IProductsRepository = interface
    ['{FF8D6AF3-752A-449A-A65B-C0A670045B7A}']
    function ListAllProducts: TClientDataSet;
  end;

implementation

end.
