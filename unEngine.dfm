object fmEngine: TfmEngine
  Left = 315
  Top = 136
  Width = 273
  Height = 341
  Caption = 'Engines'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 257
    Height = 262
    Align = alClient
    DataSource = dmData.dsEngine
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Engine'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 257
    Height = 41
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmData.dsEngine
      TabOrder = 0
    end
  end
end
