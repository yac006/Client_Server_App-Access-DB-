object Utilisateurs: TUtilisateurs
  Left = 235
  Top = 121
  Width = 1054
  Height = 552
  Caption = 'Utilisateurs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 15
    Top = 8
    Width = 1009
    Height = 209
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object Label1: TLabel
      Left = 192
      Top = 104
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object DBGrid1: TDBGrid
      Left = 17
      Top = 23
      Width = 971
      Height = 168
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRENOM'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_NAIS'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSEUDO'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOT_PASS'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMAGE'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADMINISTRATEUR'
          Width = 103
          Visible = True
        end>
    end
  end
  object sPanel1: TsPanel
    Left = 15
    Top = 285
    Width = 1010
    Height = 164
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sGroupBox2: TsGroupBox
      Left = 21
      Top = 18
      Width = 182
      Height = 51
      Caption = 'Id'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit1: TDBEdit
        Left = 11
        Top = 19
        Width = 158
        Height = 21
        DataField = 'ID'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 217
      Top = 20
      Width = 182
      Height = 51
      Caption = 'Nom '
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit2: TDBEdit
        Left = 11
        Top = 19
        Width = 158
        Height = 21
        DataField = 'NOM'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox4: TsGroupBox
      Left = 413
      Top = 20
      Width = 182
      Height = 51
      Caption = 'Pr'#233'nom '
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit3: TDBEdit
        Left = 12
        Top = 19
        Width = 158
        Height = 21
        DataField = 'PRENOM'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox5: TsGroupBox
      Left = 611
      Top = 20
      Width = 182
      Height = 51
      Caption = 'Date de naissance '
      TabOrder = 3
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit4: TDBEdit
        Left = 11
        Top = 19
        Width = 158
        Height = 21
        DataField = 'DATE_NAIS'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox6: TsGroupBox
      Left = 218
      Top = 80
      Width = 182
      Height = 51
      Caption = 'Pseudo '
      TabOrder = 4
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit7: TDBEdit
        Left = 10
        Top = 18
        Width = 158
        Height = 21
        DataField = 'PSEUDO'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox7: TsGroupBox
      Left = 415
      Top = 81
      Width = 182
      Height = 51
      Caption = 'Mot de pass '
      TabOrder = 5
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit8: TDBEdit
        Left = 11
        Top = 18
        Width = 158
        Height = 21
        DataField = 'MOT_PASS'
        DataSource = DataSource1
        PasswordChar = '*'
        TabOrder = 0
      end
    end
    object sGroupBox8: TsGroupBox
      Left = 805
      Top = 81
      Width = 182
      Height = 51
      Caption = 'Image '
      TabOrder = 6
      SkinData.SkinSection = 'GROUPBOX'
      object SpeedButton2: TSpeedButton
        Left = 150
        Top = 18
        Width = 23
        Height = 19
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object DBImage1: TDBImage
        Left = 12
        Top = 19
        Width = 134
        Height = 21
        DataField = 'IMAGE'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox9: TsGroupBox
      Left = 21
      Top = 79
      Width = 182
      Height = 51
      Caption = 'Email '
      TabOrder = 7
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit6: TDBEdit
        Left = 12
        Top = 19
        Width = 158
        Height = 21
        DataField = 'EMAIL'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox10: TsGroupBox
      Left = 805
      Top = 20
      Width = 182
      Height = 51
      Caption = 'Address '
      TabOrder = 8
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit5: TDBEdit
        Left = 11
        Top = 17
        Width = 158
        Height = 21
        DataField = 'ADDRESS'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object sGroupBox11: TsGroupBox
      Left = 611
      Top = 80
      Width = 182
      Height = 51
      Caption = 'Admin  '
      TabOrder = 9
      SkinData.SkinSection = 'GROUPBOX'
      object DBEdit9: TDBEdit
        Left = 11
        Top = 18
        Width = 158
        Height = 21
        DataField = 'ADMINISTRATEUR'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 494
    Width = 1038
    Height = 19
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 1
      Width = 11
      Height = 18
      Caption = '< '
      Flat = True
      OnClick = SpeedButton1Click
    end
  end
  object Panel1: TPanel
    Left = 15
    Top = 230
    Width = 1010
    Height = 37
    TabOrder = 3
    object sBitBtn5: TsBitBtn
      Left = 382
      Top = 8
      Width = 76
      Height = 20
      Caption = 'Actualiser'
      TabOrder = 0
      OnClick = sBitBtn5Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn4: TsBitBtn
      Left = 295
      Top = 9
      Width = 76
      Height = 20
      Caption = 'Supprimer'
      TabOrder = 1
      OnClick = sBitBtn4Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn3: TsBitBtn
      Left = 209
      Top = 9
      Width = 76
      Height = 20
      Caption = 'Modifier'
      TabOrder = 2
      OnClick = sBitBtn3Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn2: TsBitBtn
      Left = 122
      Top = 9
      Width = 76
      Height = 20
      Caption = 'Enregistrer'
      TabOrder = 3
      OnClick = sBitBtn2Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn1: TsBitBtn
      Left = 18
      Top = 9
      Width = 76
      Height = 20
      Caption = 'Ajouter'
      TabOrder = 4
      OnClick = sBitBtn1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn6: TsBitBtn
      Left = 472
      Top = 8
      Width = 76
      Height = 20
      Caption = 'Suivant'
      TabOrder = 5
      OnClick = sBitBtn6Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn7: TsBitBtn
      Left = 559
      Top = 8
      Width = 76
      Height = 20
      Caption = 'Pr'#233'cedent'
      TabOrder = 6
      OnClick = sBitBtn7Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 240
    Top = 456
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 975
    Top = 421
  end
  object ADOTable1: TADOTable
    Connection = Loading_form.ADOConnection1
    Left = 144
    Top = 456
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 184
    Top = 456
  end
end
