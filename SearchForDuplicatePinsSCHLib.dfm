object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Search for duplicate pins'
  ClientHeight = 123
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCompName: TLabel
    Left = 16
    Top = 64
    Width = 82
    Height = 13
    Caption = 'ComponentName'
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 178
    Height = 13
    Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090' '#1089' '#1076#1091#1073#1083#1080#1088#1086#1074#1072#1085#1080#1077#1084' '#1087#1080#1085#1086#1074
  end
  object tLink: TEdit
    Left = 16
    Top = 40
    Width = 656
    Height = 21
    TabOrder = 0
  end
  object bGo: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Go'
    TabOrder = 1
    OnClick = bGoClick
  end
end
