object dmData: TdmData
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 317
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
    IndexFieldNames = 'Title'
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
end
