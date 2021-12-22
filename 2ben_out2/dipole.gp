#1D=3.33564×10−30 C・m=2.082×10−11[e・m]=0.2082 [e・Ang]
set term pdfcairo
set output "dipole.pdf"
set xrange [0.0:1.2]
plot "dipole.txt" u 1:($2/0.2082) ps 3 t "Dx[D]",\
 "dipole.txt" u 1:($3/0.2082) ps 3 t "Dy[D]" ,\
 "dipole.txt" u 1:($4/0.2082) ps 3 t "Dz[D]" ,\