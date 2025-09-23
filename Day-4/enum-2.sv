module tb;
  typedef enum {GREEN, YELLOW, RED, BLUE} color_set_1;
  typedef enum {MAGENTA=2, VIOLET=7, PURPLE, PINK} color_set_2;
  typedef enum {BLACK[4]} color_set_3;
  typedef enum {RED[3] = 5} color_set_4;
  typedef enum {YELLOW[3:5]} color_set_5;
  typedef enum {WHITE[3:5] = 4} color_set_6;
  initial begin
    color_set_1 c1;
    color_set_2 c2;
    color_set_3 c3;
    color_set_4 c4;
    color_set_5 c5;
    color_set_6 c6;
    c1=YELLOW;
    $display("color1=%0d,name=%s",c1,c1.name());
    c2=PURPLE;
    $display("color2=%0d,name=%s",c2,c2.name());
    c3=BLACK3;
    $display("color3=%0d,name=%s",c3,c3.name());
	c4=RED1;
    $display("color4=%0d,name=%s",c4,c4.name());
  end
endmodule
