module tb();
wire sum,carry;
reg a,b,cin;

fulladder uut(sum,carry,a,b,cin);
initial begin
$monitor("time=%t a=%b b=%b cin=%b sum=%b carry=%b",$time,a,b,cin,sum,carry);
 a=0;  b=0;  cin=0;
#100
$finish();
end
always #5 cin=~cin;
always   #10 b=~b;
 always #20 a=~a;
    
