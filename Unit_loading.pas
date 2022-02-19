unit Unit_loading;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sPanel, acSlider, sLabel, ComCtrls,
  acProgressBar, IBDatabase, DB, IBCustomDataSet, IBTable, IBQuery,
  GIFImage, sSkinManager, sSkinProvider, sComboBoxes, acShellCtrls,
  sTooledit, Mask, sMaskEdit, sCustomComboEdit, sGroupBox, ADODB, Buttons,
  sSpeedButton, sButton, sBitBtn;

type
  TLoading_form = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    sProgressBar1: TsProgressBar;
    sLabel1: TsLabel;
    Image1: TImage;
    Timer1: TTimer;
    sSkinProvider1: TsSkinProvider;
    sSkinManager1: TsSkinManager;
    sPanel2: TsPanel;
    sGroupBox1: TsGroupBox;
    sFilenameEdit1: TsFilenameEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    sSlider1: TsSlider;
    sSpeedButton1: TsSpeedButton;
    sPanel1: TsPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    sSpeedButton2: TsSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sSlider1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Loading_form: TLoading_form;

implementation

uses Unit_principale, Unit_Server, Unit_Client, Unit_principal;

{$R *.dfm}

procedure TLoading_form.Button1Click(Sender: TObject);
var
    psd : Boolean ;
    Mt_pass : Boolean ;
    Query_resultat: integer;
begin
     psd := ADOTable1.Locate('Pseudo' , Edit1.Text , []);
     Mt_pass := ADOTable1.Locate('Mot_pass' , Edit2.Text , []) ;

     if ( psd = true) and ( Mt_pass = true) then
     begin
         Loading_form.Height := 477 ;
         sPanel1.Visible := false ;
         Image1.Visible := true ;

         sLabel1.Visible := true ;
         sProgressBar1.Visible := true ;

         //------------ Verification si Admin ou Non -------------//
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Administrateur From Utilisateurs WHERE Pseudo = :param1');
         ADOQuery1.Parameters.ParamByName('param1').value := Edit1.Text ;

         ADOQuery1.Open;

         Query_resultat := ADOQuery1.FieldByName('Administrateur').AsInteger ;


         if Query_resultat <> 1 then
         begin
              Form_principale.sPanel1.Enabled := false ;
              Form_principale.sPanel3.Enabled := false ;
         end;

         ADOQuery1.SQL.Free ;

         Form_Server.Label7.Caption := Edit1.Text ;
         Form_Client.Label5.Caption := Edit1.Text ;

         //------ lancer progressbar ---------//
         Timer1.Enabled := true ;

          

     end
       else
          ShowMessage('Pseudo ou Mot de pass Incorrect !!');



end;

procedure TLoading_form.Timer1Timer(Sender: TObject);
begin
      sProgressBar1.Position :=  sProgressBar1.Position+1;

      if sProgressBar1.Position = 100 then
      begin
          Timer1.Enabled := false ;
          Form_principale.Show ;
          Loading_form.Hide;
      end;

end;

procedure TLoading_form.sSlider1Click(Sender: TObject);
begin
   if sSlider1.SliderOn = true then
   begin
      if sFilenameEdit1.FileName <>'' then
      begin
                              //*--------- ADOconnection ---------*//
            try
                ADOConnection1.Mode := cmReadWrite ;
                ADOConnection1.ConnectionString := 'provider=Microsoft.Jet.OLEDB.4.0;Data Source='+sFilenameEdit1.FileName ;

                ADOConnection1.Connected := true ;

                ShowMessage('Connexion reussie ..');
                sSlider1.Color := clAqua ;

            except
                ShowMessage('Il ya un error !!');
            end;

                            //*--------- ADOtable ---------*//

            ADOTable1.TableName := 'Utilisateurs' ;
            ADOTable1.open ;

    end //end of if sFilenameEdit1.FileName <>''
      else
        ShowMessage('le champ de chemin es vide !!');

   end// End (of if sSlider1.SliderOn)
    else //Si sSlider = off
       begin

            ADOConnection1.Connected := false;
            sSlider1.Color := clBtnFace ;
       end;

end;

procedure TLoading_form.sSpeedButton1Click(Sender: TObject);
begin
     sPanel2.Visible := false ;
     sPanel1.Visible := true ;
end;

procedure TLoading_form.sSpeedButton2Click(Sender: TObject);
begin
    sPanel1.Visible := false ;
    sPanel2.Visible := true ;
end;

end.
