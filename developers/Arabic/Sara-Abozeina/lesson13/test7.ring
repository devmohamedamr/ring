/*
**	Application:define lines to be executed {even it is in the commentation area}
**	Author	   :Sara Abozeina
**	Date       :2017.12.25
*/

Load "stdlib.ring"
$nLines=[]  
eval("?'Enter file name' Give fname")
eval("?'Enter no of start read line' Give $nStart")
eval("?'Enter no of end read line' Give $nend")
new natural{
		goto
}
		
Class Natural
	goto
	func getgoto
		n=0 
		fp = fopen(fname,"r")
		while not feof(fp)	
			Lines=Readline(fp) 
			n++ 
			if n=$nStart-1
				while not feof(fp)
					Lines=Readline(fp) 
					$nLines+Lines  n++
					if n=$nend
						eval(list2str($nLines))
						exit 2
					 ok
				end
			ok					
		end
		fclose(fp)
 		
	return $nLines

### i define lines from 42 to 43 to be executed
/*
see "k" 
see"s"
for x=1 to 10
?x next
for y=11 to 15
	? y next
*/

