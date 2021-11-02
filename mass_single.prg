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
 %lic="kagan" 
 %maxlag = "11" 
!MakeLibreFormulas=0
!AddCriterionTable=1
!keepAbstract=1
!KeepEquation=1
!PlotShortRun=1
!KeepPlot=0
!rest=3  	' [2] ""No intercept and no trend""  ""intercept and no trend"" ""Intercept and trend""


'%ulkeler="A0 A001 A007 A009 A011 A013 A015 A017 A019 A1 A101 A2 A205 A207 A211 A213 A215 A217 A3 A303 A305 A4 A5 A501 A503 A505 A507 A509 A511 A515 A517 A6 A601 A603 A605 A607 A609 A611 A613 A615 A7 A701 A703 A705 A8 A801 A803 A805 A807 A809 A811 A813 A9 A901 A903 "
%ulkeler="A7"' A701 A703 A705 A8 A801 A803 A805 A807 A809 A811 A813 A9 A901 A903 "
%cr="sc aic" '  sil"
%yontem="aa as sa ss"

 !ulkke=  @wcount(%ulkeler )
 !crr= @wcount(%cr )
 !yoo=  @wcount(%yontem )
 
%MyOutputs=@getnextname("Karamelikli_OutPuts")
%MyCountry=@getnextname("Karamelikli_Country")
%MyOutputs2=@getnextname("Karamelikli_OutPuts2")
%MyCountry2=@getnextname("Karamelikli_Country2")
%MyCr=@getnextname("Karamelikli_Cr")
%MyCr2=@getnextname("Karamelikli_Cr2")
%MyYontem=@getnextname("Karamelikli_Yontem")
%MyYontem2=@getnextname("Karamelikli_Yontem2")

spool {%MyOutputs}
spool {%MyOutputs2}

 
	      	    
 for !jeee=1 to  !ulkke
        spool {%MyCountry}
        spool {%MyCountry2}
        %ulke=@word(%ulkeler,!jeee)
        %vars="  fnumber_D11 TER01Y10" 
        %asymVar="TER01Y10" 
        %evars="dummy1 dummy2"
 


    'pageselect {%ulke}
        for !ieee=1 to  !crr
                %bcr=@word(%cr,!ieee)
                if %bcr="aic" then
                    !Emethod=1
                    !criterion=1
                else
                    if %bcr="sc" then
                        !Emethod=1
                        !criterion=2
                    else
                        !criterion=1
                        !Emethod=2
                    endif
                endif
                spool {%MyCr}
                spool {%MyCr2}
                
                for !keee=1 to  !yoo
                    spool {%MyYontem}
                    
                    %yo=@word(%yontem ,!keee)
                        if %yo="aa" then
                                %asvars=%asymVar	
                                %alvars=%asymVar
                        else
                        if  %yo="as" then
                                %asvars=%asymVar	
                                %alvars=""
                        else
                        if  %yo="sa" then
                                %asvars="" 	
                                %alvars=%asymVar
                        else
                                %asvars="" 	
                                %alvars=""
                        endif
                        endif
                        endif
                        
                        '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        include ".\Ardlim.prg"
                            %cikis="C:\benim\r_"+%ulke+"_"+%bcr+"_"+ %yo+".rtf"
                       '     output(r)  {%cikis}
                      '      print  {%sp}
                       '     output off
                        {%MyYontem}.append  {%OzetTable}
                         d {%OzetTable} 
                         {%MyYontem}.name  1 "Abstract"    
                        {%MyYontem}.append  {%eqname}
                         d {%eqname} 
                         {%MyYontem}.name  2 "Final"
                     
                      
                        '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    {%MyCr}.append  {%MyYontem}
                    {%MyCr}.name !keee %yo
                    d %MyYontem
                    
                    {%MyCr2}.append  {%sp}
                    {%MyCr2}.name !keee %yo
                    d   {%sp}
                    
                     '      @uiprompt( %eqname)
	      	  '  stop
                    
                next k
            {%MyCountry}.append  {%MyCr}   
            {%MyCountry}.name !ieee %bcr  
            d    %MyCr
            {%MyCountry2}.append  {%MyCr2}   
            {%MyCountry2}.name !ieee %bcr  
            d    %MyCr2
        next i
    
     {%MyOutputs}.append  {%MyCountry} 
    {%MyOutputs}.name !jeee %ulke   
   d %MyCountry  
   {%MyOutputs2}.append  {%MyCountry2} 
    {%MyOutputs2}.name !jeee %ulke   
   d %MyCountry2
    
 next j
 
    %cikis="C:\benim\"+%DosyaTuru+"_"+%ulke+"_"+%bcr+"_"+ %yo+"_"+ %LrexTur+".txt"
    output(t)  {%cikis}
    print  {%MyOutputs2}
    output off
    statusline "Finished"
d  zzz__*


