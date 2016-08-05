unit Uprincipal;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  ExtActns, IBDatabase, Windows,
{$ELSE}
  sqldb, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, Menus, DB, IBConnection,
  ImgList, StdCtrls, Buttons, ActnList, StdActns;

type
  TFPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ToolButton2: TToolButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ToolButton3: TToolButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    CriarBackup1: TMenuItem;
    RestaurarBackup1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    cadastros1: TMenuItem;
    Bancos1: TMenuItem;
    cidades1: TMenuItem;
    Clientes1: TMenuItem;
    Despesas1: TMenuItem;
    Empresas1: TMenuItem;
    Estados1: TMenuItem;
    Fornecedores1: TMenuItem;
    motoristas1: TMenuItem;
    Veiculos1: TMenuItem;
    Movimentos1: TMenuItem;
    BoletimdeViagem1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    Utilitarios1: TMenuItem;
    Calculadora1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    BasePrincipal: TIBConnection;
    IBTransaction1: TSQLTransaction;
    PopupMenu1: TPopupMenu;
    barracadas: TMenuItem;
    BarradeMovimento1: TMenuItem;
    BarradeRelatorios1: TMenuItem;
    Timer1: TTimer;
    SpeedButton14: TSpeedButton;
    Posto1: TMenuItem;
    SpeedButton15: TSpeedButton;
    Sistema2: TMenuItem;
    BancodeDados1: TMenuItem;
    Sistema3: TMenuItem;
    BancodeDados2: TMenuItem;
    Pneu1: TMenuItem;
    ControledePneu1: TMenuItem;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    ToolButton4: TToolButton;
    Oficinas1: TMenuItem;
    SpeedButton18: TSpeedButton;
    Financeiro1: TMenuItem;
    AReceber1: TMenuItem;
    N2: TMenuItem;
    APagar1: TMenuItem;
    AdministraoFinanceiro1: TMenuItem;
    ContasaReceber1: TMenuItem;
    LanamentosEspeciaisaPagar1: TMenuItem;
    PlanodeContas1: TMenuItem;
    HistoricodeCaixa1: TMenuItem;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure cidades1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure motoristas1Click(Sender: TObject);
    procedure Veiculos1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Despesas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure barracadasClick(Sender: TObject);
    procedure BoletimdeViagem1Click(Sender: TObject);
    procedure BarradeMovimento1Click(Sender: TObject);
    procedure BarradeRelatorios1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton13MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton11MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton12MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ToolBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StatusBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton14MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sobre1Click(Sender: TObject);
    procedure Posto1Click(Sender: TObject);
    procedure SpeedButton15MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Sistema2Click(Sender: TObject);
    procedure BancodeDados1Click(Sender: TObject);
    procedure Sistema3Click(Sender: TObject);
    procedure BancodeDados2Click(Sender: TObject);
    procedure Pneu1Click(Sender: TObject);
    procedure ControledePneu1Click(Sender: TObject);
    procedure SpeedButton16MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton17MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Oficinas1Click(Sender: TObject);
    procedure SpeedButton18MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Caminho1Click(Sender: TObject);
    procedure LanamentosEspeciaisaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure HistoricodeCaixa1Click(Sender: TObject);
    procedure Manuten1Click(Sender: TObject);
    procedure Custos1Click(Sender: TObject);
    procedure SpeedButton9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton10MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UCidades, UClientes, UEstados, UFornecedores, 
  UMotoristas, UVeiculos, Ubancos, UDespesas, UBViagem, Uteis, UOServico,
  UEmpresa, UPosto, UPneu, UPneuBO, UOficina,
  ULanEspPag, ULanEspRecb, UPlanoConta, UHistorico;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFPrincipal.Bancos1Click(Sender: TObject);
begin
     Application.CreateForm(TFBancos, FBancos);
     FBancos.TBancos.Open;
     FBancos.TCidade.Open;
     FBancos.TEstado.Open;
end;

procedure TFPrincipal.cidades1Click(Sender: TObject);
begin
     Application.CreateForm(TFCidades, FCidades);
     FCidades.TCidade.Open;
     FCidades.TEstado.Open;
end;

procedure TFPrincipal.Clientes1Click(Sender: TObject);
begin
     Application.CreateForm(TFClientes, FClientes);
     FClientes.TClientes.Open;
     FClientes.TCidade.Open;
     FClientes.TEstado.Open;

end;

procedure TFPrincipal.Despesas1Click(Sender: TObject);
begin
     Application.CreateForm(TFDespesas, FDespesas);
     FDespesas.TDespesas.Open;
end;

procedure TFPrincipal.Estados1Click(Sender: TObject);
begin
     Application.CreateForm(TFEstados, FEstados);
     FEstados.TEstados.Open;
