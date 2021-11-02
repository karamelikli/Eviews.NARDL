




 if !PlotShortRun=1 then
    !KeepPlot=1
 endif


 !ulkke=  @wcount(%ulkeler )
 !crr= @wcount(%cr )
 !yoo=  @wcount(%yontem )
 
 
%MyOutputs=@getnextname("a_OutPuts"+%LrexTur)
%MyOutputs2=@getnextname("a_OutPuts2"+%LrexTur)
%MyOutputsCusum=@getnextname("a_OCusum"+%LrexTur)
%MyOutputsGraph=@getnextname("a_OGraph"+%LrexTur)
%MyCountry=@getnextname("a_Country"+%LrexTur)
%MyCountry2=@getnextname("a_Country2"+%LrexTur)
%MyCountryCusum=@getnextname("a_CCusum"+%LrexTur)
%MyCountryGraph=@getnextname("a_CGraph"+%LrexTur)
%MyCr=@getnextname("a_Cr"+%LrexTur)
%MyCr2=@getnextname("a_Cr2"+%LrexTur)
%MyCrCusum=@getnextname("a_CrCusum"+%LrexTur)
%MyCrGraph=@getnextname("a_CrGraph"+%LrexTur)
%MyYontem=@getnextname("a_Yontem"+%LrexTur)
%MyYontem2=@getnextname("a_Yontem2"+%LrexTur)
%MyYontemCusum=@getnextname("a_YCusum"+%LrexTur)
%MyYontemGraph=@getnextname("a_YGraph"+%LrexTur)

spool {%MyOutputs}
spool {%MyOutputs2}
spool {%MyOutputsCusum}
spool {%MyOutputsGraph}

 for !jeee=1 to  !ulkke
        spool {%MyCountry}
        spool {%MyCountry2}
        spool {%MyCountryCusum}
        spool {%MyCountryGraph}
        %ulke=@word(%ulkeler,!jeee)
        %vars=""+%ulke+" "+%indVarsHere
       
     




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
                spool {%MyCrCusum}
                spool {%MyCrGraph}
                
                for !keee=1 to  !yoo
                    spool {%MyYontem}
                    spool {%MyYontemCusum}
                    spool {%MyYontemGraph}
                    
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

                        {%MyYontem}.append  {%OzetTable}
                         d {%OzetTable} 
                         {%MyYontem}.name  1 "Abstract"    
                        {%MyYontem}.append  {%eqname}
                        {%MyYontem}.name  2 "Final"
                         
                                {%MyYontemCusum}.append {%eqname}.rls(q)
                                {%MyYontemCusum}.name  1 "CUSUM"
                                {%MyYontemCusum}.append {%eqname}.rls(v)
                                {%MyYontemCusum}.name  2 "CUSUMSQ" 
                         
                     
                          d {%eqname} 
                        '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    {%MyCr}.append  {%MyYontem}
                    {%MyCr}.name !keee %yo
                    d %MyYontem
                            {%MyCrCusum}.append  {%MyYontemCusum}
                            {%MyCrCusum}.name !keee %yo
                            d %MyYontemCusum
                            
                            if !PlotShortRun=1 then 
                                {%MyCrGraph}.append  {%Graphs}
                                {%MyCrGraph}.name !keee %yo
							 d {%Graphs} 

                            endif
                                d %MyYontemGraph
                           
                    
                    
                    {%MyCr2}.append  {%sp}
                    {%MyCr2}.name !keee %yo
                    d   {%sp}
                next k
            {%MyCountry}.append  {%MyCr}   
            {%MyCountry}.name !ieee %bcr  
            d    %MyCr
            {%MyCountry2}.append  {%MyCr2}   
            {%MyCountry2}.name !ieee %bcr  
            d    %MyCr2
                    {%MyCountryCusum}.append  {%MyCrCusum}   
                    {%MyCountryCusum}.name !ieee %bcr  
                    d    %MyCrCusum
                    
                    if !PlotShortRun=1 then 
                        {%MyCountryGraph}.append  {%MyCrGraph}   
                        {%MyCountryGraph}.name !ieee %bcr  
                    endif
                    d    %MyCrGraph
                    
                    
                    
        next i
    
    {%MyOutputs}.append  {%MyCountry} 
    {%MyOutputs}.name !jeee %ulke   
    d %MyCountry  
    {%MyOutputs2}.append  {%MyCountry2} 
    {%MyOutputs2}.name !jeee %ulke   
    d %MyCountry2
        {%MyOutputsCusum}.append  {%MyCountryCusum} 
        {%MyOutputsCusum}.name !jeee %ulke   
        d %MyCountryCusum
        if !PlotShortRun=1 then 
            {%MyOutputsGraph}.append  {%MyCountryGraph} 
            {%MyOutputsGraph}.name !jeee %ulke   
        endif
        d %MyCountryGraph
    
 next j
 if !PlotShortRun=0 then 
 		d {%MyOutputsGraph} 
 else
 	
 endif
 
    %cikis="C:\benim\"+%DosyaTuru+"_"+%ulke+"_"+%bcr+"_"+ %yo+"_"+ %LrexTur+".txt"
    %saveFile="C:\benim\"+%DosyaTuru+"_"+%ulke+"_"+%bcr+"_"+ %yo+"_"+ %LrexTur+".wf1"
    output(t)  {%cikis}
    print  {%MyOutputs2}
    output off
 
'include ".\Ardlim.prg"
'output(r)  C:\cikti\results
'print  {%sp}
'output off

'include ".\settings.prg" 	'Reset settings

statusline "Finished"
d  zzz__*

wfsave {%saveFile}
