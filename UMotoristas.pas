unit UMotoristas;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBCustomDataSet, IBTable, Mask, Windows,
{$ELSE}
  sqldb, MaskEdit, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DB, Buttons;

type
  TFMotoristas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    TMotoristas: TSQLQuery;
    TCidade: TSQLQuery;
    TEstado: TSQLQuery;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TCidadeNOMECID: TStringField;
    TMotoristasCODMOT: TIntegerField;
    TMotoristasCODCID: TIntegerField;
    TMotoristasCODEST: TIntegerField;
    TMotoristasDOCMOT: TStringField;
    TMotoristasNOMEMOT: TStringField;
    TMotoristasEDERECOMOT: TStringField;
    TMotoristasBAIRROMOT: TStringField;
    TMotoristasCEPMOT: TStringField;
    TMotoristasFONEMOT: TStringField;
    TMotoristasCELULARMOT: TStringField;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMotoristas: TFMotoristas;

implementation

uses Uprincipal, Uteis;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFMotoristas.DBEdit1Exit(Sender: TObject);
var
   resposta:byte;
begin
     Case RadioGroup2.ItemIndex of
      0:if not(Uteis.CGCValido(DBEdit1.Text)) then
        begin
             resposta:=Application.MessageBox('O número do CNPJ fornecido não é valido. Por favor digite um número de CNPJ valido'+
                     #13+'Caso não disponha de um número valido no momento este número pode ser alterado no futuro.'+#13+#13+'Digitar número valido agora?','Atenção',52);
             if resposta=6 then DBEdit1.SetFocus;
        end;
      1:if not(Uteis.CPFValido(DBEdit1.Text)) then
        begin
             resposta:=Application.MessageBox('O número do CPF fornecido não é valido. Por favor digite um número de CPF valido'+
                     #13+'Caso não disponha de um número valido no momento este número pode ser alterado no futuro.'+#13+#13+'Digitar número valido agora?','Atenção',52);
             if resposta=6 then DBEdit1.SetFocus;
        end;
     end;
end;

procedure TFMotoristas.DBEdit1Click(Sender: TObject);
begin
     Case RadioGroup2.ItemIndex of
      0:TMotoristasDOCMOT.EditMask :='!99.999.999/9999-99;1;-';
      1:TMotoristasDOCMOT.EditMask :='!999.999.999-99;1;-';
     end;
end;

procedure TFMotoristas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TMotoristas.Close;
     TCidade.Close;
     TEstado.Close;
     Destroy;
end;

procedure TFMotoristas.Edit1Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit1.Text;
     for i:=1 to Length(aux) do
     begin
        Key:=aux[i];
     if Key in ['a'..'z','A'..'Z'] then
        DataSource1.DataSet.Locate('NOMEMOT',Edit1.Text,[lopartialkey,locaseinsensitive]);
     if Key in ['0'..'9'] then
        DataSource1.DataSet.Locate('DOCMOT',Edit1.Text,[lopartialkey,locaseinsensitive]);
     end;
end;

procedure TFMotoristas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit1.SetFocus;
end;

procedure TFMotoristas.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFMotoristas.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFMotoristas.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TEstado.Active:=false;
     TEstado.Active:=true;
end;

procedure TFMotoristas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
