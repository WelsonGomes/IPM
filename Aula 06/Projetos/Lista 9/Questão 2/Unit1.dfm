object Form1: TForm1
  Left = 192
  Top = 125
  Width = 746
  Height = 386
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
  object edt1: TEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object edt2: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '2'
  end
  object edt3: TEdit
    Left = 272
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '3'
  end
  object edt4: TEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '4'
  end
  object edt5: TEdit
    Left = 144
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '5'
  end
  object edt6: TEdit
    Left = 272
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '6'
  end
  object edt7: TEdit
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '7'
  end
  object dbgrd1: TDBGrid
    Left = 400
    Top = 16
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 168
    Top = 128
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 8
    OnClick = btn1Click
  end
  object ds1: TDataSource
    DataSet = ds2
    Left = 400
    Top = 144
  end
  object ds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'col1'
        DataType = ftFloat
      end
      item
        Name = 'col2'
        DataType = ftFloat
      end
      item
        Name = 'col3'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 440
    Top = 144
  end
end
