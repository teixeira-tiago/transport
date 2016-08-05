program Transport;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

uses
{$IFnDEF FPC}
{$ELSE}
  Interfaces,
{$ENDIF}
  Forms,
  Uprincipal in 'Uprincipal.pas' {FPrincipal},
  UClientes in 'UClientes.pas' {FClientes},
  UCidades in 'UCidades.pas' {FCidades},
  UEstados in 'UEstados.pas' {FEstados},
  UFornecedores in 'UFornecedores.pas' {FFornecedores},
  UMotoristas in 'UMotoristas.pas' {FMotoristas},
  UVeiculos in 'UVeiculos.pas' {FVeiculos},
  Ubancos in 'Ubancos.pas' {FBancos},
  UDespesas in 'UDespesas.pas' {FDespesas},
  UBViagem in 'UBViagem.pas' {FBViagem},
  Uteis in 'Uteis.pas',
  UOServico in 'UOServico.pas' {FOServico},
  UEmpresa in 'UEmpresa.pas' {FEmpresa},
  UPosto in 'UPosto.pas' {FPosto},
  UPneu in 'UPneu.pas' {FPneu},
  UPneuBO in 'UPneuBO.pas' {FPneuBO},
  UOficina in 'UOficina.pas' {FOficina},
  ULanEspRecb in 'ULanEspRecb.pas' {FLanEspRecb},
  ULanEspPag in 'ULanEspPag.pas' {FLanEspPag},
  UPlanoConta in 'UPlanoConta.pas' {FPlanoConta},
  UHistorico in 'UHistorico.pas' {FHistorico};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Transport';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
