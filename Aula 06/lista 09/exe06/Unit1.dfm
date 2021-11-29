object Form1: TForm1
  Left = 1207
  Top = 174
  Width = 450
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
  object dbgrd1: TDBGrid
    Left = 32
    Top = 96
    Width = 320
    Height = 161
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 32
    Top = 40
    Width = 321
    Height = 49
    Caption = 'Gerar Matriz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 376
    Top = 104
  end
  object ds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Col 01'
        DataType = ftFloat
      end
      item
        Name = 'Col 02'
        DataType = ftFloat
      end
      item
        Name = 'Col 03'
        DataType = ftFloat
      end
      item
        Name = 'Col 04'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 376
    Top = 136
  end
end
