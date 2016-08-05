unit ULanEspPag;

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
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, IBTable, IBCustomDataSet, DB;

type

  { TFLanEspPag }

  TFLanEspPag = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
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
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
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
    Label14: TLabel;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    TFornecedores: TIBTable;
    TPlanoContN1: TIBTable;
    TPlanoContN2: TIBTable;
    TLancamento: TIBTable;
    dsFornecedores: TDataSource;
    dsPlanoContN1: TDataSource;
    dsPlanoContN2: TDataSource;
    dsLancamento: TDataSource;
    TFornecedoresCODFORN: TIntegerField;
    TFornecedoresCODCID: TIntegerField;
    TFornecedoresCODEST: TIntegerField;
    TFornecedoresDOCFORN: TIBStringField;
    TFornecedoresNOMEFORN: TIBStringField;
    TFornecedoresRAZAOSFORN: TIBStringField;
    TFornecedoresENDERECOFORN: TIBStringField;
    TFornecedoresBAIRROFORN: TIBStringField;
    TFornecedoresCEPFORN: TIBStringField;
    TFornecedoresFONEFORN: TIBStringField;
    TFornecedoresCELULARFORN: TIBStringField;
    TFornecedoresEMAILFORN: TIBStringField;
    TFornecedoresSITEFORN: TIBStringField;
    TFornecedoresTIPOFORN: TIBStringField;
    TPlanoContN1CODPCN1: TIntegerField;
    TPlanoContN1DESCPCN1: TIBStringField;
    TPlanoContN1EMPCPN1: TIBStringField;
    TPlanoContN2CODPCN2: TIntegerField;
    TPlanoContN2DESCPCN2: TIBStringField;
    TPlanoContN2EMPCPN2: TIBStringField;
    TPlanoContN2CODPCN1: TIntegerField;
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
    DBComboBox1: TDBComboBox;
    TLancamentoMOVLANC: TIBStringField;
    TLancamentoAUXLANC: TIBStringField;
    TPlanoContN1CODIGOPCN1: TIntegerField;
    TPlanoContN2CODIGOPCN2: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLanEspPag: TFLanEspPag;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFLanEspPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TFornecedores.Close;
     TPlanoContN1.Close;
     TPlanoContN2.Close;
     TLancamento.Close;
     Destroy;
end;

procedure TFLanEspPag.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TFornecedores.Active:=false;
     TFornecedores.Active:=true;
end;

procedure TFLanEspPag.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFLanEspPag.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TPlanoContN1.Active:=false;
     TPlanoContN1.Active:=true;
end;

procedure TFLanEspPag.DBLookupComboBox3DropDown(Sender: TObject);
begin
     TPlanoContN2.Active:=false;
     TPlanoContN2.Active:=true;
end;

end.
