object fmCompanies: TfmCompanies
  Left = 527
  Top = 179
  Width = 296
  Height = 345
  Caption = 'Companies'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgdCompanies: TDBGrid
    Left = 0
    Top = 0
    Width = 280
    Height = 266
    Align = alClient
    DataSource = dmData.dsCompanies
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Company'
        Visible = True
      end>
  end
  object pnNav: TPanel
    Left = 0
    Top = 266
    Width = 280
    Height = 41
    Align = alBottom
    TabOrder = 1
    object dbnvNav: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmData.dsCompanies
      TabOrder = 0
    end
  end
end
