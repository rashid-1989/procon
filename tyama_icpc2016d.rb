#!/usr/bin/ruby
H,W=DATA.gets.split.map(&:to_i)
M=DATA.map(&:chomp)
D=[[-1,0],[0,-1],[1,0],[0,1]]
Q=[[0,0]]
G=[W-1,H-1]
P={[0,0]=>[0,0]}
while !Q.empty?
	cur=Q.shift
	D.each{|x,y|
		nxt=[cur[0]+x,cur[1]+y]
		if 0<=nxt[0]&&nxt[0]<W && 0<=nxt[1]&&nxt[1]<H && M[nxt[1]][nxt[0]]!='*' && !P.has_key?(nxt)
			P[nxt]=cur
			Q<<nxt
		end
	}
end
r=''
z=G
while P.has_key?(z) && P[z]!=z
	r<<M[z[1]][z[0]] if M[z[1]][z[0]]!=?+
	z=P[z]
end
puts r.reverse # => Congratulations!\nhttp://goo.gl/vKgtTr

__END__
40 80
++ht+t*/++*+++*+++++*+++*+++m+++++*+++++Looks+Good+To+Me++++***+*+********+****+
*+***+*+*+*+*+*+***+*+*+*********+*+**************+********+**+a*+*++++++*+a+y++
*++C*p*/*+*+*+*+*+*+*+*+*+++++++*+*+++++/+++**+++*+*+++*++++*++*+++W****r**+*+**
*+*+*+:+*+*+*+++*+*+*+*+*+*****+*+*****+******+*+*+*+*+*+**+++**+****++*+**+*+*+
*+*+***********+*+*+*+***+*+++*+*+*+++*+*++++++*++*++*+*+**+****+++*+++++*+w*+*+
*+*++++o++++++*+*+*+*+*+*+*+*+*+++***+*+*+****+**+++**+*++*+*+++**+*o*****+**+*+
*+***********+*+*+*+*+*+*+*+*******+*+*+*+*+**+*******+****+***+**+*+*++++g**+*+
*++f+++t+++p*n*+*L*+*+*++G*+++++v+++*+*T*+*+**+*M***+*+**g+o++*+**+*+*n******+*+
***********+*+*+*+*+*****+*+***+***+*+*+*+*+**+*+++++*+**+***+*+**+*+++**+++++*+
*++//:++++++*++**+*++++**+*+++*+*+++*+*+*+*+**+*+*+*+*+**+*K*+*+**+******+***+*+
*h************+**+****+**+*****+*+***+*+*+*+**+*+***+*+**+*+*+*+*++*++a+++******
*azure********+*+++++++**++x++++*+++++*+*+++**+*+***+*+**+*+*+*+*+**+*******+++*
*******++++++*g*+*****+***********+*************g********+*+*+*+*++*++v+++m++*+*
+++++*r+****+*+*+********o+++++++++++*++++h++++++++++++**+*+*+*+*+************+*
+****+a*+++*+*+*+**+++++*+**+*******+*+*+*******+*****+**+*+*+*+*+*++++go++++++*
+*++++*++++*+++*+*++***+*+****++++**n*+***+++++***+*+*t**+*+*+*+*+*+**+*****+*+*
+*+*+*++*********++**+++*+++**++**+++*+++**+***++++++++**+*+*+*+*+*+*+v+++K*+*+*
+*+*+*+*++++++++++**++*****+i*++*++*****++*++*++********++*+*+*+*+**++****++*++*
+*+*+*+*+**+*+******+*+++++*+*++*+*+++++*+**+*+*+i++++*++**+*+*+*+**/*++++*+**+*
+*+*+*+*+*+*+*+*+++*+*+++++*+*xx*+****+**n*++*+*+c++*+*+**++*+*+++*++*++++*++*+*
+*+*t*+*+++++++*+*+*l*+++++*+*++*s*++*++*+*+**t*+p++*+++**+**o*+***+****+***+*+*
+*+*+*++***+**+*+*+*+++++++*t*++*+*++*++*+*++*+*+c++***+**+**+*+*l++*++++++++*+*
+*+*+*++++*++*+*+*+*+*+++++*+*++*+*+++++*+**+*+*+**+++*++*+**+*+*+**++**+*****+*
+*+*+*++M+*++*+*+*+*+*+++++*+*++*+*+++++*+*++*+*+++*****+*+**+*+*+**+*++++++****
+*+*+u**++++**+*+*+*+*+++++*+*++*+*+*+++*\*+**+p***++++*+*++*+*+*+**+*++++**++++
+*+**+++****+++*+*+*++*****++*++*+!**+**++*++**+++++**+*+**+*+***+**+*****t++**+
++F****++++++***+*+**++a++++**++**+++++++***+********++*/**+*.+++g**++g++++**+*+
****************+*+****+******++***********++********+**+**+**+**+*++*******++*T
++*++++m++++e++++*++Fight!+Go+World+Finals!+*+*++++:++*++**+***********+++++*+*+
+***+******+****+******+******+******+***+***+*+*******+**+++++*++++u+++***+*+*+
+***+*+++**+*++*+******+******+******+***+**++*+++++/+++**+***+*+********+*+++++
+*+++++**++++**++++**+++++**+++++**+++++*++++**+**********+*+++*+*++++++++++*+*+
+*+***+**+**+**+**+**+******+***+****+***+*****+****+++++++*+***+*+**********+*+
+*+*+*++++*****+*****+*++++++***+*++*+*+++*+++++++**********+++++*++++e++++++**+
+*+***+**+*+++++*+++++******+***+*++*+*+*+*****+*++*++++*++++***************+**+
+*++A++**C*+++*C*+++*E++++*+P++++*++*T*+*E+++**D**+*+**+***********++++++++*+**+
+*+***+**+*+***+*+***+**+***+*****++++*+*+*****+**+*+*+++m+++v++++++******+*+**+
+*+*+*+**+**+*++**+**+*+**+++*++*+++*+*+*+*****+*++*+***********************+**+
+*+*+*+**++++**++++**+++++**+*++++*+*+*+*++++**+++**+Congratulations!++++++++**r
+******************************************************************************+