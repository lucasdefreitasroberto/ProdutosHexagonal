unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, ProdutosPresenter, Vcl.Grids;

type
  TfrmPrincipal = class(TForm)
    btnProdutos: TBitBtn;
    procedure btnProdutosClick(Sender: TObject);
  private
  public
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  ProdutoUI;

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
var
  ProdutoUI: TfrmProdutoUI;
begin
  ProdutoUI := TfrmProdutoUI.Create(Self);
  try
    ProdutoUI.ShowModal;
  finally
    ProdutoUI.Free;
  end;
end;

end.

