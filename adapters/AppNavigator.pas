unit AppNavigator;

interface

uses
  Forms, SysUtils, Dialogs, AppNavigatorAbstract;

type
  TAppNavigator = class(TInterfacedObject, IAppNavigator)
  private
    FCurrentForm: TForm;
    constructor Create;
    procedure OpenForm(FormClass: TFormClass; Modal: Boolean = False);
    procedure FormCloseHandler(Sender: TObject; var Action: TCloseAction);
    procedure DestroyForm;
  public
    procedure OpenDashboardUI;

    class function New: IAppNavigator;
  end;

implementation

uses
  DashboardUI, ProductControllerFactoryAbstract, DashboardPresenterAbstract,
  ProductControllerFactory, DashboardPresenter;

{ TAppNavigator }

constructor TAppNavigator.Create;
begin
  FCurrentForm := nil;
end;

procedure TAppNavigator.OpenForm(FormClass: TFormClass; Modal: Boolean);
begin
  try

    Self.DestroyForm();

    try
      FCurrentForm := FormClass.Create(Application);
      FCurrentForm.OnClose := Self.FormCloseHandler;
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao criar o formulário: ' + E.Message);
        Exit;
      end;
    end;

    try

      case Modal of
        True:
          FCurrentForm.ShowModal;
        False:
          FCurrentForm.Show;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Erro ao exibir o formulário: ' + E.Message);
        Self.DestroyForm();
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Erro inesperado ao abrir o formulário: ' + E.Message);
  end;
end;

procedure TAppNavigator.FormCloseHandler(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FCurrentForm := nil;
end;

class function TAppNavigator.New: IAppNavigator;
begin
  Result := Self.Create;
end;

procedure TAppNavigator.DestroyForm;
begin
  try
    if Assigned(FCurrentForm) then
    begin
      FCurrentForm.Close;
      FreeAndNil(FCurrentForm);
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao fechar o formulário: ' + E.Message);
  end;
end;

procedure TAppNavigator.OpenDashboardUI;
var
  ProductControllerFactory : IProductControllerFactory;
  DashboardPresenter: IDashboardPresenter;
  DashBoardUI: TfrmDashboard;
begin
//  Self.OpenForm(TfrmDashboard, True);  // Passa 'True' para abrir como modal
  ProductControllerFactory := TProductControllerFactory.Create;
  DashboardPresenter := TDashboardPresenter.New(ProductControllerFactory);
  DashBoardUI := TfrmDashboard.Create(Application, DashboardPresenter);

  try
   DashBoardUI.ShowModal;
  finally
   DashBoardUI.Free;
  end;
end;

end.