end;

procedure TFPrincipal.Fornecedores1Click(Sender: TObject);
begin
     Application.CreateForm(TFFornecedores, FFornecedores);
     FFornecedores.TFornecedores.Open;
     FFornecedores.TCidade.Open;
     FFornecedores.TEstado.Open;
end;

procedure TFPrincipal.motoristas1Click(Sender: TObject);
begin
     Application.CreateForm(TFMotoristas, FMotoristas);
     FMotoristas.TMotoristas.Open;
     FMotoristas.TCidade.Open;
     FMotoristas.TEstado.Open;
end;

procedure TFPrincipal.Veiculos1Click(Sender: TObject);
begin
     Application.CreateForm(TFVeiculos, FVeiculos);
     FVeiculos.TVeiculos.Open;
end;

procedure TFPrincipal.BoletimdeViagem1Click(Sender: TObject);
begin
     Application.CreateForm(TFBViagem, FBViagem);
     FBViagem.TBoletim.Open;
     FBViagem.TCidade.Open;
     FBViagem.TVeiculos.Open;
     FBViagem.TEmpresa.Open;
     FBViagem.TPostoBO.Open;
     FBViagem.TPosto.Open;
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
     Close;
end;

procedure TFPrincipal.Calculadora1Click(Sender: TObject);
begin
     //WinExec('calc.exe',1);
end;

procedure TFPrincipal.BlocodeNotas1Click(Sender: TObject);
begin
    // WinExec('notepad.exe',1);
end;

procedure TFPrincipal.FormResize(Sender: TObject);
begin
     StatusBar1.Panels[0].Width:=FPrincipal.Width-155;
end;

procedure TFPrincipal.Timer1Timer(Sender: TObject);
begin
     StatusBar1.Panels[2].Text:=timetostr(time);
     Application.ProcessMessages;
end;

procedure TFPrincipal.barracadasClick(Sender: TObject);
begin
     BarraCadas.Checked:=not(BarraCadas.Checked);
     if not(barracadas.Checked) then
        ToolBar1.Visible:=false
     else ToolBar1.Visible:=true;
end;

procedure TFPrincipal.BarradeMovimento1Click(Sender: TObject);
begin
     BarradeMovimento1.Checked:=not(BarradeMovimento1.Checked);
     if not(BarradeMovimento1.Checked) then
        ToolBar2.Visible:=false
     else ToolBar2.Visible:=true;
end;

procedure TFPrincipal.BarradeRelatorios1Click(Sender: TObject);
begin
     BarradeRelatorios1.Checked:=not(BarradeRelatorios1.Checked);
     if not(BarradeRelatorios1.Checked) then
        ToolBar3.Visible:=false
     else ToolBar3.Visible:=true;
end;

procedure TFPrincipal.OrdemdeServio1Click(Sender: TObject);
begin
     Application.CreateForm(TFOServico, FOServico);
     FOServico.TOServico.Open;
     FOServico.TVeiculos.Open;
     FOServico.TTServico.Open;
     FOServico.TOSerRe.Open;
     FOServico.TOficina.Open;
     FOServico.QTotal.Open;
end;

procedure TFPrincipal.Empresas1Click(Sender: TObject);
begin
     Application.CreateForm(TFEmpresa, FEmpresa);
     FEmpresa.TEmpresa.Open;
     FEmpresa.TCidade.Open;
     FEmpresa.TEstado.Open;
end;

procedure TFPrincipal.SpeedButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton1.Hint;
end;

procedure TFPrincipal.SpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton2.Hint;
end;

procedure TFPrincipal.SpeedButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton3.Hint;
end;

procedure TFPrincipal.SpeedButton4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton4.Hint;
end;

procedure TFPrincipal.SpeedButton5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton5.Hint;
end;

procedure TFPrincipal.SpeedButton13MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton13.Hint;
end;

procedure TFPrincipal.SpeedButton7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton7.Hint;
end;

procedure TFPrincipal.SpeedButton8MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton8.Hint;
end;

procedure TFPrincipal.SpeedButton6MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton6.Hint;
end;

procedure TFPrincipal.SpeedButton11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton11.Hint;
end;

procedure TFPrincipal.SpeedButton12MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton12.Hint;
end;

procedure TFPrincipal.ToolBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=ToolBar1.Hint;
end;

procedure TFPrincipal.ToolBar2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=ToolBar2.Hint;
end;

procedure TFPrincipal.ToolBar3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=ToolBar3.Hint;
end;

procedure TFPrincipal.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:='';
end;

procedure TFPrincipal.StatusBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:='';
     if (StatusBar1.Width-150 < X) and (X < StatusBar1.Width-75) then
        StatusBar1.Hint:=FormatDateTime('DDDD , DD "de" MMMM "de" YYYY',Date)
     else StatusBar1.Hint:='';
