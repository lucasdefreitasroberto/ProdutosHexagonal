object frmDashboard: TfrmDashboard
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 319
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 81
    Align = alTop
    TabOrder = 0
    object btnListProduct: TButton
      Left = 267
      Top = 20
      Width = 117
      Height = 41
      Caption = 'Listar Produtos'
      TabOrder = 0
    end
  end
  object dbgrdProduct: TDBGrid
    Left = 0
    Top = 81
    Width = 651
    Height = 238
    Align = alClient
    DataSource = DS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DS: TDataSource
    Left = 352
    Top = 168
  end
end
