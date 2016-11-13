object fmTheme: TfmTheme
  Left = 192
  Top = 124
  Width = 274
  Height = 341
  Caption = 'Themes'
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
    Width = 258
    Height = 262
    Align = alClient
    DataSource = dmData.dsTheme
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Theme'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 258
    Height = 41
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmData.dsTheme
      TabOrder = 0
    end
  end
end
