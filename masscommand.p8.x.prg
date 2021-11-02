!ifVarLar=1 'subroutineler kapatýlsýn diye var.
include ".\libs.hardl.prg"
include ".\libs.general.prg"
include ".\settings.prg"
include ".\libs.tests.prg"

!result=1
!debug =0
!displayIT=0 
if !debug = 1 then
	logmode +debug
else 
	logmode +addin
endif
%yontem="ss aa"

 %asymVar=" lvol" 
%LrexTur="yok"

 %lic="kagan" 
 %maxlag = "11" 
%evars="gfc"
!MakeLibreFormulas=0
!AddCriterionTable=0
!keepAbstract=1
!KeepEquation=1
!PlotShortRun=0
!KeepPlot=0
 !KeepMainFrame=1
!rest=2	 '[2] "1"No intercept and no trend""  "2"intercept and no trend"" "3"Intercept and trend""
%cr="aic" 
!DifferentAsymLag=1

%DosyaTuru="X"
%industries="LX01 LX02 LX03 LX04 LX05 LX07 LX08 LX09 LX10 LX11 LX12 LX13 LX15 LX16 LX17 LX18 LX19 LX20 LX21 LX22 LX23 LX24 LX25 LX26 LX27 LX28 LX29 LX30 LX31 LX32 LX33 LX34 LX35 LX36 LX37 LX38 LX39 LX40 LX41 LX42 LX43 LX44 LX45 LX46 LX47 LX48 LX49 LX50 LX51 LX52 LX53 LX54 LX55 LX56 LX57 LX58 LX59 LX60 LX61 LX62 LX63 LX64 LX65 LX66 LX67 LX68 LX69 LX70 LX71 LX72 LX73 LX74 LX75 LX76 LX78 LX79 LX80 LX81 LX82 LX83 LX84 LX85 LX86 LX87 LX88 LX89 LX90 LX91 LX92 LX93 LX94 LX95 LX96 LX97 LX99 LX100"

%indVarsHere="lygr lrer lvol"

!siradaki=  @wcount(%industries )


for !siraki1=1 to  !siradaki 
%ulkeler=@word(%industries,!siraki1 )
include ".\masscommand7.general.libs.prg"
 next j

