unit UOServico;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBQuery, IBTable, IBCustomDataSet, IBUpdateSQL, Mask, Windows,
{$ELSE}
  sqldb, MaskEdit, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Grids, DBGrids,
  DBCtrls, StdCtrls, Buttons, ComCtrls;

type
  TFOServico = class(TForm)
    Panel1: TPanel;
    TVeiculos: TSQLQuery;
    TTServico: TSQLQuery;
    dsOServico: TDataSource;
    dsVeiculos: TDataSource;
    dsTServico: TDataSource;
    TVeiculosCODVEIC: TIntegerField;
    TVeiculosCHASSI: TStringField;
    TVeiculosPLACA: TStringField;
    TVeiculosMARCAVEIC: TStringField;
    TVeiculosMODELOVEIC: TStringField;
    TVeiculosNOMEVEIC: TStringField;
    TVeiculosANOVEIC: TStringField;
    TVeiculosPROCEDVEIC: TStringField;
    TVeiculosTERCEIRIZADO: TSmallintField;
    TTServicoCODDESP: TIntegerField;
    TTServicoTIPODESP: TStringField;
    TTServicoDESCDESP: TMemoField;
    TTServicoVALRSDESP: TIntegerField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TOServico: TSQLQuery;
    QTotal: TSQLQuery;
    dsQTotal: TDataSource;
    QControle: TSQLQuery;
    dsQControle: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    TOServicoCODOS: TIntegerField;
    TOServicoCODVEIC: TIntegerField;
    TOServicoKM: TIntegerField;
    TOSerRe: TSQLQuery;
    dsOSerRe: TDataSource;
    dsQInsDel: TDataSource;
    QInsDel: TSQLQuery;
    DBNavigator1: TDBNavigator;
    BitBtn7: TBitBtn;
    TOServicoDATA: TDateField;
    DBNavigator2: TDBNavigator;
    TOServicoCODOF: TIntegerField;
    DBLookupComboBox5: TDBLookupComboBox;
    Label8: TLabel;
    TOficina: TSQLQuery;
    dsOficina: TDataSource;
    TOficinaCODOF: TIntegerField;
    TOficinaCODCID: TIntegerField;
    TOficinaCODEST: TIntegerField;
    TOficinaNOMEOF: TStringField;
    TOficinaRAZAOSOF: TStringField;
    TOficinaENDERECOOF: TStringField;
    TOficinaBAIRROOF: TStringField;
    TOficinaCEPOF: TStringField;
    TOficinaFONEOF: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBNavigator3: TDBNavigator;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label12: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBNavigator4: TDBNavigator;
    DBGrid2: TDBGrid;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DBNavigator5: TDBNavigator;
    DBGrid3: TDBGrid;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    DBNavigator6: TDBNavigator;
    DBGrid4: TDBGrid;
    DBEdit15: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    Label28: TLabel;
    DBEdit16: TDBEdit;
    Label29: TLabel;
    DBEdit17: TDBEdit;
    Label30: TLabel;
    DBNavigator7: TDBNavigator;
    DBGrid5: TDBGrid;
    DBEdit18: TDBEdit;
    Label31: TLabel;
    TOServicoNUMEROOS: TFloatField;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit19: TDBEdit;
    Label3: TLabel;
    Label32: TLabel;
    DBComboBox1: TDBComboBox;
    TOSerReCODOSRE: TIntegerField;
    TOSerReCODDESP: TIntegerField;
    TOSerReCODOS: TIntegerField;
    TOSerReNOMEPEC: TStringField;
    TOSerReVLRUNI: TFloatField;
    TOSerReQUANTP: TFloatField;
    TOSerReUNIDADE: TStringField;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBComboBox2: TDBComboBox;
    Label33: TLabel;
    DBEdit22: TDBEdit;
    Label34: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBComboBox3: TDBComboBox;
    Label35: TLabel;
    DBEdit24: TDBEdit;
    Label36: TLabel;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBComboBox4: TDBComboBox;
    Label37: TLabel;
    DBEdit26: TDBEdit;
    Label38: TLabel;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    Label25: TLabel;
    DBComboBox5: TDBComboBox;
    Label39: TLabel;
    DBEdit28: TDBEdit;
    Label40: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Label41: TLabel;
    DBEdit20: TDBEdit;
    TOSerRePARTECAM: TStringField;
    QLista: TSQLQuery;
    dsQLista: TDataSource;
    QListaPARTECAM: TStringField;
    QListaNOMEPEC: TStringField;
    QListaTOTAL: TFloatField;
    QTotalTOTAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure TOServicoAfterPost(DataSet: TDataSet);
    procedure TOServicoAfterInsert(DataSet: TDataSet);
    procedure TOServicoBeforeInsert(DataSet: TDataSet);
    procedure TOServicoBeforeDelete(DataSet: TDataSet);
    procedure TOSerReAfterPost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox5DropDown(Sender: TObject);
    procedure TOSerReBeforePost(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOServico: TFOServico;
  ProximaOS, Parte:string;
  
implementation

uses Uprincipal, Uteis, UVeiculos, UDespesas;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFOServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TOServico.Close;
     TVeiculos.Close;
     TTServico.Close;
     TOSerRe.Close;
     TOficina.Close;
     QTotal.Close;
     Destroy;
end;

procedure TFOServico.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     try
     if QLista.Active then QLista.Close;
        QLista.SQL.Clear;
     QLista.SQL.Add('Select Ordems_Re.PARTECAM, Ordems_Re.NOMEPEC, (Ordems_Re.VLRUNI*Ordems_Re.QUANTP) as Total From Ordems, Ordems_Re Where (Ordems.CODOS=Ordems_Re.CODOS) and (Ordems.CODOS='+IntToStr(TOServicoCODOS.Value)+');');
     QLista.Open;
     if QTotal.Active then QTotal.Close;
          QTotal.SQL.Clear;
     QTotal.SQL.Add('Select sum(Ordems_Re.VLRUNI*Ordems_Re.QUANTP) as Total From Ordems, Ordems_Re Where (Ordems.CODOS=Ordems_Re.CODOS) and (Ordems.CODOS='+IntToStr(TOServicoCODOS.Value)+');');
     QTotal.Open;
     if (TOSerReVLRUNI.Value<>null) and (TOSerReQUANTP.Value<>null) then
     begin
          StaticText1.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText2.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText3.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText4.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText5.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
     end
     else begin
               StaticText1.Caption:='0';
               StaticText2.Caption:='0';
               StaticText3.Caption:='0';
               StaticText4.Caption:='0';
               StaticText5.Caption:='0';
          end;
     except
     end;
end;

procedure TFOServico.DBGrid1CellClick(Column: TColumn);
var
   pecas:integer;
begin
     if DBGrid1.Columns[0].Field.Value<>null then
     begin

     { Cria uma variável de controle chamada pecas da posição na tabela
       Pecas do campo selecionado pelo usuário }

     if QControle.Active then QControle.Close;
          QControle.SQL.Clear;
     QControle.SQL.Add('Select Ordems_Re.CODOSRE as codigo From Ordems_Re Where (Ordems_Re.NOMEPEC='+#39+DBGrid1.Columns[1].Field.Value+#39+');');
     QControle.Open;
     pecas:=QControle.FieldValues['codigo'];
     end
     else pecas:=0;

     // Seta a tabela Pecas de acordo com o campo selecionado pelo Cliente
     // Seta a tabela Ordem_Re de acordo com o campo selecionado pelo Cliente

     if DBGrid1.Columns[0].Field.Value='Motor' then
     begin
          PageControl1.ActivePageIndex:=0;
          if pecas<>0 then
            dsOSerRe.DataSet.Locate('CODOSRE',pecas,[]);
     end
     else
     if DBGrid1.Columns[0].Field.Value='Caixa de Marcha' then
     begin
          PageControl1.ActivePageIndex:=1;
          if pecas<>0 then
            dsOSerRe.DataSet.Locate('CODOSRE',pecas,[]);
     end
     else
     if DBGrid1.Columns[0].Field.Value='Diferencial' then
     begin
          PageControl1.ActivePageIndex:=2;
          if pecas<>0 then
            dsOSerRe.DataSet.Locate('CODOSRE',pecas,[]);
     end
     else
     if DBGrid1.Columns[0].Field.Value='Parte Eletrica' then
     begin
          PageControl1.ActivePageIndex:=3;
          if pecas<>0 then
            dsOSerRe.DataSet.Locate('CODOSRE',pecas,[]);
     end
     else
     begin
          PageControl1.ActivePageIndex:=4;
          if pecas<>0 then
            dsOSerRe.DataSet.Locate('CODOSRE',pecas,[]);
     end;
     if (TOSerReVLRUNI.Value<>null) and (TOSerReQUANTP.Value<>null) then
     begin
          StaticText1.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText2.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText3.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText4.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText5.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
     end
     else begin
               StaticText1.Caption:='0';
               StaticText2.Caption:='0';
               StaticText3.Caption:='0';
               StaticText4.Caption:='0';
               StaticText5.Caption:='0';
          end;
end;

procedure TFOServico.BitBtn7Click(Sender: TObject);
begin
     Close;
end;

procedure TFOServico.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TVeiculos.Active:=false;
     TVeiculos.Active:=true;
end;

procedure TFOServico.DBLookupComboBox3DropDown(Sender: TObject);
begin
     TTServico.Active:=false;
     TTServico.Active:=true;
end;

procedure TFOServico.TOServicoAfterPost(DataSet: TDataSet);
begin
     if QLista.Active then QLista.Close;
        QLista.SQL.Clear;
     QLista.SQL.Add('Select Ordems_Re.PARTECAM, Ordems_Re.NOMEPEC, (Ordems_Re.VLRUNI*Ordems_Re.QUANTP) as Total From Ordems, Ordems_Re Where (Ordems.CODOS=Ordems_Re.CODOS) and (Ordems.CODOS='+IntToStr(TOServicoCODOS.Value)+');');
     QLista.Open;
     if QTotal.Active then QTotal.Close;
          QTotal.SQL.Clear;
     QTotal.SQL.Add('Select sum(Ordems_Re.VLRUNI*Ordems_Re.QUANTP) as Total From Ordems, Ordems_Re Where (Ordems.CODOS=Ordems_Re.CODOS) and (Ordems.CODOS='+IntToStr(TOServicoCODOS.Value)+');');
     QTotal.Open;
end;

procedure TFOServico.TOServicoAfterInsert(DataSet: TDataSet);
begin
     DBEdit1.Text:=ProximaOS;
end;

procedure TFOServico.TOServicoBeforeInsert(DataSet: TDataSet);
begin
     dsOServico.DataSet.Last;
     ProximaOS:=IntToStr(TOServicoCODOS.Value+1);
end;

procedure TFOServico.TOServicoBeforeDelete(DataSet: TDataSet);
begin
     try
        if QInsDel.Active then QInsDel.Close;
           QInsDel.SQL.Clear;
        QInsDel.SQL.Add('Delete From ORDEMS_RE Where (ORDEMS_RE.CODOS='+DBEdit1.Text+');');
        QInsDel.Open;

        { Após a exclusão todas as querys relativas as tabelas atingidas serão
          atualizadas para que o usuario visualise os dados relativos a tabela
          ordem que não foram apagados }

        TOServico.AfterPost(DataSet);
     except
     end;
end;

procedure TFOServico.TOSerReAfterPost(DataSet: TDataSet);
begin
     if QLista.Active then QLista.Close;
        QLista.SQL.Clear;
     QLista.SQL.Add('Select Ordems_Re.PARTECAM, Ordems_Re.NOMEPEC, (Ordems_Re.VLRUNI*Ordems_Re.QUANTP) as Total From Ordems, Ordems_Re Where (Ordems.CODOS=Ordems_Re.CODOS) and (Ordems.CODOS='+IntToStr(TOServicoCODOS.Value)+');');
     QLista.Open;
     if QTotal.Active then QTotal.Close;
          QTotal.SQL.Clear;
     QTotal.SQL.Add('Select sum(Ordems_Re.VLRUNI*Ordems_Re.QUANTP) as Total From Ordems, Ordems_Re Where (Ordems.CODOS=Ordems_Re.CODOS) and (Ordems.CODOS='+IntToStr(TOServicoCODOS.Value)+');');
     QTotal.Open;
     if (TOSerReVLRUNI.Value<>null) and (TOSerReQUANTP.Value<>null) then
     begin
          StaticText1.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText2.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText3.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText4.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
          StaticText5.Caption:=FloatToStr(TOSerReVLRUNI.Value*TOSerReQUANTP.Value);
     end
     else begin
               StaticText1.Caption:='0';
               StaticText2.Caption:='0';
               StaticText3.Caption:='0';
               StaticText4.Caption:='0';
               StaticText5.Caption:='0';
          end;
end;

procedure TFOServico.FormPaint(Sender: TObject);
begin
     DBNavigator1.OnClick(Sender,nbPrior)
end;

procedure TFOServico.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFOServico.DBLookupComboBox5DropDown(Sender: TObject);
begin
     TOficina.Active:=false;
     TOficina.Active:=true;
end;

procedure TFOServico.TOSerReBeforePost(DataSet: TDataSet);
begin
     TOSerRe.Edit;
     TOSerReCODOS.Value:=TOServicoCODOS.Value;
     if PageControl1.ActivePage<>TabSheet5 then
       TOSerRePARTECAM.Value:=Parte;
end;

procedure TFOServico.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePage=TabSheet1 then
        Parte:=TabSheet1.Caption;
     if PageControl1.ActivePage=TabSheet2 then
        Parte:=TabSheet2.Caption;
     if PageControl1.ActivePage=TabSheet3 then
        Parte:=TabSheet3.Caption;
     if PageControl1.ActivePage=TabSheet4 then
        Parte:=TabSheet4.Caption;
end;

end.
