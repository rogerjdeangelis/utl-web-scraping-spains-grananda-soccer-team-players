%let pgm=utl-web-scraping-spains-grananda-soccer-team-players;                                       
                                                                                                     
Web scraping spains grananda soccer team players                                                     
                                                                                                     
github                                                                                               
https://tinyurl.com/y7f6nod9                                                                         
https://github.com/rogerjdeangelis/utl-web-scraping-spains-grananda-soccer-team-players              
                                                                                                     
other web scraping in R Python SAS                                                                   
https://tinyurl.com/yahzjpau                                                                         
https://github.com/rogerjdeangelis?utf8=%E2%9C%93&tab=repositories&q=scrap&type=&language=           
                                                                                                     
https://tinyurl.com/yb57542v                                                                         
https://stackoverflow.com/questions/54245728/scraping-from-transfermarkt-with-r-package-rvest        
                                                                                                     
Julius Vainora profile                                                                               
https://stackoverflow.com/users/1320535/julius-vainora                                               
                                                                                                     
                                                                                                     
INPUT (Web Page)                                                                                     
================                                                                                     
                                                                                                     
https://tinyurl.com/y9chyp4t                                                                         
https://www.transfermarkt.es/fc-granada/startseite/verein/16795                                      
                                                                                                     
                                                                                                     
+------------------------------------------------------------+                                       
|                                                            |                                       
|   ____                           _          ____ _____     |                                       
|  / ___|_ __ __ _ _ __   __ _  __| | __ _   / ___|  ___|    |                                       
| | |  _| '__/ _` | '_ \ / _` |/ _` |/ _` | | |   | |_       |                                       
| | |_| | | | (_| | | | | (_| | (_| | (_| | | |___|  _|      |                                       
|  \____|_|  \__,_|_| |_|\__,_|\__,_|\__,_|  \____|_|        |                                       
|                                                            |                                       
+---------+--------------------------------------------------+                                       
|   ____  |                                                  |                                       
|  / ___| |        ___                                       |                                       
| | |     |       / _ \    Liga:  EspañaSegunda División     |                                       
| | |___  |      | (_) |   Puesto: 1                         |                                       
|  \____| |       \___/    En Liga desde hace: 2 años        |                                       
|  _____  |                                                  |                                       
| |  ___| |      LaLiga2                                     |                                       
| | |_    |                                                  |                                       
| |  _|   |                                                  |                                       
| |_|     |                                                  |                                       
+---------+--------------------------------------------------+                                       
|                                                            |                                       
| +-+                                                        |                                       
| |1|  Aarón Escandell                                       |                                       
| +-+                                                        |                                       
|                                                            |                                       
| +-+                                                        |                                       
| |8|  Víctor Díaz                                           |                                       
| +-+                                                        |                                       
|                                                            |                                       
| +-+                                                        |                                       
| |9|  Fede San Emeterio                                     |                                       
| +-+                                                        |                                       
|                                                            |                                       
| ...                                                        |                                       
|                                                            |                                       
+------------------------------------------------------------+                                       
                                                                                                     
                                                                                                     
EXAMPLE OUTPUT                                                                                       
--------------                                                                                       
                                                                                                     
WORK.WANT total obs=22                                                                               
                                                                                                     
   PLAYERS                                                                                           
                                                                                                     
   Aarón Escandell                                                                                   
   Víctor Díaz                                                                                       
   Fede San Emeterio                                                                                 
   ...                                                                                               
   Álvaro Vadillo                                                                                    
   Adrián Ramos                                                                                      
   Rodri                                                                                             
                                                                                                     
                                                                                                     
PROCESS                                                                                              
=======                                                                                              
                                                                                                     
%utl_submit_r64('                                                                                    
library(rvest);                                                                                      
library(SASxport);                                                                                   
url <- "https://www.transfermarkt.es/fc-granada/startseite/verein/16795";                            
webpage <- read_html(url);                                                                           
players_html  <- html_nodes(webpage,"#yw1 span.hide-for-small a.spielprofil_tooltip");               
players <- as.data.frame(html_text(players_html));                                                   
players[]<-lapply(players, function(x) if(is.factor(x)) as.character(x) else x);                     
colnames(players)<-"Players";                                                                        
write.xport(players,file="d:/xpt/want.xpt");                                                         
');                                                                                                  
                                                                                                     
libname xpt xport "d:/xpt/want.xpt";                                                                 
data want;                                                                                           
  set xpt.players;                                                                                   
run;quit;                                                                                            
libname xpt clear;                                                                                   
                                                                                                     
                                                                                                     
                                                                                                     
