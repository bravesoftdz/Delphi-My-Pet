unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sMemo, ExtCtrls, sPanel,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, sLabel,
  GridsEh, DBAxisGridsEh, DBGridEh, sEdit, DB, ADODB, DateUtils;

type
  TForm7 = class(TForm)
    sPanel1: TsPanel;
    sEdit1: TsEdit;
    DBGridEh1: TDBGridEh;
    sLabel1: TsLabel;
    sBitBtn1: TsBitBtn;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit4, Unit5;

{$R *.dfm}

procedure TForm7.sBitBtn1Click(Sender: TObject);
begin
with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('from Penitipan');
    SQL.Add('where [No Form] Like ' + QuotedStr('%' + sEdit1.text + '%'));
    Open;
    sEdit1.SetFocus;
  end;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('from Penitipan');
    Open;
end;
  end;

procedure TForm7.DBGridEh1DblClick(Sender: TObject);
Var a,b,c,d : Real;
begin
Form5.sEdit2.Text := Form7.DBGridEh1.Fields[0].AsString;
Form5.sEdit3.Text := Form7.DBGridEh1.Fields[1].AsString;
Form5.sEdit4.Text := Form7.DBGridEh1.Fields[4].AsString;
Form5.sEdit6.Text := Form7.DBGridEh1.Fields[5].AsString;
Form5.Edit2.Text := Form7.ADOTable1.Fields[9].AsString;
Form5.Edit1.Text := Form7.DBGridEh1.Fields[10].AsString;
Form5.DateTimePicker1.Date := StrToDate(Form7.DBGridEh1.Fields[7].AsString);
Form5.Edit3.Text := IntToStr(DaysBetween(Form5.DateTimePicker2.Date,Form5.DateTimePicker1.Date));
a := StrToFloat(Form5.Edit1.Text);
b := StrToFloat(Form5.Edit2.Text);
c := StrToFloat(Form5.Edit3.Text);
d := a*c+b;
Form5.Edit4.Text := FloatToStr(d);
end;

end.
