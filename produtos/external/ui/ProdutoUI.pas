unit ProdutoUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, ProdutosPresenter;

type
  TfrmProdutoUI = class(TForm)
    Panel1: TPanel;
    btnProdutos: TBitBtn;
    mmo: TMemo;
    procedure btnProdutosClick(Sender: TObject);
  private
    FPresenter: IProdutosPresenter;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses
  IBXProdutosRepository, ProdutosControllerFactoryAbstract,
  ProdutosRepositoryAbstract, ProdutosService, ProdutosControllerFactory;

{ TfrmProdutos }

procedure TfrmProdutoUI.btnProdutosClick(Sender: TObject);
begin
  FPresenter.ListarProdutos;
end;

constructor TfrmProdutoUI.Create(AOwner: TComponent);
var
  ProdutosRepository: IProdutosRepository;
  ProdutosService: IProdutosService;
  ControllerFactory: IProdutosControllerFactory;
begin
  inherited Create(AOwner);
  ProdutosRepository := TIBXProdutosRepository.New;
  ProdutosService := TProdutosService.Create(ProdutosRepository);
  ControllerFactory := TProdutosControllerFactory.Create(ProdutosService);
  FPresenter := ControllerFactory.MakeListarProdutos(mmo);
end;

end.
