object frmProdutoUI: TfrmProdutoUI
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 273
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object mmo: TMemo
    Left = 0
    Top = 49
    Width = 679
    Height = 224
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 77
    ExplicitWidth = 578
    ExplicitHeight = 196
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 49
    Align = alTop
    TabOrder = 1
    object btnProdutos: TBitBtn
      Left = 281
      Top = -1
      Width = 117
      Height = 50
      Caption = 'Listar Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnProdutosClick
    end
  end
end
