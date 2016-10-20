object fmMain: TfmMain
  Left = 336
  Top = 144
  Width = 928
  Height = 500
  Caption = 'fmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object spFilter: TSplitter
    Left = 185
    Top = 33
    Height = 409
  end
  object pnFilter: TPanel
    Left = 0
    Top = 33
    Width = 185
    Height = 409
    Align = alLeft
    Caption = 'pnFilter'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 81
      Width = 183
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Splitter2: TSplitter
      Left = 1
      Top = 161
      Width = 183
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 164
      Width = 183
      Height = 85
      Align = alTop
      DataSource = dmData.dsGenres
      ReadOnly = True
      TabOrder = 0
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
    object DBGrid2: TDBGrid
      Left = 1
      Top = 84
      Width = 183
      Height = 77
      Align = alTop
      DataSource = dmData.dsCompanies
      ReadOnly = True
      TabOrder = 1
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
    object DBGrid3: TDBGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 80
      Align = alTop
      DataSource = dmData.dsCompanies
      ReadOnly = True
      TabOrder = 2
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
  end
  object pnMain: TPanel
    Left = 188
    Top = 33
    Width = 428
    Height = 409
    Align = alClient
    TabOrder = 1
    object spDetail: TSplitter
      Left = 1
      Top = 293
      Width = 426
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object pnDetail: TPanel
      Left = 1
      Top = 296
      Width = 426
      Height = 112
      Align = alBottom
      Caption = 'pnDetail'
      TabOrder = 0
    end
    object pnList: TPanel
      Left = 1
      Top = 1
      Width = 426
      Height = 292
      Align = alClient
      Caption = 'pnList'
      TabOrder = 1
      object DBGrid4: TDBGrid
        Left = 1
        Top = 1
        Width = 424
        Height = 272
        Align = alTop
        DataSource = dmData.dsGames
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Title'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Publisher'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Developer'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Genre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Release'
            Visible = True
          end>
      end
    end
  end
  object cbTools: TCoolBar
    Left = 0
    Top = 0
    Width = 912
    Height = 33
    Bands = <>
  end
  object Panel1: TPanel
    Left = 616
    Top = 33
    Width = 296
    Height = 409
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 383
      Width = 294
      Height = 25
      DataSource = dmData.dsGames
      Align = alBottom
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 8
      Width = 145
      Height = 21
      DataField = 'Title'
      DataSource = dmData.dsGames
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 144
      Top = 32
      Width = 145
      Height = 21
      DataField = 'Developer'
      DataSource = dmData.dsGames
      KeyField = 'Id'
      ListField = 'Company'
      ListSource = dmData.dsCompanies
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 144
      Top = 56
      Width = 145
      Height = 21
      DataField = 'Publisher'
      DataSource = dmData.dsGames
      KeyField = 'Id'
      ListField = 'Company'
      ListSource = dmData.dsCompanies
      TabOrder = 3
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 144
      Top = 80
      Width = 145
      Height = 21
      DataField = 'Genre'
      DataSource = dmData.dsGames
      KeyField = 'Id'
      ListField = 'Genre'
      ListSource = dmData.dsGenres
      TabOrder = 4
    end
    object DBRichEdit1: TDBRichEdit
      Left = 8
      Top = 104
      Width = 281
      Height = 273
      DataField = 'Description'
      DataSource = dmData.dsGames
      TabOrder = 5
    end
  end
  object mmMain: TMainMenu
    Left = 8
    Top = 8
    object File1: TMenuItem
      Caption = '&File'
      object Options1: TMenuItem
        Action = aOptions
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = aFileExit
      end
    end
    object Lookups1: TMenuItem
      Caption = '&Lookups'
      object Companies1: TMenuItem
        Action = aCompanies
      end
      object Genres1: TMenuItem
        Action = aGenres
      end
    end
  end
  object alActions: TActionList
    Left = 40
    Top = 8
    object aOptions: TAction
      Category = 'File'
      Caption = '&Options'
    end
    object aFileExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object aCompanies: TAction
      Category = 'Lookups'
      Caption = 'Companies'
      OnExecute = aCompaniesExecute
    end
    object aGenres: TAction
      Category = 'Lookups'
      Caption = 'Genres'
      OnExecute = aGenresExecute
    end
  end
end
