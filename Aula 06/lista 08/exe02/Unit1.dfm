object Form1: TForm1
  Left = 551
  Top = 197
  Width = 701
  Height = 454
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 88
    Width = 157
    Height = 13
    Caption = 'Digite um n'#250'mero e clique em OK'
  end
  object edt1: TEdit
    Left = 104
    Top = 104
    Width = 257
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 104
    Top = 136
    Width = 257
    Height = 41
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object mmo1: TMemo
    Left = 368
    Top = 88
    Width = 185
    Height = 273
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object xpmnfst1: TXPManifest
    Left = 584
    Top = 128
  end
end
