unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.Grids, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Chart1: TChart;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Button1: TButton;
    Series1: TLineSeries;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N, M, K, L: integer;
  x, y, c: array of real;
  A: array of array of real;
  G: real;

implementation

{$R *.dfm}

uses Unit2;

procedure Gorn(M: integer; t: real; c: array of real);
var
  i: integer;
begin
  G := c[M+1];
  for i := M downto 1 do G := G * t + C[i];

end;

procedure Perest;
var
  Str, Col, Num: integer;
  Max, Prom: real;
begin
  Max := abs(A[K,K]);
  for Str := K+1 to M+1 do begin
    if Max < abs(A[Str,K]) then begin
      Max := abs(A[Str,K]);
      Num := Str;
    end;
  end;

  for Col := K to M+2 do begin
    Prom := A[K,Col];
    A[K,Col] := A[Num,Col];
    A[Num,Col] := Prom;
  end;


end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j, p: integer;
  xP, Mn, S, t: real;
begin
  StringGrid1.Cells[0,1] := 'X[i]';
  StringGrid1.Cells[0,2] := 'Y[i]';

  if (Edit1.Text <> '') and (Edit2.Text <> '') then begin
    StringGrid1.ColCount := StrToInt(Edit1.Text) + 1;
    StringGrid2.ColCount := StrToInt(Edit2.Text) + 3;
    StringGrid2.RowCount := StrToInt(Edit2.Text) + 2;
    StringGrid3.ColCount := StrToInt(Edit2.Text) + 1;
    for i := 1 to StrToInt(Edit2.Text) + 1 do
      StringGrid3.Cells[i-1,0] := 'C(' + IntToStr(i) + ')';
  end;

  for i := 1 to StrToInt(Edit2.Text) + 2 do
    for j := 1 to StrToInt(Edit2.Text) + 3 do
      StringGrid2.Cells[j,i] := '';

  for i := 1 to StrToInt(Edit1.Text) do begin
    if StringGrid1.Cells[i,1] = '' then StringGrid1.Cells[i,1] := IntToStr(Random(10));
    if StringGrid1.Cells[i,2] = '' then StringGrid1.Cells[i,2] := IntToStr(Random(10));
  end;

  N := StrToInt(Edit1.Text);
  M := StrToInt(Edit2.Text);

  SetLength(x, N+1);
  SetLength(y, N+1);
  SetLength(c, M+2);
  SetLength(A, M+2, M+3);

  Chart1.Series[0].Clear;
  for i := 1 to N do begin
    x[i] := StrToFloat(StringGrid1.Cells[i,1]);
    y[i] := StrToFloat(StringGrid1.Cells[i,2]);
    Chart1.Series[0].AddXY(x[i], y[i]);
  end;

  for i := 1 to M+1 do begin
    p := i-1;
    for j := 1 to M+1 do begin
      A[i,j] := 0;
      for K := 1 to N do begin
        xP := 1;
        if P > 0 then for L := 1 to p do xP := xP * x[K];
        A[i,j] := A[i,j] + xP;
      end;
      p := p + 1;
    end;
  end;

  for i := 1 to M+1 do
    for j := 1 to M+1 do
      StringGrid2.Cells[j,i] := FloatToStr(A[i,j]);

  for i := 1 to M+1 do begin
    p := i-1;
    A[i,M+2] := 0;
    if p > 0 then
      for L := 1 to p do xP := xP * x[K];
    A[i,M+2] := A[i,M+2] + y[K] * xP;
  end;

  for i := 1 to M+1 do
    StringGrid2.Cells[M+2,i] := FloatToStr(A[i,M+2]);

  for K := 1 to M do begin
    for i := K+1 to M+1 do begin
      if A[K,K] = 0 then Perest;
      Mn := A[i,K] / A[K,K];
      for j := K to M+2 do
        A[i,j] := A[i,j] - Mn * A[K,j];

    end;
  end;

  c[M+1] := A[M+1, M+2] / A[M+1, M+1];
  for i := M downto 1 do begin
    S := 0;
    for j := i+1 to M+1 do S := S + A[i,j] * c[j];
    c[i] := (A[i,M+2] - S) / A[i,i];
  end;
  for i := 1 to M+1 do StringGrid3.Cells[i-1,1] := FloatToStr(c[i]);

  Chart1.Series[1].Clear;
  t := x[1];
  while t <= x[N] do begin
    Gorn(M, t, c);
    Chart1.Series[1].AddXY(t, G);
    t := t + (x[N] - x[1]) / 100;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.Show;
end;

end.