end;

procedure TFPrincipal.SpeedButton14MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton14.Hint;
end;

procedure TFPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     StatusBar1.Panels[0].Text:='';
end;

procedure TFPrincipal.Sobre1Click(Sender: TObject);
begin

end;

procedure TFPrincipal.Posto1Click(Sender: TObject);
begin
     Application.CreateForm(TFPosto, FPosto);
     FPosto.TPosto.Open;
end;

procedure TFPrincipal.SpeedButton15MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton15.Hint;
end;

procedure TFPrincipal.Sistema2Click(Sender: TObject);
var
   diretorio:string;
begin
     {$I-} MkDir('C:\Backup');
     GetDir(0,diretorio);
     ChDir(diretorio); {$I+}
     //WinExec('arj.exe a -v1440 c:\Backup\backsys.arj -y',5);
end;

procedure TFPrincipal.BancodeDados1Click(Sender: TObject);
var
   diretorio:string;
begin
     {$I-} MkDir('C:\Backup');
     GetDir(0,diretorio);
     ChDir(diretorio+'\Database'); {$I+}
     //WinExec('arj.exe a -v1440 c:\Backup\backdb.arj -y',5);
end;

procedure TFPrincipal.Sistema3Click(Sender: TObject);
var
   diretorio:string;
begin
     {$I-} MkDir('C:\Backup');
     GetDir(0,diretorio);
     ChDir(diretorio); {$I+}
     //WinExec('arj.exe x -va c:\Backup\backsys.arj -y',5);
end;

procedure TFPrincipal.BancodeDados2Click(Sender: TObject);
var
   diretorio:string;
begin
     {$I-} MkDir('C:\Backup');
     GetDir(0,diretorio);
     ChDir(diretorio+'\Database'); {$I+}
     //WinExec('arj.exe x -va c:\Backup\backdb.arj -y',5);
end;

procedure TFPrincipal.Pneu1Click(Sender: TObject);
begin
     Application.CreateForm(TFPneu, FPneu);
     FPneu.TPneu.Open;
end;

procedure TFPrincipal.ControledePneu1Click(Sender: TObject);
begin
     Application.CreateForm(TFPneuBO, FPneuBO);
     FPneuBO.TPneu.Open;
     FPneuBO.TPneuBO.Open;
     FPneuBO.TVeiculo.Open;
end;

procedure TFPrincipal.SpeedButton16MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton16.Hint;
end;

procedure TFPrincipal.SpeedButton17MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton17.Hint;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
     StatusBar1.Panels[1].Text:=DateToStr(Date);
end;

procedure TFPrincipal.Oficinas1Click(Sender: TObject);
begin
     Application.CreateForm(TFOficina, FOficina);
     FOficina.TOficina.Open;
     FOficina.TCidade.Open;
     FOficina.TEstado.Open;
end;

procedure TFPrincipal.SpeedButton18MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton18.Hint;
end;

procedure TFPrincipal.Caminho1Click(Sender: TObject);
begin

end;

procedure TFPrincipal.LanamentosEspeciaisaPagar1Click(Sender: TObject);
begin
     Application.CreateForm(TFLanEspPag, FLanEspPag);
     FLanEspPag.TFornecedores.Open;
     FLanEspPag.TPlanoContN1.Open;
     FLanEspPag.TPlanoContN2.Open;
     FLanEspPag.TLancamento.Open;
end;

procedure TFPrincipal.ContasaReceber1Click(Sender: TObject);
begin
     Application.CreateForm(TFLanEspRecb, FLanEspRecb);
     FLanEspRecb.TLancamento.Open;
     FLanEspRecb.TCliente.Open;
     FLanEspRecb.TFornecedor.Open;
     FLanEspRecb.THistorico.Open;
end;

procedure TFPrincipal.PlanodeContas1Click(Sender: TObject);
begin
     Application.CreateForm(TFPlanoConta, FPlanoConta);
     FPlanoConta.TPlanoContN1.Open;
     FPlanoConta.TPlanoContN2.Open;
     FPlanoConta.TOrcamento.Open;
end;

procedure TFPrincipal.HistoricodeCaixa1Click(Sender: TObject);
begin
     Application.CreateForm(TFHistorico, FHistorico);
     FHistorico.THistorico.Open;
end;

procedure TFPrincipal.Manuten1Click(Sender: TObject);
begin

end;

procedure TFPrincipal.Custos1Click(Sender: TObject);
begin

end;

procedure TFPrincipal.SpeedButton9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton9.Hint;
end;

procedure TFPrincipal.SpeedButton10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     StatusBar1.Panels[0].Text:=SpeedButton10.Hint;
end;

end.
