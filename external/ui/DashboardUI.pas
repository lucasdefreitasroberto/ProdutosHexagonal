unit DashboardUI;

interface

uses
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Observerabstract, DashboardPresenterAbstract,
  Datasnap.DBClient;

type
  TfrmDashboard = class(TForm)
    Panel1: TPanel;
    dbgrdProduct: TDBGrid;
    btnListProduct: TButton;
    DS: TDataSource;
  private
    FPresenter: IDashboardPresenter;
    procedure Actualize(Subject: ISubject);
    procedure HandleListProduct(Sender: TObject);
  public
   Constructor Create(AOwner: TComponent; const Presenter: IDashboardPresenter); reintroduce;
  end;

implementation

uses
  DashboardPresenter;

{$R *.dfm}

{ TfrmDashboard }

procedure TfrmDashboard.Actualize(Subject: ISubject);
begin
   // Atualizar a lista de produtos, por exemplo, após uma alteração
  // Isso pode ser feito vinculando os dados ao componente DBGrid ou outro.
  // Exemplo: dsProducts.DataSet := (Subject as TYourDataSource).DataSet;
end;

constructor TfrmDashboard.Create(AOwner: TComponent; const Presenter: IDashboardPresenter);
begin
  inherited Create(Owner);
  btnListProduct.OnClick := Self.HandleListProduct;
  FPresenter := Presenter;
end;

procedure TfrmDashboard.HandleListProduct(Sender: TObject);
begin
  DS.DataSet := FPresenter.ListAllProducts;
end;

end.

