unit ULanEspRecb;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  Windows, Mask,
{$ELSE}
  MaskEdit,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, DB, IBCustomDataSet, IBTable;

type

  { TFLanEspRecb }

  TFLanEspRecb = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    TLancamento: TIBTable;
    THistorico: TIBTable;
    TCliente: TIBTable;
    TFornecedor: TIBTable;
    dsLancamento: TDataSource;
    dsHistorico: TDataSource;
    dsCliente: TDataSource;
    dsFornecedor: TDataSource;
    TLancamentoCODLANC: TIntegerField;
    TLancamentoCODPCN1: TIntegerField;
    TLancamentoCODPCN2: TIntegerField;
    TLancamentoCODFORN: TIntegerField;
    TLancamentoNFLANC: TIntegerField;
    TLancamentoEMISLANC: TDateField;
    TLancamentoVENCLANC: TDateField;
    TLancamentoVLLANC: TIBBCDField;
    TLancamentoPARCLANC: TIntegerField;
    TLancamentoDESDLANC: TIntegerField;
    TLancamentoPRELANC: TIBStringField;
    TLancamentoDESCLANC: TIBStringField;
    TLancamentoOBSLANC: TMemoField;
    TLancamentoMOVLANC: TIBStringField;
    TLancamentoAUXLANC: TIBStringField;
    THistoricoCODHIST: TIntegerField;
    THistoricoCODIGOHIST: TIntegerField;
    THistoricoSUBCODIGOHIST: TIntegerField;
    THistoricoINCHIST: TIntegerField;
    THistoricoDESCHIST: TIBStringField;
    THistoricoTIPOHIST: TIBStringField;
    THistoricoEMPRESAHIST: TIntegerField;
    TClienteCODCLI: TIntegerField;
    TClienteCODCID: TIntegerField;
    TClienteCODEST: TIntegerField;
    TClienteDOCCLI: TIBStringField;
    TClienteNOMECLI: TIBStringField;
    TClienteENDERECOCLI: TIBStringField;
    TClienteBAIRROCLI: TIBStringField;
    TClienteCEPCLI: TIBStringField;
    TClienteFONECLI: TIBStringField;
    TClienteCELULARCLI: TIBStringField;
    TClienteEMAILCLI: TIBStringField;
    TFornecedorCODFORN: TIntegerField;
    TFornecedorCODCID: TIntegerField;
    TFornecedorCODEST: TIntegerField;
    TFornecedorDOCFORN: TIBStringField;
    TFornecedorNOMEFORN: TIBStringField;
    TFornecedorRAZAOSFORN: TIBStringField;
    TFornecedorENDERECOFORN: TIBStringField;
    TFornecedorBAIRROFORN: TIBStringField;
    TFornecedorCEPFORN: TIBStringField;
    TFornecedorFONEFORN: TIBStringField;
    TFornecedorCELULARFORN: TIBStringField;
    TFornecedorEMAILFORN: TIBStringField;
    TFornecedorSITEFORN: TIBStringField;
    TFornecedorTIPOFORN: TIBStringField;
    TLancamentoDOCLANC: TIntegerField;
    TLancamentoCODHIST: TIntegerField;
    TLancamentoTIPOLANC: TIBStringField;
    TLancamentoCODCLI: TIntegerField;
    TLancamentoDATADISPLANC: TDateField;
    TLancamentoDATANFLANC: TDateField;
    TLancamentoTIPOPGLANC: TIBStringField;
    TLancamentoPRORGLANC: TDateField;
    TLancamentoCOMISLANC: TIBStringField;
    TLancamentoLOCALANC: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLanEspRecb: TFLanEspRecb;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFLanEspRecb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TLancamento.Close;
     TCliente.Close;
     TFornecedor.Close;
     THistorico.Close;
     Destroy;
end;

procedure TFLanEspRecb.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFLanEspRecb.DBLookupComboBox1DropDown(Sender: TObject);
begin
     THistorico.Active:=false;
     THistorico.Active:=true;
end;

procedure TFLanEspRecb.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TCliente.Active:=false;
     TCliente.Active:=true;
end;

procedure TFLanEspRecb.DBLookupComboBox4DropDown(Sender: TObject);
begin
     TFornecedor.Active:=false;
     TFornecedor.Active:=true;
end;

end.
