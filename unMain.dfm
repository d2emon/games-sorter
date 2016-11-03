object fmMain: TfmMain
  Left = 336
  Top = 68
  Width = 829
  Height = 635
  Caption = #1048#1075#1088#1099
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
    Height = 544
  end
  object pnFilter: TPanel
    Left = 0
    Top = 33
    Width = 185
    Height = 544
    Align = alLeft
    Caption = 'pnFilter'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 121
      Width = 183
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Splitter2: TSplitter
      Left = 1
      Top = 249
      Width = 183
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 252
      Width = 183
      Height = 125
      Align = alTop
      DataSource = dmData.dsFilterGenres
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnExit = DBGrid3Exit
      Columns = <
        item
          Expanded = False
          FieldName = 'Genre'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 124
      Width = 183
      Height = 125
      Align = alTop
      DataSource = dmData.dsFilterPublishers
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnExit = DBGrid3Exit
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
      Height = 120
      Align = alTop
      DataSource = dmData.dsFilterDevelopers
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnExit = DBGrid3Exit
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
    Width = 625
    Height = 544
    Align = alClient
    TabOrder = 1
    object spDetail: TSplitter
      Left = 1
      Top = 263
      Width = 623
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object pnDetail: TPanel
      Left = 1
      Top = 266
      Width = 623
      Height = 277
      Align = alBottom
      Caption = 'pnDetail'
      TabOrder = 0
      object Panel1: TPanel
        Left = 326
        Top = 1
        Width = 296
        Height = 275
        Align = alRight
        Caption = 'Panel1'
        TabOrder = 0
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 249
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
          Height = 145
          DataField = 'Description'
          DataSource = dmData.dsGames
          TabOrder = 5
        end
      end
    end
    object pnList: TPanel
      Left = 1
      Top = 1
      Width = 623
      Height = 262
      Align = alClient
      Caption = 'pnList'
      TabOrder = 1
      object DBGrid4: TDBGrid
        Left = 1
        Top = 1
        Width = 621
        Height = 260
        Align = alClient
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
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PublisherCompany'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DeveloperCompany'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GenreName'
            Width = 128
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
    Width = 813
    Height = 33
    Bands = <>
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
    object Filters1: TMenuItem
      Caption = '&Filters'
      object miFilterDevelopers: TMenuItem
        AutoCheck = True
        Caption = '&Developers'
        OnClick = miFilterDevelopersClick
      end
      object miFilterPublishers: TMenuItem
        AutoCheck = True
        Caption = '&Publishers'
        OnClick = miFilterDevelopersClick
      end
      object miFilterGenres: TMenuItem
        AutoCheck = True
        Caption = '&Genres'
        OnClick = miFilterDevelopersClick
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
