unit UBViagem;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBUpdateSQL, IBTable, IBCustomDataSet, dbcgrids, IBQuery, Mask, Windows,
{$ELSE}
  sqldb, MaskEdit, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, StdCtrls,
  ExtCtrls, Grids, DBGrids, Buttons, ComCtrls;

type
  TFBViagem = class(TForm)
    TCidade: TSQLQuery;
    TVeiculos: TSQLQuery;
    dsBoletim: TDataSource;
    dsVeiculos: TDataSource;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TCidadeNOMECID: TStringField;
    TVeiculosCODVEIC: TIntegerField;
    TVeiculosCHASSI: TStringField;
    TVeiculosPLACA: TStringField;
    TVeiculosMARCAVEIC: TStringField;
    TVeiculosMODELOVEIC: TStringField;
    TVeiculosNOMEVEIC: TStringField;
    TVeiculosANOVEIC: TStringField;
    TVeiculosPROCEDVEIC: TStringField;
    TVeiculosTERCEIRIZADO: TSmallintField;
    TBoletim: TSQLQuery;
    dsCidade: TDataSource;
    QControle: TSQLQuery;
    dsEmpresa: TDataSource;
    TEmpresa: TSQLQuery;
    TEmpresaCODFAB: TIntegerField;
    TEmpresaNOMEFAB: TStringField;
    TEmpresaTIPOPROD: TStringField;
    dsPosto: TDataSource;
    dsQTotalP: TDataSource;
    QTotalP: TSQLQuery;
    dsQPosBO: TDataSource;
    QPosBO: TSQLQuery;
    QInsDel: TSQLQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid3: TDBGrid;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label19: TLabel;
    DBNavigator3: TDBNavigator;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label25: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label23: TLabel;
    StaticText3: TStaticText;
    Label29: TLabel;
    TPostoBO: TSQLQuery;
    dsPostoBO: TDataSource;
    TPostoBOCODPOSBO: TIntegerField;
    TPostoBOCODBO: TIntegerField;
    TPostoBOCODPOS: TIntegerField;
    TPostoBOKM: TIntegerField;
    TPostoBOCODCID: TIntegerField;
    DBLookupComboBox7: TDBLookupComboBox;
    TPostoCODPOS: TIntegerField;
    TPostoNOMEPOS: TStringField;
    TCidadeDISTUBA: TIntegerField;
    TPosto: TSQLQuery;
    QPosBOCODPOSBO: TIntegerField;
    QPosBOCODBO: TIntegerField;
    QPosBOCODPOS: TIntegerField;
    QPosBOKM: TIntegerField;
    QPosBOCODCID: TIntegerField;
    QPosBONOMEPOS: TStringField;
    TBoletimCODBO: TIntegerField;
    TBoletimCODVEIC: TIntegerField;
    TBoletimKMINICI: TIntegerField;
    TBoletimKMFINAL: TIntegerField;
    TBoletimCODCID: TIntegerField;
    TBoletimFRETE: TFloatField;
    TBoletimCALCULOKM: TStringField;
    TBoletimVALORKM: TFloatField;
    TBoletimVALORGAST: TFloatField;
    TBoletimDATACHEGA: TDateField;
    TBoletimDATASAIDA: TDateField;
    Panel1: TPanel;
    Label30: TLabel;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit21: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    StaticText4: TStaticText;
    DBNavigator4: TDBNavigator;
    DBNavigator7: TDBNavigator;
    TPostoBOLITROS: TFloatField;
    TPostoBOVALORL: TFloatField;
    QPosBOVALORL: TFloatField;
    QPosBOLITROS: TFloatField;
    DBLookupComboBox3: TDBLookupComboBox;
    Label9: TLabel;
    TBoletimCODFAB: TIntegerField;
    TBoletimGASTCLI: TFloatField;
    DBGrid1: TDBGrid;
    QBoletim: TSQLQuery;
    dsQBoletim: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    TBoletimCODCID2: TIntegerField;
    TBoletimFRETE2: TFloatField;
    TBoletimCODFAB2: TIntegerField;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    TBoletimCARGA: TMemoField;
    Label14: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    TBoletimNOMECID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure TPostoBOAfterInsert(DataSet: TDataSet);
    procedure TPostoBOAfterDelete(DataSet: TDataSet);
    procedure TBoletimAfterPost(DataSet: TDataSet);
    procedure TBoletimAfterInsert(DataSet: TDataSet);
    procedure TBoletimBeforeInsert(DataSet: TDataSet);
    procedure TBoletimBeforePost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox7DropDown(Sender: TObject);
    procedure DBLookupComboBox6DropDown(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure TBoletimBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBViagem: TFBViagem;
  Controle:integer;
  ProximoBO:string;
implementation

uses Uprincipal, Uteis, UClientes, UDespesas;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFBViagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TBoletim.Close;
     TCidade.Close;
     TVeiculos.Close;
     TEmpresa.Close;
     TPostoBO.Close;
     TPosto.Close;
     Destroy;
end;

procedure TFBViagem.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     try
     // Quando o usuário clica no DBNavigator todas as querys são atualizadas sendo:

     // Seta a aba Informações das Paradas atualizando a query QBoCli de acordo
     // com o número do boletim corrente
     // Atualiza a query QPosBO de acordo com o Boletim atual

     if QPosBO.Active then QPosBO.Close;
          QPosBO.SQL.Clear;
     QPosBO.SQL.Add('Select Posto.NOMEPOS, Posto_BO.* From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Boletim.CODBO='+DBEdit1.Text+');');
     QPosBO.Open;

     // Atualiza a query QTotalP de acordo com o Boletim atual sendo o valor total
     // gasto com combustivel e o total de litros gastos por Boletim

     if QTotalP.Active then QTotalP.Close;
        QTotalP.SQL.Clear;
     QTotalP.SQL.Add('Select sum(Posto_BO.LITROS*Posto_BO.VALORL) as GASTO, sum(Posto_BO.LITROS) as TOTALL From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Boletim.CODBO='+DBEdit1.Text+');');
     QTotalP.Open;

     // Formata a exibição dos calculos feitos pelas formulas internas do boletim sendo:
     { Gastos totais se os gastos com combustivel e cliente nulos a soma só terá
       os gastos com o motorista se qualquer um desses gastos ocorrer será a soma
       desse gasto com o gasto do motorista }

     if DBEdit5.Text='' then
        DBEdit5.Text:='0';
     if DBEdit6.Text='' then
        DBEdit6.Text:='0';
     if DBEdit7.Text='' then
        DBEdit7.Text:='0';
     if DBEdit16.Text='' then
        DBEdit16.Text:='0';
     if DBEdit20.Text='' then
        DBEdit20.Text:='0';
     if (DBEdit20.Text='0') and (DBEdit16.Text='0') then
        StaticText1.Caption:=FloatToStr(TBoletimVALORGAST.Value)+' ';
     if (DBEdit20.Text='0') or (DBEdit16.Text='0') then
     begin
        if (DBEdit16.Text='0') and (DBEdit20.Text<>'0') then
           StaticText1.Caption:=FloatToStr(TBoletimVALORGAST.Value+QTotalP.FieldValues['GASTO'])+' ';
        if (DBEdit16.Text<>'0') and (DBEdit20.Text='0') then
           StaticText1.Caption:=FloatToStr(TBoletimVALORGAST.Value+TBoletimGASTCLI.Value)+' ';
     end;
     if (DBEdit20.Text<>'0') and (DBEdit16.Text<>'0') then
        StaticText1.Caption:=FloatToStr(TBoletimGASTCLI.Value+QTotalP.FieldValues['GASTO']+TBoletimVALORGAST.Value)+' ';

     // Calcula o Km final menos o Km inicial para saber a Km do percurso

     if (DBEdit5.Text<>'0') then
        StaticText2.Caption:=IntToStr(TBoletimKMFINAL.Value-TBoletimKMINICI.Value)
     else StaticText2.Caption:='0';

     // Caso haja algum gasto com combustivel calcula-se a quantidade media de
     // combustivel por Km

     if (DBEdit20.Text<>'0') then
        StaticText3.Caption:=FormatFloat('###,###.0000',StrToInt(StaticText2.Caption)/QTotalP.FieldValues['TOTALL'])
     else StaticText3.Caption:='0';
     Case DBRadioGroup1.ItemIndex of
     0:begin
            Label30.Visible:=true;
            DBEdit10.Visible:=true;
       end;
     1:begin
            Label30.Visible:=false;
            DBEdit10.Visible:=false;
       end;
     end;
     if ((StaticText2.Caption<>'0') and (DBEdit10.Text<>'0'))and((StaticText2.Caption<>'0') and (DBEdit10.Text<>'0')) then
        DBEdit21.Text:=FloatToStr(StrToFloat(StaticText2.Caption)*StrToFloat(DBEdit10.Text));
     StaticText4.Caption:='R$ '+FormatFloat('###,###.00',(StrToFloat(DBEdit21.Text)+StrToFloat(DBEdit7.Text))-StrToFloat(StaticText1.Caption))+' ';
     if Button=nbPrior then
        QBoletim.Prior;
     if Button=nbNext then
        QBoletim.Next;
     except
     end;
end;

procedure TFBViagem.DBGrid3CellClick(Column: TColumn);
var
   aux:integer;
begin
     { Cria uma variável de controle chamada aux da posição na tabela
       Posto_BO do campo selecionado pelo usuário }
     try
     if QControle.Active then QControle.Close;
        QControle.SQL.Clear;
     QControle.SQL.Add('Select Posto_BO.CODPOSBO as CODIGO From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Posto.NOMEPOS='+#39+DBGrid3.Columns[0].Field.Value+#39+') and (Boletim.CODBO='+DBEdit1.Text+');');
     QControle.Open;
     aux:=QControle.FieldValues['CODIGO'];
     except
           aux:=0;
     end;

     // Seta a tabela Posto_BO de acordo com o campo selecionado pelo Cliente

     if aux<>0 then
        dsPostoBO.DataSet.Locate('CODPOSBO',aux,[]);
end;

procedure TFBViagem.DBLookupComboBox3DropDown(Sender: TObject);
begin
     TEmpresa.Active:=false;
     TEmpresa.Active:=true;
end;

procedure TFBViagem.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFBViagem.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TVeiculos.Active:=false;
     TVeiculos.Active:=true;
end;

procedure TFBViagem.DBRadioGroup1Click(Sender: TObject);
begin
     case DBRadioGroup1.ItemIndex of
       0:begin
              Label30.Visible:=true;
              DBEdit10.Visible:=true;
         end;
       1:begin
              Label30.Visible:=false;
              DBEdit10.Text:='0';
              DBEdit10.Visible:=false;
         end;
     end;
end;

procedure TFBViagem.DBEdit10Exit(Sender: TObject);
begin
     DBEdit21.Text:=FloatToStr(StrToFloat(StaticText2.Caption)*StrToFloat(DBEdit10.Text));
end;

procedure TFBViagem.TPostoBOAfterInsert(DataSet: TDataSet);
begin
     TPostoBo.Edit;
     TPostoBOCODBO.Value:=TBoletimCODBO.Value;
end;

procedure TFBViagem.TPostoBOAfterDelete(DataSet: TDataSet);
begin
     // Atualiza a query QPosBO de acordo com o Boletim atual

     if QPosBO.Active then QPosBO.Close;
        QPosBO.SQL.Clear;
     QPosBO.SQL.Add('Select Posto.NOMEPOS, Posto_BO.* From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Boletim.CODBO='+DBEdit1.Text+');');
     QPosBO.Open;

     // Atualiza a query QTotalP de acordo com o Boletim atual sendo o valor total
     // gasto com combustivel e o total de litros gastos por Boletim

     if QTotalP.Active then QTotalP.Close;
        QTotalP.SQL.Clear;
     QTotalP.SQL.Add('Select sum(Posto_BO.LITROS*Posto_BO.VALORL) as GASTO, sum(Posto_BO.LITROS) as TOTALL From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Boletim.CODBO='+DBEdit1.Text+');');
     QTotalP.Open;
end;

procedure TFBViagem.TBoletimAfterPost(DataSet: TDataSet);
begin
     if DBEdit5.Text='' then
        DBEdit5.Text:='0';
     if DBEdit6.Text='' then
        DBEdit6.Text:='0';
     if DBEdit7.Text='' then
        DBEdit7.Text:='0';
     if DBEdit16.Text='' then
        DBEdit16.Text:='0';
     if DBEdit20.Text='' then
        DBEdit20.Text:='0';
     if QPosBO.Active then QPosBO.Close;
        QPosBO.SQL.Clear;
     QPosBO.SQL.Add('Select Posto.NOMEPOS, Posto_BO.* From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Boletim.CODBO='+DBEdit1.Text+');');
     QPosBO.Open;
     if QTotalP.Active then QTotalP.Close;
        QTotalP.SQL.Clear;
     QTotalP.SQL.Add('Select sum(Posto_BO.LITROS*Posto_BO.VALORL) as GASTO, sum(Posto_BO.LITROS) as TOTALL From Posto, Posto_BO, Boletim Where (Posto_BO.CODBO=Boletim.CODBO) and (Posto_BO.CODPOS=Posto.CODPOS) and (Boletim.CODBO='+DBEdit1.Text+');');
     QTotalP.Open;
end;

procedure TFBViagem.TBoletimAfterInsert(DataSet: TDataSet);
begin
     StaticText1.Caption:='0';
     StaticText2.Caption:='0';
     StaticText3.Caption:='0';
     StaticText4.Caption:='0';
     Label30.Visible:=false;
     DBEdit1.Text:=ProximoBO;
     DBEdit5.Text:='0';
     DBEdit6.Text:='0';
     DBEdit7.Text:='0';
     DBEdit16.Text:='0';
     DBEdit20.Text:='0';
     DBEdit10.Visible:=false; 
end;

procedure TFBViagem.TBoletimBeforeInsert(DataSet: TDataSet);
begin
     dsBoletim.DataSet.Last;
     ProximoBO:=IntToStr(TBoletimCODBO.Value+1);
end;

procedure TFBViagem.TBoletimBeforePost(DataSet: TDataSet);
begin
     DBEdit21.Text:=FloatToStr(StrToFloat(StaticText2.Caption)*StrToFloat(DBEdit10.Text));
end;

procedure TFBViagem.FormPaint(Sender: TObject);
begin
     DBNavigator1.OnClick(Sender,nbPrior);
end;

procedure TFBViagem.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
     dsVeiculos.DataSet.Locate('PLACA',DBLookupComboBox2.Text,[loCaseInsensitive, loPartialKey]);
     dsCidade.DataSet.Locate('NOMECID',DBLookupComboBox1.Text,[loCaseInsensitive, loPartialKey]);
     dsCidade.DataSet.Locate('NOMECID',DBLookupComboBox6.Text,[loCaseInsensitive, loPartialKey]);
     dsEmpresa.DataSet.Locate('NOMEFAB',DBLookupComboBox3.Text,[loCaseInsensitive, loPartialKey]);
     dsPosto.DataSet.Locate('NOMEPOS',DBLookupComboBox7.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TFBViagem.DBLookupComboBox7DropDown(Sender: TObject);
begin
     TPosto.Active:=false;
     TPosto.Active:=true;
end;

procedure TFBViagem.DBLookupComboBox6DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFBViagem.DBGrid1CellClick(Column: TColumn);
var
   Sender:TObject;
begin
     dsBoletim.DataSet.Locate('CODBO',DBGrid1.Columns[0].Field.Value,[]);
     DBNavigator1.OnClick(Sender, nbCancel);
end;

procedure TFBViagem.DBNavigator4Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     QBoletim.Active:=false;
     QBoletim.Active:=true;
     dsQBoletim.DataSet.Locate('CODBO',TBoletimCODBO.Value,[]);
end;

procedure TFBViagem.TBoletimBeforeDelete(DataSet: TDataSet);
begin
     try  
          if QInsDel.Active then QInsDel.Close;
             QInsDel.SQL.Clear;
          QInsDel.SQL.Add('Delete From POSTO_BO Where (POSTO_BO.CODBO='+DBEdit1.Text+');');
          QInsDel.Open;

          { Após a exclusão todas as querys relativas as tabelas atingidas serão
            atualizadas para que o usuario visualise os dados relativos a tabela
            boletim que não foram apagados }

          TBoletimAfterPost(DataSet);
     except
     end;
end;

end.
