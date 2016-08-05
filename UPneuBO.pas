unit UPneuBO;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBTable, IBCustomDataSet, IBQuery, dbcgrids, IBUpdateSQL, Mask, Windows,
{$ELSE}
  sqldb, MaskEdit, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls,
  DBControlGrid, DB;

type
  TFPneuBO = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TPneu: TSQLQuery;
    TPneuBO: TSQLQuery;
    dsPneu: TDataSource;
    dsPneuBO: TDataSource;
    TPneuCODPNEU: TIntegerField;
    TPneuNSPNEU: TStringField;
    TPneuMARCAPNEU: TStringField;
    TPneuOBSPNEU: TMemoField;
    TPneuVALORPNEU: TFloatField;
    TPneuBOCODPNBO: TIntegerField;
    TPneuBOCODPNEU: TIntegerField;
    TPneuBOCODVEIC: TIntegerField;
    TPneuBODATACOLOCA: TDateField;
    TPneuBODATATIRA: TDateField;
    TPneuBOKMINICPNEU: TFloatField;
    TPneuBOKMFIMPNEU: TFloatField;
    TPneuBORECAPEADO: TIntegerField;
    TVeiculo: TSQLQuery;
    dsVeiculo: TDataSource;
    TVeiculoCODVEIC: TIntegerField;
    TVeiculoCHASSI: TStringField;
    TVeiculoPLACA: TStringField;
    TVeiculoMARCAVEIC: TStringField;
    TVeiculoMODELOVEIC: TStringField;
    TVeiculoNOMEVEIC: TStringField;
    TVeiculoANOVEIC: TStringField;
    TVeiculoPROCEDVEIC: TStringField;
    TVeiculoTERCEIRIZADO: TSmallintField;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    QPneuCam: TSQLQuery;
    dsQPneuCam: TDataSource;
    QPneuCamPLACA: TStringField;
    QPneuCamDATACOLOCA: TDateField;
    QPneuCamKMINICPNEU: TFloatField;
    QPneuCamDATATIRA: TDateField;
    QPneuCamKMFIMPNEU: TFloatField;
    QPneuCamNSPNEU: TStringField;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    QPneuCamCODVEIC: TIntegerField;
    QPneuCamCODPNEU: TIntegerField;
    TabSheet2: TTabSheet;
    QPneuN: TSQLQuery;
    dsPneuN: TDataSource;
    DBCtrlGrid1: TDBControlGrid;
    QPneuNCODPNEU: TIntegerField;
    QPneuNNSPNEU: TStringField;
    QPneuNMARCAPNEU: TStringField;
    QPneuNOBSPNEU: TMemoField;
    QPneuNVALORPNEU: TFloatField;
    QPneuNCODPNBO: TIntegerField;
    QPneuNCODVEIC: TIntegerField;
    QPneuNDATACOLOCA: TDateField;
    QPneuNDATATIRA: TDateField;
    QPneuNKMINICPNEU: TFloatField;
    QPneuNKMFIMPNEU: TFloatField;
    QPneuNRECAPEADO: TIntegerField;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit2: TEdit;
    QPneuNCODPNEU1: TIntegerField;
    QPneuNCODVEIC1: TIntegerField;
    QPneuNCHASSI: TStringField;
    QPneuNPLACA: TStringField;
    QPneuNMARCAVEIC: TStringField;
    QPneuNMODELOVEIC: TStringField;
    QPneuNNOMEVEIC: TStringField;
    QPneuNANOVEIC: TStringField;
    QPneuNPROCEDVEIC: TStringField;
    QPneuNTERCEIRIZADO: TSmallintField;
    DBEdit14: TDBEdit;
    DBMemo2: TDBMemo;
    Label19: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBCtrlGrid2: TDBControlGrid;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBMemo3: TDBMemo;
    Edit3: TEdit;
    Label29: TLabel;
    DBCtrlGrid3: TDBControlGrid;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBMemo4: TDBMemo;
    Edit4: TEdit;
    Label39: TLabel;
    DBCtrlGrid4: TDBControlGrid;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBMemo5: TDBMemo;
    Edit5: TEdit;
    Label49: TLabel;
    QPneu1: TSQLQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TStringField;
    IBStringField2: TStringField;
    MemoField1: TMemoField;
    IBBCDField2: TFloatField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IBBCDField3: TFloatField;
    IBBCDField4: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField3: TStringField;
    IBStringField4: TStringField;
    IBStringField5: TStringField;
    IBStringField6: TStringField;
    IBStringField7: TStringField;
    IBStringField8: TStringField;
    IBStringField9: TStringField;
    SmallintField1: TSmallintField;
    dsPneu1: TDataSource;
    QPneu2: TSQLQuery;
    IntegerField7: TIntegerField;
    IBStringField10: TStringField;
    IBStringField11: TStringField;
    MemoField2: TMemoField;
    IBBCDField6: TFloatField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    IBBCDField7: TFloatField;
    IBBCDField8: TFloatField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IBStringField12: TStringField;
    IBStringField13: TStringField;
    IBStringField14: TStringField;
    IBStringField15: TStringField;
    IBStringField16: TStringField;
    IBStringField17: TStringField;
    IBStringField18: TStringField;
    SmallintField2: TSmallintField;
    dsPneu2: TDataSource;
    QPneu3: TSQLQuery;
    IntegerField13: TIntegerField;
    IBStringField19: TStringField;
    IBStringField20: TStringField;
    MemoField3: TMemoField;
    IBBCDField10: TFloatField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    DateField5: TDateField;
    DateField6: TDateField;
    IBBCDField11: TFloatField;
    IBBCDField12: TFloatField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IBStringField21: TStringField;
    IBStringField22: TStringField;
    IBStringField23: TStringField;
    IBStringField24: TStringField;
    IBStringField25: TStringField;
    IBStringField26: TStringField;
    IBStringField27: TStringField;
    SmallintField3: TSmallintField;
    dsPneu3: TDataSource;
    QControle: TSQLQuery;
    QControleCOD: TIntegerField;
    QPneuCamCODPNBO: TIntegerField;
    TPneuGARANPNEU: TStringField;
    QPneu3GARANPNEU: TStringField;
    QPneu2GARANPNEU: TStringField;
    QPneu1GARANPNEU: TStringField;
    QPneuNGARANPNEU: TStringField;
    Label50: TLabel;
    DBEdit39: TDBEdit;
    TPneuBOPERCURSO: TFloatField;
    Sit: TSQLQuery;
    DBNavigator2: TDBNavigator;
    QPneuCamRECAPEADO: TIntegerField;
    QPneuNPERCURSO: TFloatField;
    QPneu1PERCURSO: TFloatField;
    QPneu2PERCURSO: TFloatField;
    QPneu3PERCURSO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure TPneuBOAfterPost(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure TPneuBOBeforeEdit(DataSet: TDataSet);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure TPneuBOBeforePost(DataSet: TDataSet);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure TPneuBOAfterEdit(DataSet: TDataSet);
    procedure TPneuBOAfterInsert(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPneuBO: TFPneuBO;
   codpneu,codveic,recapeado:integer;
   datacoloca,datatira:string;
   kminic,kmfim,per:real;
implementation

uses Uprincipal, Uteis;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFPneuBO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TPneu.Close;
     TPneuBO.Close;
     TVeiculo.Close;
     Destroy;
end;

procedure TFPneuBO.Edit1Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit1.Text;
     case RadioGroup1.ItemIndex of
       0:begin
              for i:=1 to Length(aux) do
              begin
                  Key:=aux[i];
                  if (Key in ['a'..'z','A'..'Z']) or (Key in ['0'..'9']) then
                  begin
                       dsPneu.DataSet.Locate('NSPNEU',Edit1.Text,[lopartialkey,locaseinsensitive]);
                       dsPneuBO.DataSet.Locate('CODPNEU',TPneuCODPNEU.Value,[]);
                       dsQPneuCam.DataSet.Locate('CODPNEU',TPneuCODPNEU.Value,[]);
                  end;
              end;
         end;
       1:begin
              for i:=1 to Length(aux) do
              begin
                  Key:=aux[i];
                  if (Key in ['a'..'z','A'..'Z']) or (Key in ['0'..'9']) then
                  begin
                       dsVeiculo.DataSet.Locate('PLACA',Edit1.Text,[lopartialkey,locaseinsensitive]);
                       dsPneuBO.DataSet.Locate('CODVEIC',TVeiculoCODVEIC.Value,[]);
                       dsQPneuCam.DataSet.Locate('CODVEIC',TVeiculoCODVEIC.Value,[]);
                  end;
              end;
         end;
     end;
end;

procedure TFPneuBO.Edit2Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit2.Text;
     for i:=1 to Length(aux) do
     begin
          Key:=aux[i];
          if (Key in ['a'..'z','A'..'Z']) or (Key in ['0'..'9']) then
          begin
               dsPneu.DataSet.Locate('NSPNEU',Edit2.Text,[lopartialkey,locaseinsensitive]);
               dsPneuN.DataSet.Locate('CODPNEU',TPneuCODPNEU.Value,[]);
          end;
     end;
end;

procedure TFPneuBO.Edit3Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit3.Text;
     for i:=1 to Length(aux) do
     begin
          Key:=aux[i];
          if (Key in ['a'..'z','A'..'Z']) or (Key in ['0'..'9']) then
          begin
               dsPneu.DataSet.Locate('NSPNEU',Edit3.Text,[lopartialkey,locaseinsensitive]);
               dsPneu1.DataSet.Locate('CODPNEU',TPneuCODPNEU.Value,[]);
          end;
     end;
end;

procedure TFPneuBO.Edit4Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit4.Text;
     for i:=1 to Length(aux) do
     begin
          Key:=aux[i];
          if (Key in ['a'..'z','A'..'Z']) or (Key in ['0'..'9']) then
          begin
               dsPneu.DataSet.Locate('NSPNEU',Edit4.Text,[lopartialkey,locaseinsensitive]);
               dsPneu2.DataSet.Locate('CODPNEU',TPneuCODPNEU.Value,[]);
          end;
     end;
end;

procedure TFPneuBO.Edit5Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit5.Text;
     for i:=1 to Length(aux) do
     begin
          Key:=aux[i];
          if (Key in ['a'..'z','A'..'Z']) or (Key in ['0'..'9']) then
          begin
               dsPneu.DataSet.Locate('NSPNEU',Edit5.Text,[lopartialkey,locaseinsensitive]);
               dsPneu3.DataSet.Locate('CODPNEU',TPneuCODPNEU.Value,[]);
          end;
     end;
end;

procedure TFPneuBO.TPneuBOAfterPost(DataSet: TDataSet);
begin
     QPneuCam.Close;
     QPneuCam.Open;
     QPneuN.Close;
     QPneuN.Open;
     QPneu1.Close;
     QPneu1.Open;
     QPneu2.Close;
     QPneu2.Open;
     QPneu3.Close;
     QPneu3.Open;
     DBEdit39.Text:=IntToStr(StrToInt(DBEdit6.Text)-StrToInt(DBEdit5.Text));
     TPneuBo.Close;
     TPneuBo.Open;
end;

procedure TFPneuBO.RadioGroup1Click(Sender: TObject);
begin
     try
     Case RadioGroup1.ItemIndex of
     0:begin
            if QPneuCam.Active then QPneuCam.Close;
               QPneuCam.SQL.Clear;
            QPneuCam.SQL.Add('Select Veiculos.PLACA, Veiculos.CODVEIC, Pneu.CODPNEU, Pneu.NSPNEU, Pneu_Bo.RECAPEADO, Pneu_Bo.CODPNBO, Pneu_Bo.DATACOLOCA, Pneu_Bo.KMINICPNEU, Pneu_Bo.DATATIRA, Pneu_Bo.KMFIMPNEU From Pneu_Bo, Pneu, Veiculos '+
                             'Where ((Pneu_Bo.CODPNEU=Pneu.CODPNEU) and (Pneu_Bo.CODVEIC=Veiculos.CODVEIC)) Order by Pneu.NSPNEU;');
            QPneuCam.Open;
       end;
     1:begin
            if QPneuCam.Active then QPneuCam.Close;
               QPneuCam.SQL.Clear;
            QPneuCam.SQL.Add('Select Veiculos.PLACA, Veiculos.CODVEIC, Pneu.CODPNEU, Pneu.NSPNEU, Pneu_Bo.RECAPEADO, Pneu_Bo.CODPNBO, Pneu_Bo.DATACOLOCA, Pneu_Bo.KMINICPNEU, Pneu_Bo.DATATIRA, Pneu_Bo.KMFIMPNEU From Pneu_Bo, Pneu, Veiculos '+
                             'Where ((Pneu_Bo.CODPNEU=Pneu.CODPNEU) and (Pneu_Bo.CODVEIC=Veiculos.CODVEIC)) Order by Veiculos.PLACA;');
            QPneuCam.Open;
       end;
     end;
     except
           if QPneuCam.Active then QPneuCam.Close;
               QPneuCam.SQL.Clear;
            QPneuCam.SQL.Add('Select Veiculos.PLACA, Veiculos.CODVEIC, Pneu.CODPNEU, Pneu.NSPNEU, Pneu_Bo.RECAPEADO, Pneu_Bo.CODPNBO, Pneu_Bo.DATACOLOCA, Pneu_Bo.KMINICPNEU, Pneu_Bo.DATATIRA, Pneu_Bo.KMFIMPNEU From Pneu_Bo, Pneu, Veiculos '+
                             'Where ((Pneu_Bo.CODPNEU=Pneu.CODPNEU) and (Pneu_Bo.CODVEIC=Veiculos.CODVEIC));');
            QPneuCam.Open;
     end;
end;

procedure TFPneuBO.DBGrid1CellClick(Column: TColumn);
var
   Controle:integer;
begin
     { Cria uma variável de controle chamada Controle da posição na tabela
       Boletim_Cli do campo selecionado pelo usuário }
     try
     if QControle.Active then QControle.Close;
        QControle.SQL.Clear;
     QControle.SQL.Add('Select Pneu_BO.CODPNBO as COD From Pneu, Pneu_BO, Veiculos Where (Pneu_BO.CODPNEU=Pneu.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CODVEIC) and (Veiculos.PLACA='+#39+DBGrid1.Columns[0].Field.Value+#39+')'+
                       ' and (Pneu.NSPNEU='+#39+DBGrid1.Columns[1].Field.Value+#39+') and (Pneu_BO.RECAPEADO='+IntToStr(DBGrid1.Columns[6].Field.Value)+');');
     QControle.Open;
     Controle:=QControle.FieldValues['COD'];
     except
           Controle:=0;
     end;
     dsQPneuCam.DataSet.Locate('CODPNBO',Controle,[]);
     dsPneuBO.DataSet.Locate('CODVEIC;CODPNEU;RECAPEADO',VarArrayOf([QPneuCam.FieldValues['CODVEIC'],QPneuCam.FieldValues['CODPNEU'],QPneuCam.FieldValues['RECAPEADO']]),[]);
     dsPneu.DataSet.Locate('CODPNEU',QPneuCam.FieldValues['CODPNEU'],[]);
     if DBEdit5.Text='' then
        DBEdit5.Text:='0';
     if DBEdit6.Text='' then
        DBedit6.Text:='0';
     if (DBEdit5.Text<>'0') and (DBEdit6.Text<>'0') then
        DBEdit39.Text:=IntToStr(StrToInt(DBEdit6.Text)-StrToInt(DBEdit5.Text))
     else DBEdit39.Text:='0';
end;

procedure TFPneuBO.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFPneuBO.DBRadioGroup1Click(Sender: TObject);
var
   aux:integer;
begin
     recapeado:=DBRadioGroup1.ItemIndex;
     try
     if Sit.Active then Sit.Close;
        Sit.SQL.Clear;
     Sit.SQL.Add('Select Count(*) AS ID From Pneu_bo Where (Pneu_Bo.CODPNEU='+IntToStr(TPneuCODPNEU.Value)+') and (Pneu_Bo.CODVEIC='+IntToStr(TVeiculoCODVEIC.Value)+') and (Pneu_Bo.RECAPEADO='+IntToStr(DBRadioGroup1.ItemIndex)+');');
     Sit.Open;
     aux:=Sit.FieldValues['ID'];
     except
           aux:=0;
     end;
     if aux<>0 then
     begin
         Application.MessageBox('Este pneu já foi cadastrado nesta categoria escolha outra','Atenção',mb_iconinformation);
         DBRadioGroup1.ItemIndex:=-1;
     end;
end;

procedure TFPneuBO.TPneuBOBeforeEdit(DataSet: TDataSet);
begin
     codpneu:=TPneuCODPNEU.Value;
     codveic:=TVeiculoCODVEIC.Value;
     datacoloca:=DBEdit3.Text;
     datatira:=DBEdit4.Text;
     kminic:=StrToFloat(DBEdit5.Text);
     kmfim:=StrToFloat(DBEdit6.Text);
     per:=StrToFloat(DBEdit39.Text);
end;

procedure TFPneuBO.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
var
   Controle:integer;
begin
     { Cria uma variável de controle chamada Controle da posição na tabela
       Boletim_Cli do campo selecionado pelo usuário }
     try
     recapeado:=DBRadioGroup1.ItemIndex;
     if QControle.Active then QControle.Close;
        QControle.SQL.Clear;
     QControle.SQL.Add('Select Pneu_BO.CODPNBO as COD From Pneu, Pneu_BO, Veiculos Where (Pneu_BO.CODPNEU=Pneu.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CODVEIC) and (Veiculos.PLACA='+#39+DBGrid1.Columns[0].Field.Value+#39+')'+
                       ' and (Pneu.NSPNEU='+#39+DBGrid1.Columns[1].Field.Value+#39+') and (Pneu_BO.RECAPEADO='+IntToStr(DBGrid1.Columns[6].Field.Value)+');');
     QControle.Open;
     Controle:=QControle.FieldValues['COD'];
     except
           Controle:=0;
     end;
     dsQPneuCam.DataSet.Locate('CODPNBO',Controle,[]);
     dsPneuBO.DataSet.Locate('CODVEIC;CODPNEU;RECAPEADO',VarArrayOf([QPneuCam.FieldValues['CODVEIC'],QPneuCam.FieldValues['CODPNEU'],QPneuCam.FieldValues['RECAPEADO']]),[]);
     dsPneu.DataSet.Locate('CODPNEU',QPneuCam.FieldValues['CODPNEU'],[]);
     if DBEdit5.Text='' then
        DBEdit5.Text:='0';
     if DBEdit6.Text='' then
        DBedit6.Text:='0';
     if (DBEdit5.Text<>'0') and (DBEdit6.Text<>'0') then
        DBEdit39.Text:=IntToStr(StrToInt(DBEdit6.Text)-StrToInt(DBEdit5.Text))
     else DBEdit39.Text:='0';
end;

procedure TFPneuBO.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
     if DBEdit5.Text='' then
        DBEdit5.Text:='0';
     if DBEdit6.Text='' then
        DBEdit6.Text:='0';
     if (Key=#13) then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFPneuBO.DBEdit6Exit(Sender: TObject);
begin
     DBEdit39.Text:=IntToStr(StrToInt(DBEdit6.Text)-StrToInt(DBEdit5.Text));
end;

procedure TFPneuBO.TPneuBOBeforePost(DataSet: TDataSet);
begin
     DBEdit39.Text:=IntToStr(StrToInt(DBEdit6.Text)-StrToInt(DBEdit5.Text));
end;

procedure TFPneuBO.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TPneu.Active:=false;
     TPneu.Active:=true;
end;

procedure TFPneuBO.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TVeiculo.Active:=false;
     TVeiculo.Active:=true;
end;

procedure TFPneuBO.TPneuBOAfterEdit(DataSet: TDataSet);
begin
     if DBEdit5.Text='' then
        DBEdit5.Text:='0';
     if DBEdit6.Text='' then
        DBedit6.Text:='0';
     if (DBEdit5.Text<>'0') and (DBEdit6.Text<>'0') then
        DBEdit39.Text:=IntToStr(StrToInt(DBEdit6.Text)-StrToInt(DBEdit5.Text))
     else DBEdit39.Text:='0';
end;

procedure TFPneuBO.TPneuBOAfterInsert(DataSet: TDataSet);
begin
     DBEdit5.Text:='0';
     DBEdit6.Text:='0';
     DBEdit39.Text:='0';
end;

procedure TFPneuBO.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     QPneuCam.Close;
     QPneuCam.Open;
     QPneuN.Close;
     QPneuN.Open;
     QPneu1.Close;
     QPneu1.Open;
     QPneu2.Close;
     QPneu2.Open;
     QPneu3.Close;
     QPneu3.Open;
end;

end.
