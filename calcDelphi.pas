unit calcDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btn7: TButton;
    btn4: TButton;
    btn1: TButton;
    btnX: TButton;
    btn6: TButton;
    btn5: TButton;
    btnDiv: TButton;
    btn9: TButton;
    btn8: TButton;
    btn2: TButton;
    btnM: TButton;
    btn3: TButton;
    btn0: TButton;
    btnMais: TButton;
    btnC: TButton;
    btnIgual: TButton;
    lblResult: TLabel;
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnXClick(Sender: TObject);
    procedure btnMClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure lblDivClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num: String;
  operacao: integer;
  num1: Double;
  num2: Double;
  resultado:Double;

implementation

{$R *.dfm}

//btnDiv.color := clblue;

procedure TForm1.btn0Click(Sender: TObject);
begin

  lblResult.Caption:= num+'0';
  num := num+'0';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin

  lblResult.Caption:= num+'1';
  num := num+'1';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin

  lblResult.Caption:= num+'2';
  num := num+'2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin

  lblResult.Caption:= num+'3';
  num := num+'3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin

  lblResult.Caption:= num+'4';
  num := num+'4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin

  lblResult.Caption:= num+'5';
  num := num+'5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin

  lblResult.Caption:= num+'6';
  num := num+'6';
end;

procedure TForm1.btn7Click(Sender: TObject);



begin
  lblResult.Caption := num+'7';
   num := num+'7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin

  lblResult.Caption:= num+'8';
  num := num+'8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin

  lblResult.Caption:= num+'9';
  num := num+'9';
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  lblResult.Caption:= '0.0';
  num:='';
  num1 := 0;
  num2 := 0;
end;

procedure TForm1.btnDivClick(Sender: TObject);





begin
  num:=' ';
  num2:= strToFloat(lblResult.Caption);
  if num1 = 0 then
  begin
    num1 := num2*num2;
  end;
  resultado := num1/num2;
  lblResult.Caption:= floatToStr(resultado);
  operacao:=4;
  num1:= strToFloat(lblResult.Caption);

end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin

//Tbutton(sender)=btnIgual
    if operacao=4  then
  begin
    num2 := strToFloat(lblResult.Caption);
    resultado := num1/num2;
    lblResult.Caption := FloatTostr(resultado);
    num1 := 0;

  end else
  begin
    if operacao=3  then
  begin
    num2 := strToFloat(lblResult.Caption);
    resultado := num1*num2;
    lblResult.Caption := FloatTostr(resultado);
    num1 := 0;
    num2 := 0;
  end else
  begin
    if operacao=2  then
  begin
    num2 := strToFloat(lblResult.Caption);
    resultado := num1-num2;
    lblResult.Caption := FloatTostr(resultado);
    num1 := 0;
  end else
  begin
    if operacao=1  then
  begin
    num2 := strToFloat(lblResult.Caption);
    resultado := num1+num2;
    lblResult.Caption := FloatTostr(resultado);
    num1 := 0;
    num2 := 0;

  end;
  end;
  end;
  end;
end;

procedure TForm1.btnMaisClick(Sender: TObject);
begin
  num:=' ';
  num2:= strToFloat(lblResult.Caption);
  resultado := num1+num2;
  lblResult.Caption:= floatToStr(resultado);
  operacao:=1;
  num1:= strToFloat(lblResult.Caption);
end;

procedure TForm1.btnMClick(Sender: TObject);
begin
  num:=' ';
  num2:= strToFloat(lblResult.Caption);
  if num1 = 0 then
  begin
    num1 := num2+num2;
  end;
  resultado := num1-num2;
  lblResult.Caption:= floatToStr(resultado);
  operacao:=2;
  num1:= strToFloat(lblResult.Caption);
end;

procedure TForm1.btnXClick(Sender: TObject);
begin
  num:=' ';
  num2:= strToFloat(lblResult.Caption);
  if num1 = 0 then
  begin
    num1 := 1;
  end;
  resultado := num1*num2;
  lblResult.Caption:= floatToStr(resultado);
  operacao:=3;
  num1:= strToFloat(lblResult.Caption);
end;

procedure TForm1.lblDivClick(Sender: TObject);
begin
 num:=' ';
  num2:= strToFloat(lblResult.Caption);
  if num1 = 0 then
  begin
    num1 := num2*num2;
  end;
  resultado := num1/num2;
  lblResult.Caption:= floatToStr(resultado);
  operacao:=4;
  num1:= strToFloat(lblResult.Caption);

end;

end.
