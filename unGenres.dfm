object fmGenres: TfmGenres
  Left = 897
  Top = 165
  Width = 262
  Height = 341
  Caption = 'Genres'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnNav: TPanel
    Left = 0
    Top = 262
    Width = 246
    Height = 41
    Align = alBottom
    TabOrder = 0
    object dbnvNav: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmData.dsGenres
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 246
    Height = 262
    Align = alClient
    DataSource = dmData.dsGenres
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Genre'
        Visible = True
      end>
  end
end
