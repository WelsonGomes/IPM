object Form1: TForm1
  Left = 1357
  Top = 173
  Width = 453
  Height = 689
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
    Left = 48
    Top = 40
    Width = 195
    Height = 20
    Caption = 'Insira a 1'#186' Nota do 1'#186' Aluno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnOk: TButton
    Left = 48
    Top = 96
    Width = 329
    Height = 73
    Caption = 'Validar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnOkClick
  end
  object edt1: TEdit
    Left = 48
    Top = 64
    Width = 329
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 176
    Width = 329
    Height = 185
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
    Left = 48
    Top = 368
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
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 368
  end
  object xpmnfst1: TXPManifest
    Left = 112
    Top = 368
  end
end
