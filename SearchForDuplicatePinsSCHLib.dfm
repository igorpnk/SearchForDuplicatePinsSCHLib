object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Search for duplicate pins'
  ClientHeight = 636
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
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 222
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' '#1089' '#1076#1091#1073#1083#1080#1088#1086#1074#1072#1085#1080#1077#1084' '#1087#1080#1085#1086#1074
  end
  object bGo: TButton
    Left = 8
    Top = 32
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 0
    OnClick = bGoClick
  end
  object Log: TMemo
    Left = 8
    Top = 65
    Width = 664
    Height = 543
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
