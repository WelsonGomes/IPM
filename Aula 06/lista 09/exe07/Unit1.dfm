object Form1: TForm1
  Left = 342
  Top = 177
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
  PixelsPerInch = 96
  TextHeight = 13
  object btnOk: TButton
    Left = 128
    Top = 160
    Width = 75
    Height = 25
    Caption = 'btnOk'
    TabOrder = 0
    OnClick = btnOkClick
  end
  object edt1: TEdit
    Left = 112
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 216
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 424
    Top = 232
  end
  object ds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nota 01'
        DataType = ftFloat
      end
      item
        Name = 'Nota 02'
        DataType = ftFloat
      end
      item
        Name = 'Nota 03'
        DataType = ftFloat
      end
      item
        Name = 'Media'
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 424
    Top = 280
  end
end
