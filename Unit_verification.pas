unit Unit_verification;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sRadioButton, sGroupBox, ExtCtrls, sPanel, sButton;

type
  TForm_Verification = class(TForm)
    sPanel1: TsPanel;
    sRadioGroup1: TsRadioGroup;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sButton1: TsButton;
    procedure sButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form_Verification: TForm_Verification;

implementation

uses Unit_Client, Unit_Server;

{$R *.dfm}

procedure TForm_Verification.sButton1Click(Sender: TObject);
begin
     if sRadioButton1.Checked = true then
     begin
         Form_Verification.Hide ;
         Form_Client.Show;
     end;
     if sRadioButton2.Checked = true then
     begin
         Form_Verification.Hide ;
         Form_Server.Show;
     end;
     if sRadioButton3.Checked = true then
     begin
         Form_Client.Show;
         Form_Server.Show;
         Form_Verification.Hide ;

     end;
end;

end.
