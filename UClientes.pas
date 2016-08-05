unit UClientes;

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
  Dialogs, ComCtrls, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DB, Buttons;

type
  TFClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DataSource2: TDataSource;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DataSource3: TDataSource;
    Label11: TLabel;
    TClientes: TSQLQuery;
    TCidade: TSQLQuery;
    TEstado: TSQLQuery;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TCidadeNOMECID: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    TClientesCODCLI: TIntegerField;
    TClientesCODCID: TIntegerField;
    TClientesCODEST: TIntegerField;
    TClientesDOCCLI: TStringField;
    TClientesNOMECLI: TStringField;
    TClientesENDERECOCLI: TStringField;
    TClientesBAIRROCLI: TStringField;
    TClientesCEPCLI: TStringField;
    TClientesFONECLI: TStringField;
    TClientesCELULARCLI: TStringField;
    TClientesEMAILCLI: TStringField;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    TEstadoCODEST: TIntegerField;
    TEstadoNOMEEST: TStringField;
    TEstadoSIGLAEST: TStringField;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses Uprincipal, Uteis;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFClientes.DBEdit1Exit(Sender: TObject);
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

procedure TFClientes.DBEdit1Click(Sender: TObject);
begin
     Case RadioGroup2.ItemIndex of
      0:TClientesDOCCLI.EditMask :='!99.999.999/9999-99;1;-';
      1:TClientesDOCCLI.EditMask :='!999.999.999-99;1;-';
     end;
end;

procedure TFClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TClientes.Close;
     TCidade.Close;
     TEstado.Close;
     Destroy;
end;

procedure TFClientes.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit2.SetFocus;
end;

procedure TFClientes.Edit1Change(Sender: TObject);
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
        DataSource1.DataSet.Locate('NOMECLI',Edit1.Text,[lopartialkey,locaseinsensitive]);
     if Key in ['0'..'9'] then
        DataSource1.DataSet.Locate('DOCCLI',Edit1.Text,[lopartialkey,locaseinsensitive]);
     end;
end;

procedure TFClientes.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFClientes.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFClientes.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TEstado.Active:=false;
     TEstado.Active:=true;
end;

procedure TFClientes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
