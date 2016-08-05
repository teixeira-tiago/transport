unit UPlanoConta;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  Mask, Windows,
{$ELSE}
  MaskEdit,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet, IBTable, DBCtrls,
  Grids, DBGrids, StdCtrls;

type
  TFPlanoConta = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TPlanoContN1: TIBTable;
    TPlanoContN2: TIBTable;
    TOrcamento: TIBTable;
    dsPlanoContN1: TDataSource;
    dsPlanoContN2: TDataSource;
    dsOrcamento: TDataSource;
    TPlanoContN1CODPCN1: TIntegerField;
    TPlanoContN1DESCPCN1: TIBStringField;
    TPlanoContN1EMPCPN1: TIBStringField;
    TPlanoContN2CODPCN2: TIntegerField;
    TPlanoContN2DESCPCN2: TIBStringField;
    TPlanoContN2EMPCPN2: TIBStringField;
    TPlanoContN2CODPCN1: TIntegerField;
    TPlanoContN1CODIGOPCN1: TIntegerField;
    TPlanoContN2CODIGOPCN2: TIntegerField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label3: TLabel;
    Label4: TLabel;
    TOrcamentoCODORC: TIntegerField;
    TOrcamentoCODPCN1: TIntegerField;
    TOrcamentoCODPCN2: TIntegerField;
    TOrcamentoANOORC: TIntegerField;
    TOrcamentoMESORC: TIntegerField;
    TOrcamentoEMPORC: TIBStringField;
    TOrcamentoVLRPREORC: TIBBCDField;
    TOrcamentoVLRREAORC: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TPlanoContN2AfterInsert(DataSet: TDataSet);
    procedure TOrcamentoAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlanoConta: TFPlanoConta;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFPlanoConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TPlanoContN1.Close;
     TPlanoContN2.Close;
     TOrcamento.Close;
     Destroy;
end;

procedure TFPlanoConta.TPlanoContN2AfterInsert(DataSet: TDataSet);
begin
     TPlanoContN2.Edit;
     TPlanoContN2CODPCN1.Value:=TPlanoContN1CODIGOPCN1.Value;
end;

procedure TFPlanoConta.TOrcamentoAfterInsert(DataSet: TDataSet);
begin
     TOrcamento.Edit;
     TOrcamentoCODPCN1.Value:=TPlanoContN1CODIGOPCN1.Value;
     TOrcamentoCODPCN2.Value:=TPlanoContN2CODIGOPCN2.Value;
end;

procedure TFPlanoConta.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
