object Form1: TForm1
  Left = 634
  Top = 190
  Width = 491
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 16
    Width = 172
    Height = 20
    Caption = 'Digite um n'#250'mero inteiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 56
    Top = 40
    Width = 345
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btn1: TButton
    Left = 56
    Top = 72
    Width = 345
    Height = 65
    Caption = 'INSERIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 144
    Width = 345
    Height = 120
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object mmo1: TMemo
    Left = 56
    Top = 272
    Width = 345
    Height = 121
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object xpmnfst1: TXPManifest
    Left = 616
    Top = 256
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 408
    Top = 144
  end
  object ds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'N'#250'meros 01'
        DataType = ftFloat
      end
      item
        Name = 'N'#250'meros 02'
        DataType = ftFloat
      end
      item
        Name = 'N'#250'meros 03'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 408
    Top = 176
  end
end
