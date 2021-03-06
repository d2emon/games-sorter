object dmData: TdmData
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 434
  Width = 366
  object tbGenres: TTable
    Active = True
    DatabaseName = 'catalog'
    IndexFieldNames = 'Genre'
    TableName = 'genres.db'
    Left = 24
    Top = 8
  end
  object tbCompanies: TTable
    Active = True
    DatabaseName = 'catalog'
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Company'
        DataType = ftString
        Size = 128
      end>
    IndexDefs = <
      item
        Fields = 'Id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CompanyIndex'
        Fields = 'Company'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'Company'
    StoreDefs = True
    TableName = 'companies.db'
    Left = 24
    Top = 56
    object tbCompaniesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbCompaniesCompany: TStringField
      FieldName = 'Company'
      Size = 128
    end
  end
  object tbGames: TTable
    Active = True
    DatabaseName = 'catalog'
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Publisher'
        DataType = ftInteger
      end
      item
        Name = 'Developer'
        DataType = ftInteger
      end
      item
        Name = 'Genre'
        DataType = ftInteger
      end
      item
        Name = 'Release'
        DataType = ftDate
      end
      item
        Name = 'Description'
        DataType = ftMemo
        Size = 128
      end>
    IndexDefs = <
      item
        Fields = 'Id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'GameIndex'
        Fields = 'Title'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'GameIndex'
    StoreDefs = True
    TableName = 'games.db'
    Left = 24
    Top = 104
    object tbGamesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbGamesTitle: TStringField
      FieldName = 'Title'
      Size = 255
    end
    object tbGamesPublisher: TIntegerField
      FieldName = 'Publisher'
    end
    object tbGamesDeveloper: TIntegerField
      FieldName = 'Developer'
    end
    object tbGamesGenre: TIntegerField
      FieldName = 'Genre'
    end
    object tbGamesRelease: TDateField
      FieldName = 'Release'
    end
    object tbGamesDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
      Size = 128
    end
    object tbGamesGenreName: TStringField
      FieldKind = fkLookup
      FieldName = 'GenreName'
      LookupDataSet = tbGenres
      LookupKeyFields = 'Id'
      LookupResultField = 'Genre'
      KeyFields = 'Genre'
      Size = 128
      Lookup = True
    end
    object tbGamesPublisherCompany: TStringField
      FieldKind = fkLookup
      FieldName = 'PublisherCompany'
      LookupDataSet = tbCompanies
      LookupKeyFields = 'Id'
      LookupResultField = 'Company'
      KeyFields = 'Publisher'
      Size = 128
      Lookup = True
    end
    object tbGamesDeveloperCompany: TStringField
      FieldKind = fkLookup
      FieldName = 'DeveloperCompany'
      LookupDataSet = tbCompanies
      LookupKeyFields = 'Id'
      LookupResultField = 'Company'
      KeyFields = 'Developer'
      Size = 128
      Lookup = True
    end
  end
  object dsGenres: TDataSource
    DataSet = tbGenres
    Left = 96
    Top = 8
  end
  object dsCompanies: TDataSource
    DataSet = tbCompanies
    Left = 96
    Top = 56
  end
  object dsGames: TDataSource
    DataSet = tbGames
    Left = 96
    Top = 104
  end
  object tbFilterDevelopers: TTable
    Active = True
    DatabaseName = 'catalog'
    IndexFieldNames = 'Company'
    TableName = 'companies.db'
    Left = 176
    Top = 8
    object tbFilterDevelopersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbFilterDevelopersCompany: TStringField
      FieldName = 'Company'
      Size = 128
    end
  end
  object tbFilterPublishers: TTable
    Active = True
    DatabaseName = 'catalog'
    IndexFieldNames = 'Company'
    TableName = 'companies.db'
    Left = 176
    Top = 56
    object tbFilterPublishersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbFilterPublishersCompany: TStringField
      FieldName = 'Company'
      Size = 128
    end
  end
  object tbFilterGenres: TTable
    Active = True
    DatabaseName = 'catalog'
    IndexFieldNames = 'Genre'
    TableName = 'genres.db'
    Left = 176
    Top = 104
    object tbFilterGenresId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbFilterGenresGenre: TStringField
      FieldName = 'Genre'
      Size = 128
    end
  end
  object dsFilterDevelopers: TDataSource
    DataSet = tbFilterDevelopers
    Left = 264
    Top = 8
  end
  object dsFilterPublishers: TDataSource
    DataSet = tbFilterPublishers
    Left = 264
    Top = 56
  end
  object dsFilterGenres: TDataSource
    DataSet = tbFilterGenres
    Left = 264
    Top = 104
  end
  object tbAtmosphere: TTable
    DatabaseName = 'catalog'
    TableName = 'atmosphere.db'
    Left = 24
    Top = 152
  end
  object tbEngine: TTable
    Active = True
    DatabaseName = 'catalog'
    TableName = 'engine.db'
    Left = 24
    Top = 200
    object tbEngineId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbEngineEngine: TStringField
      FieldName = 'Engine'
      Size = 64
    end
  end
  object tbPlot: TTable
    DatabaseName = 'catalog'
    TableName = 'plot.db'
    Left = 24
    Top = 248
  end
  object tbTheme: TTable
    Active = True
    DatabaseName = 'catalog'
    TableName = 'theme.db'
    Left = 24
    Top = 296
    object tbThemeId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbThemeTheme: TStringField
      FieldName = 'Theme'
      Size = 64
    end
  end
  object tbView: TTable
    DatabaseName = 'catalog'
    TableName = 'view.db'
    Left = 24
    Top = 344
  end
  object dsEngine: TDataSource
    DataSet = tbEngine
    Left = 96
    Top = 200
  end
  object dsTheme: TDataSource
    DataSet = tbTheme
    Left = 104
    Top = 296
  end
end
