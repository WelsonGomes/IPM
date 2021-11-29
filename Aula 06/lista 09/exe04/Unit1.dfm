object Form1: TForm1
  Left = 390
  Top = 170
  Width = 1305
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
    Left = 24
    Top = 16
    Width = 201
    Height = 20
    Caption = 'Qual a ordem MxM da Matriz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object mmo1: TMemo
    Left = 24
    Top = 424
    Width = 369
    Height = 73
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object btnGerarMatriz: TButton
    Left = 24
    Top = 72
    Width = 369
    Height = 73
    Caption = 'GerarMatriz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnGerarMatrizClick
  end
  object edt1: TEdit
    Left = 24
    Top = 40
    Width = 369
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 152
    Width = 369
    Height = 265
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object xpmnfst1: TXPManifest
    Left = 984
    Top = 192
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 400
    Top = 176
  end
  object ds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Col01'
        DataType = ftFloat
      end
      item
        Name = 'Col02'
        DataType = ftFloat
      end
      item
        Name = 'Col03'
        DataType = ftFloat
      end
      item
        Name = 'Col04'
        DataType = ftFloat
      end
      item
        Name = 'Col05'
        DataType = ftFloat
      end
      item
        Name = 'Col06'
        DataType = ftFloat
      end
      item
        Name = 'Col07'
        DataType = ftFloat
      end
      item
        Name = 'Col08'
        DataType = ftFloat
      end
      item
        Name = 'Col09'
        DataType = ftFloat
      end
      item
        Name = 'Col10'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 216
  end
end
