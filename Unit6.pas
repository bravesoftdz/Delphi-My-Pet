unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, Buttons, sBitBtn, GridsEh, DBAxisGridsEh, DBGridEh, sLabel,
  ExtCtrls, sPanel;

type
  TForm6 = class(TForm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sPanel2: TsPanel;
    sLabel2: TsLabel;
    DBGridEh1: TDBGridEh;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sPanel3: TsPanel;
    sLabel3: TsLabel;
    DBGridEh2: TDBGridEh;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sPanel4: TsPanel;
    sLabel4: TsLabel;
    DBGridEh3: TDBGridEh;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.sStatusBar1.Panels[2].Text := 'Ready';
end;

end.
