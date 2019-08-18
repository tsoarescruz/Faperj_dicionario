object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 326
  Top = 153
  Height = 193
  Width = 247
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 72
  end
  object qrpalavras: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from palavras')
    Left = 32
    Top = 16
  end
  object qrreligiao: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from religiao')
    Left = 104
    Top = 16
  end
end
