/**************************************************************************
 |                    STATA SETUP FILE FOR ICPSR 06422
 |        EURO-BAROMETER 41.0: TRADE ISSUES, BLOOD DONATION, AIDS,
 |                      AND SMOKING, MARCH-JUNE 1994
 |
 |                                                                        
 |  Please edit this file as instructed below.                            
 |  To execute, start Stata, change to the directory containing:          
 |       - this do file                                                   
 |       - the ASCII data file                                            
 |       - the dictionary file                                            
 |                                                                        
 |  Then execute the do file (e.g., do 06422-0001-statasetup.do)          
 |                                                                        
 **************************************************************************/

set mem 25m  /* Allocating 25 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */

set more off  /* This prevents the Stata output viewer from pausing the
                 process*/

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "raw-datafile-name" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.
        "my data" ==> The label you wish to assign to your data file (optional).

   Note:  We assume that the raw data, dictionary, and DDS (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "raw-datafile-name"
local dict "dictionary-filename"
local outfile "stata-datafile"
label data "My Data"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear

/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/


label data "EURO-BAROMETER 41.0: TRADE ISSUES, BLOOD DONATION, AIDS, AND SMOKING, MARCH-JUNE 1994 , Part 0001"

#delimit ;
label define V2        4 "FOURTH ICPSR EDITION, FEBRUARY 1998" ;
label define V3        1 "PART ONE" ;
label define V5        1 "FRANCE" 2 "BELGIUM" 3 "NETHERLANDS"
                       4 "WEST GERMANY" 5 "ITALY" 6 "LUXEMBOURG" 7 "DENMARK"
                       8 "IRELAND" 9 "UNITED KINGDOM" 10 "GREECE" 11 "SPAIN"
                       12 "PORTUGAL" 13 "EAST GERMANY" 14 "NORWAY"
                       15 "FINLAND" ;
label define V7        1 "FRANCE" 2 "BELGIUM" 3 "NETHERLANDS"
                       4 "WEST GERMANY" 5 "ITALY" 6 "LUXEMBOURG" 7 "DENMARK"
                       8 "IRELAND" 9 "GREAT BRITAIN" 10 "NORTHERN IRELAND"
                       11 "GREECE" 12 "SPAIN" 13 "PORTUGAL" 14 "EAST GERMANY"
                       15 "NORWAY" 16 "FINLAND" ;
label define V10       1 "FRANCE" 2 "BELGIUM" 3 "NETHERLANDS" 4 "GERMANY"
                       5 "ITALY" 6 "LUXEMBOURG" 7 "DENMARK" 8 "IRELAND"
                       9 "GREAT BRITAIN" 10 "NORTHERN IRELAND" 11 "GREECE"
                       12 "SPAIN" 13 "PORTUGAL" 14 "NORWAY" 15 "FINLAND" ;
label define V34       0 "<NA>" 1 "AT PRESENT ADDRESS" 2 "AT ANOTHER ADDRESS"
                       3 "DON'T KNOW IF REGISTERED" 4 "DOES NOT APPEAR"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V35       0 "<NA>" 1 "BELGIUM" 2 "DENMARK" 3 "GERMANY"
                       4 "GREECE" 5 "SPAIN" 6 "FRANCE" 7 "IRELAND" 8 "ITALY"
                       9 "LUXEMBURG" 10 "NETHERLANDS" 11 "PORTUGAL"
                       12 "UNITED KINGDOM (GREAT BRITAIN, N IRELAND"
                       13 "OTHER COUNTRIES" 14 "DON'T KNOW"
                       99 "<INAP, CODED 16 IN V7>" ;
label define V36       0 "<NA>" 1 "VERY SATISFIED" 2 "FAIRLY SATISFIED"
                       3 "NOT VERY SATISFIED" 4 "NOT AT ALL SATISFIED" 5 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V37       0 "<NA>" 1 "VERY SATISFIED" 2 "FAIRLY SATISFIED"
                       3 "NOT VERY SATISFIED" 4 "NOT AT ALL SATISFIED" 5 "DK" ;
label define V38       0 "<NA>" 1 "FREQUENTLY" 2 "OCCASIONALLY" 3 "NEVER"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V39       0 "<NA>" 1 "OFTEN" 2 "FROM TIME TO TIME" 3 "RARELY"
                       4 "NEVER" 5 "DK" 9 "<INAP, CODED 16 IN V7" ;
label define V40       0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V41       0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, 2 IN Q6; 15 & 16 IN V7>" ;
label define V42       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF PRODUCT"
                       2 "X IS PROD FR (FIRST ANSWER FROM Q.9)"
                       9 "<INAP, 2 IN Q6; 15 & 16 IN V7>" ;
label define V43       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF PRODUCT"
                       2 "X IS PROD FR (FIRST ANSWER FROM Q.9)"
                       9 "<INAP, 2 IN Q6; 15 & 16 IN V7>" ;
label define V44       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF PRODUCT"
                       2 "X IS PROD FR (FIRST ANSWER FROM Q.9)"
                       9 "<INAP, 2 IN Q6; 15 & 16 IN V7>" ;
label define V45       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF PRODUCT"
                       2 "X IS PROD FR (FIRST ANSWER FROM Q.9)"
                       9 "<INAP, 2 IN Q6; 15 & 16 IN V7>" ;
label define V46       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF PRODUCT"
                       2 "X IS PROD FR (FIRST ANSWER FROM Q.9)"
                       9 "<INAP, 2 IN Q6; 15 & 16 IN V7>" ;
label define V47       0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V48       0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V49       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF CHEESE"
                       2 "X IS A CHEESE FROM (FIRST ANSWER FR Q13)"
                       9 "<INAP 2 IN Q12; 15 & 16 IN V7>" ;
label define V50       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF CHEESE"
                       2 "X IS A CHEESE FROM (2ND ANSWER FR Q13)"
                       9 "<INAP 2 IN Q12; 15 & 16 IN V7>" ;
label define V51       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF CHEESE"
                       2 "X IS A CHEESE FROM (THIRD ANSWER FR Q13)"
                       9 "<INAP 2 IN Q12; 15 & 16 IN V7>" ;
label define V52       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF CHEESE"
                       2 "X IS A CHEESE FROM (4TH ANSWER FR Q13)"
                       9 "<INAP 2 IN Q12; 15 & 16 IN V7>" ;
label define V53       0 "<NA>" 1 "X IS COMMON NAME FOR A TYPE OF CHEESE"
                       2 "X IS A CHEESE FROM (FIFTH ANSWER FR Q13)"
                       9 "<INAP 2 IN Q12; 15 & 16 IN V7>" ;
label define V54       0 "<NA>" 1 "AT LEAST ONCE A WEEK"
                       2 "ABOUT EVERY TWO WEEKS" 3 "ABOUT EVERY MONTH"
                       4 "ABOUT EVERY 2-3 MONTHS" 5 "LESS OFTEN"
                       6 "(PRACTICALLY) NEVER" 7 "DK" 8 "<UNDOCUMENTED CODE>"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V55       0 "<NA>" 1 "AT LEAST ONCE A WEEK"
                       2 "ABOUT EVERY TWO WEEKS" 3 "ABOUT EVERY MONTH"
                       4 "ABOUT EVERY 2-3 MONTHS" 5 "LESS OFTEN"
                       6 "(PRACTICALLY) NEVER" 7 "DK" 8 "<UNDOCUMENTED CODE>"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V56       0 "<NA>" 1 "EVERYDAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE OR TWICE A WEEK" 4 "LESS OFTEN" 5 "NEVER"
                       6 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V57       0 "<NA>" 1 "EVERYDAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE OR TWICE A WEEK" 4 "LESS OFTEN" 5 "NEVER"
                       6 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V58       0 "<NA>" 1 "EVERYDAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE OR TWICE A WEEK" 4 "LESS OFTEN" 5 "NEVER"
                       6 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V59       0 "<NA>" 1 "A GREAT DEAL" 2 "TO SOME EXTENT"
                       3 "NOT MUCH" 4 "NOT AT ALL" 5 "DK" ;
label define V60       0 "<NA>" 1 "VERY WELL" 2 "QUITE WELL"
                       3 "NOT VERY WELL" 4 "NOT AT ALL WELL" 5 "DK" ;
label define V61       0 "<NA>" 1 "A GOOD THING" 2 "A BAD THING"
                       3 "NEITHER GOOD NOR BAD" 4 "DK" ;
label define V62       0 "<NA>" 1 "BENEFITED" 2 "NOT BENEFITED" 3 "DK" ;
label define V63       0 "<NA>" 1 "1 STANDING STILL" 2 "2" 3 "3" 4 "4" 5 "5"
                       6 "6" 7 "7 AS FAST AS POSSIBLE" 8 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V64       0 "<NA>" 1 "1 STANDING STILL" 2 "2" 3 "3" 4 "4" 5 "5"
                       6 "6" 7 "7 AS FAST AS POSSIBLE" 8 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V65       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V66       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V67       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V68       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V69       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V70       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V71       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V72       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V73       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V74       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V75       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V76       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V77       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V78       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V79       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V80       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V81       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V82       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V83       0 "<NA>" 1 "(NATIONAL) GOVERNMENT"
                       2 "THE EUROPEAN COMMUNITY" 3 "DK" ;
label define V84       0 "<NA>" 1 "VERY SATISFIED" 2 "FAIRLY SATISFIED"
                       3 "NOT VERY SATISFIED" 4 "NOT AT ALL SATISFIED" 5 "DK" ;
label define V85       0 "<NA>" 1 "YES" 2 "NO" 3 "DK" 9 "<INAP, NOT GREECE>" ;
label define V86       0 "<NA>" 1 "VERY IMPORTANT" 2 "IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT" 5 "DK"
                       9 "<INAP, NOT GREECE>" ;
label define V87       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V88       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V89       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V90       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V91       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V92       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V93       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V94       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V95       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V96       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V97       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V98       0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK" ;
label define V99       0 "<NA>" 1 "VERY HOPEFUL" 2 "RATHER HOPEFUL"
                       3 "RATHER FEARFUL" 4 "VERY FEARFUL" 5 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V100      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V101      0 "<NA>" 1 "A POSITIVE EFFECT"
                       2 "NOT A POSITIVE EFFECT" 3 "DK"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V102      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V103      0 "<NA>" 1 "YES CORRECT DATE MENTIONED"
                       2 "YES INCORRECT DATE MENTIONED"
                       3 "NO, DOES NOT KNOW THE DATE"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V104      0 "<NA>" 1 "WILL CERTAINLY GO AND VOTE"
                       2 "WILL PROBABLY GO AND VOTE"
                       3 "WILL PROBABLY NOT VOTE" 4 "WILL CERTAINLY NOT VOTE"
                       5 "OTHER ANSWER (SPONTANEOUS)" 6 "DK"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V105      0 "<NA>" 1 "NOT INTRSTD POLITICS OR ELECTIONS"
                       2 "NOT INTRSTD EUROPEAN ELECTIONS"
                       3 "LOST INTRST EUROPEAN MATTERS"
                       4 "NEVER BEEN INTRSTD EUROPEAN MATTERS"
                       5 "ALWAYS BEEN AGAINST EUROPE"
                       6 "AGAINST EVEN MORE EUROPE"
                       7 "NOT WELL ENOUGH INFORMED TO VOTE"
                       8 "RESULT IS FOREGONE CONCLUSION"
                       9 "OTHER REASONS (SPONTANEOUS)" 10 "DK"
                       99 "<INAP, NOT 2-6 Q34; 15 & 16 V7>" ;
label define V106      0 "<NA>" 1 "A) INDIVIDUAL CANDIDATES" 2 "B) PARTIES"
                       3 "C) CONTENT PROPOSED POLICIES"
                       4 "D) NONE OF THESE (SPONTANEOUS)" 5 "E) DK"
                       9 "<INAP, NOT 1 OR 2 Q34; 15 & 16 V7>" ;
label define V107      0 "<NA>" 1 "A) INDIVIDUAL CANDIDATES" 2 "B) PARTIES"
                       3 "C) CONTENT PROPOSED POLICIES"
                       4 "D) NONE OF THESE (SPONTANEOUS)" 5 "E) DK"
                       9 "<INAP, NOT 1 OR 2 Q34; 15 & 16 V7>" ;
label define V108      0 "NO ANSWER" 90 "OTHER PARTY"
                       95 "WOULD VOTE BLANK/SPOIL VOTE" 96 "WOULD NOT VOTE"
                       98 "DK" 99 "<INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>" ;
label define V109      0 "<NA>" 1 "YOUR OPIN ABOUT NATL ISSUES"
                       2 "YOUR OPIN ABOUT EUROPE" 3 "DK"
                       9 "<INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>" ;
label define V110      0 "<NA>" 1 "UNEMPLOYMENT/RECESSION"
                       2 "DEMOCRACY IN EURO COMMUNITY" 3 "WORKER'S RIGHTS"
                       4 "SOCIAL BENEFITS/HEALTH CARE" 5 "EDUCATION"
                       6 "RACISM" 7 "FOREIGN POLICY/DEFENCE"
                       8 "PENSIONERS'RIGHTS" 9 "HOMELESSNESS/POVERTY"
                       10 "CRIME" 11 "THE ENVIRONMENT" 12 "TAXATION"
                       13 "MONETARY UNION" 14 "DK"
                       99 "<INAP, NOT 1 OR 2 IN Q34; 15 & 16 V7>" ;
label define V111      0 "<NA>" 1 "YES, MORE POWER" 2 "NO, NOT MORE POWER"
                       3 "DK" ;
label define V112      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" 9 "<INAP, NOT WOMEN>" ;
label define V113      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V114      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V115      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V116      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V117      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V118      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V119      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V120      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V121      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V122      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V123      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V124      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V125      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V126      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V127      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V128      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V129      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V130      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V131      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V132      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V133      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V134      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V135      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V136      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V137      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT WOMEN; 15 IN V7>" ;
label define V138      0 "<NA>" 1 "NO, NOT CROSSED SUCH BORDERS"
                       2 "YES, CROSSED AND SAVED TIME"
                       3 "YES, CROSSED BUT DIDNT SAVE TIME" 4 "DK"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V139      0 "<NA>" 1 "YES, HEARD ABOUT" 2 "NO, NOT HEARD ABOUT"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V140      0 "<NA>" 1 "YES, BENEFITED" 2 "NO, NOT BENEFITED"
                       3 "DK" 9 "<INAP, 2 IN Q45; 15 & 16 IN V7>" ;
label define V141      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V142      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V143      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V144      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V145      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V146      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V147      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V148      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V149      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V150      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V151      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V152      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V153      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V154      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V155      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V156      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V157      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V158      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V159      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V160      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V161      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V162      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1; 15 IN V7>" ;
label define V163      0 "<NA>" 1 "YES, DEFINITELY" 2 "YES, PROBABLY"
                       3 "NO, PROBABLY NOT" 4 "NO, DEFINITELY NOT" 5 "DK"
                       9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>" ;
label define V164      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 1 IN Q49C1-C8>" ;
label define V165      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 1 IN Q49C1-C8>" ;
label define V166      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 1 IN Q49C1-C8>" ;
label define V167      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 1 IN Q49C1-C8>" ;
label define V168      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>" ;
label define V169      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>" ;
label define V170      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>" ;
label define V171      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>" ;
label define V172      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q49C1-C8; 15 IN V7>" ;
label define V173      0 "<NA>" 1 "IMPORTANT" 2 "NOT IMPORTANT" 3 "DK" ;
label define V174      0 "<NA>" 1 "IMPORTANT" 2 "NOT IMPORTANT" 3 "DK" ;
label define V175      0 "<NA>" 1 "IMPORTANT" 2 "NOT IMPORTANT" 3 "DK" ;
label define V176      0 "<NA>" 1 "IMPORTANT" 2 "NOT IMPORTANT" 3 "DK" ;
label define V177      0 "<NA>" 1 "IMPORTANT" 2 "NOT IMPORTANT" 3 "DK" ;
label define V178      0 "<NA>" 1 "IMPORTANT" 2 "NOT IMPORTANT" 3 "DK" ;
label define V179      0 "<NA>" 1 "AN ADVANTAGE" 2 "A DISADVANTAGE" 3 "DK"
                       9 "<INAP, 15 IN V7>" ;
label define V180      0 "<NA>" 1 "AN ADVANTAGE" 2 "A DISADVANTAGE" 3 "DK"
                       9 "<INAP, 15 IN V7>" ;
label define V181      0 "<NA>" 1 "STRONGLY IN FAVOUR" 2 "SOMEWHAT IN FAVOUR"
                       3 "SOMEWHAT OPPOSED" 4 "STRONGLY OPPOSED" 5 "DK" ;
label define V182      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V183      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 1 IN Q58; 15 & 16 IN V7>" ;
label define V184      0 "<NA>" 1 "A) PRICE" 2 "B) QUALITY" 3 "C) BRAND NAME"
                       4 "D) COUNTRY OF ORIGIN/MFR"
                       5 "E) PRESENTATION/PACKAGING"
                       6 "F) YOUR PROD KNOWLEDGE" 7 "G) HAS QUALITY LABEL"
                       8 "H) SOMETHING ELSE"
                       9 "I) NONE OF THESE (SPONTANEOUS)" 10 "J) DK" ;
label define V185      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V186      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V187      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V188      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V189      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V190      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V191      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V192      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V193      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V194      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V195      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V196      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V197      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V198      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V199      0 "<NA>" 1 "YES" 2 "NO" 3 "DK" ;
label define V200      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V201      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V202      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V203      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V204      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V205      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V206      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V207      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V208      990 "OTHERS" 998 "<NA, INCL ALL NOR, FIN>" ;
label define V209      0 "<NA, INCL ALL NOR, FIN>" 1 "DANISH" 2 "GERMAN"
                       3 "FRENCH" 4 "ITALIAN" 5 "DUTCH" 6 "ENGLISH"
                       7 "SPANISH" 8 "PORTUGUESE" 9 "GREEK" 10 "OTHER" ;
label define V210      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V211      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V212      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V213      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V214      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V215      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V216      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V217      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V218      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V219      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V220      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V221      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V222      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V223      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V224      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V225      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V226      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V227      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V228      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V229      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V230      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V231      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V232      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V233      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V234      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V235      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V236      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V237      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V238      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V239      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V240      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V241      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V242      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V243      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V244      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V245      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V246      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V247      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V248      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V249      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V250      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V251      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>" ;
label define V252      0 "<NA>" 1 "LESS THAN 5 CIGARETTES" 2 "5 TO 9"
                       3 "10 TO 14" 4 "15 TO 19" 5 "20 TO 24" 6 "25 TO 29"
                       7 "30 TO 34" 8 "35 TO 39" 9 "40 OR MORE"
                       10 "DO NOT SMOKE EVERY DAY" 11 "DK"
                       99 "<INAP, NOT 1 IN Q67C1-C2>" ;
label define V253      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" ;
label define V254      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" ;
label define V255      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" ;
label define V256      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" ;
label define V257      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" ;
label define V258      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" ;
label define V259      0 "DONT WANT TO STOP/CUT DOWN" 1 "YES" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V260      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" 9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V261      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" 9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V262      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" 9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V263      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" 9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V264      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" 9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V265      0 "<NA>" 1 "YES" 2 "NO" 3 "PERHAPS (SPONTANEOUS)"
                       4 "DK" 9 "<INAP, NOT 1 IN Q67C1-C3>" ;
label define V266      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK" ;
label define V267      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK" ;
label define V268      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK" ;
label define V269      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK" ;
label define V270      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK" ;
label define V271      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK" ;
label define V272      0 "<NA>" 1 "SMOKING IS INDIV MATTER STRICTLY"
                       2 "SMOKING AFFECTS OTHRS/SHOULD BE REGULATD" 3 "DK" ;
label define V273      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V274      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V275      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V276      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V277      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V278      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V279      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V280      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V281      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V282      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V283      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V284      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 1 IN Q73; 16 IN V7>" ;
label define V285      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V286      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V287      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V288      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V289      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V290      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V291      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V292      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V293      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V294      0 "<NA>" 1 "TRUE" 2 "FALSE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V295      0 "<NA>" 1 "ONCE OR MORE A DAY"
                       2 "ONCE EVERY 2-6 DAYS" 3 "ONCE EVERY 1-4 WEEKS"
                       4 "ONCE EVERY MONTH" 5 "ONCE EVERY 2 MONTHS"
                       6 "ONCE EVERY 3-4 MONTHS" 7 "ONCE EVERY 5-6 MONTHS"
                       8 "ONCE EVERY 7-12 MONTHS" 9 "LESS THAN ONCE/YEAR"
                       10 "NEVER" 11 "DK"
                       99 "<INAP, NOT 1 IN Q75_1; 16 IN V7>" ;
label define V296      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 1 IN Q75_1; 16 IN V7>" ;
label define V297      0 "<NA>" 1 "ONLY ONCE" 2 "A FEW TIMES" 3 "MANY TIMES"
                       4 "DK" 9 "<INAP, NOT 1 IN Q77; 16 IN V7>" ;
label define V298      0 "<NA>" 1 "IN THE LAST YEAR"
                       2 "MORE THAN ONE YR UP TO 3 YRS AGO"
                       3 "OVER 3 YEARS AGO"
                       4 "DK, CAN'T REMEMBER (SPONTANEOUS)"
                       9 "<INAP, NOT 1 IN Q77; 16 IN V7>" ;
label define V299      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 2 IN Q77; 16 IN V7>" ;
label define V300      0 "<NA>" 1 "ONCE OR MORE A DAY"
                       2 "ONCE EVERY 2-6 DAYS" 3 "ONCE EVERY 1-4 WEEKS"
                       4 "ONCE EVERY MONTH" 5 "ONCE EVERY 2 MONTHS"
                       6 "ONCE EVERY 3-4 MONTHS" 7 "ONCE EVERY 5-6 MONTHS"
                       8 "ONCE EVERY 7-12 MONTHS" 9 "LESS THAN ONCE A YEAR"
                       10 "NEVER" 11 "DK" 99 "<INAP, CODED 16 IN V7>" ;
label define V301      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V302      0 "<NA>" 1 "ONLY ONCE" 2 "A FEW TIMES" 3 "MANY TIMES"
                       4 "DK" 9 "<INAP, NOT 1 IN Q82; 16 IN V7>" ;
label define V303      0 "<NA>" 1 "IN THE LAST YEAR"
                       2 "MORE THAN ONE YR UP TO 3 YEARS AGO"
                       3 "OVER 3 YEARS AGO"
                       4 "DK, CAN'T REMEMBER (SPONTANEOUS)"
                       9 "<INAP, NOT 1 IN Q82; 16 IN V7>" ;
label define V304      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V305      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V306      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V307      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V308      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V309      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V310      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V311      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V312      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V313      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V314      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V315      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V316      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V317      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 3 IN Q84; 16 IN V7>" ;
label define V318      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 2 IN Q82; 16 IN V7>" ;
label define V319      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V320      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V321      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V322      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V323      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V324      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V325      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V326      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V327      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V328      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V329      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V330      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V331      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V332      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 2 IN Q86; 16 IN V7>" ;
label define V333      0 "<NA>" 1 "YES" 2 "NO"
                       3 "DK/DON'T REMEMBER (SPONTANEOUS)"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V334      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V335      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V336      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V337      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V338      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V339      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V340      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V341      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V342      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V343      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V344      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V345      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V346      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V347      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V348      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V349      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V350      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V351      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V352      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V353      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V354      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V355      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V356      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V357      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V358      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V359      0 "<NA>" 1 "ACCEPT BLOOD GIVEN BY SELF"
                       2 "ACCEPT BLOOD DONAT BY RELAT/FRIEND"
                       3 "ACCEPT BLOOD DONAT BY ANYONE" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V360      0 "<NA>" 1 "SHLD BE GIVEN FOR FREE"
                       2 "COVER COST COLLECTING/TEST/DISTRIB"
                       3 "CHARGE OVER COLLECTION COST"
                       4 "SOLD LIKE ANY OTHER PRODUCT" 5 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V361      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V362      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V363      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V364      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V365      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V366      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V367      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V368      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V369      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V370      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V371      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V372      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V373      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V374      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V375      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V376      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V377      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V378      0 "<NA>" 1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT IMPORTANT AT ALL" 5 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V379      0 "<NA>" 1 "EACH COUNTRY SEPARATELY"
                       2 "ALL COUNTRIES WORKING TOGETHER" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V380      0 "<NA>" 1 "SAFER" 2 "AS SAFE" 3 "LESS SAFE" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V381      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V382      0 "<NA>" 1 "OTHER EC/UE/(EC) COUNTRIES"
                       2 "OTHER EUROPEAN COUNTRIES"
                       3 "UNITED STATES OF AMERICA" 4 "CANADA" 5 "JAPAN"
                       6 "OTHERS (SPECIFY)" 7 "DK"
                       9 "<INAP, NOT 2 IN Q100; 16 IN V7>" ;
label define V383      0 "<NA>" 1 "MORE AFRAID" 2 "NOT MORE AFRAID" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V384      0 "<NA>" 1 "MORE AFRAID" 2 "NOT MORE AFRAID" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V385      0 "<NA>" 1 "MORE AFRAID" 2 "NOT MORE AFRAID" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V386      0 "<NA>" 1 "MORE AFRAID" 2 "NOT MORE AFRAID" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V387      0 "<NA>" 1 "MORE AFRAID" 2 "NOT MORE AFRAID" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V388      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V389      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V390      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V391      0 "<NA>" 1 "TEND TO AGREE" 2 "TEND TO DISAGREE" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V392      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V393      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V394      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V395      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V396      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V397      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V398      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V399      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V400      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V401      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V402      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V403      0 "<NA>" 1 "YES" 2 "POSSIBLY" 3 "NOT" 4 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V404      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V405      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V406      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V407      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V408      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V409      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V410      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V411      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V412      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V413      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V414      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V415      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V416      0 "<NA>" 1 "INCREASE" 2 "DECREASE" 3 "NO EFFECT"
                       4 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V417      0 "<NA>" 1 "RATHER LEFT"
                       2 "MIDDLE/NEITHER NOR (SPONT)" 3 "RATHER RIGHT"
                       4 "REFUSAL" 5 "DK" 9 "<INAP, CODED 15 & 16 IN V7>" ;
label define V418      1 "NOT VERY LEFT" 5 "VERY LEFT" 7 "REFUSAL" 8 "DK"
                       9 "<NA/INAP, CODED 15 & 16 IN V7>" ;
label define V419      1 "NOT VERY RIGHT" 5 "VERY RIGHT" 7 "REFUSAL" 8 "DK"
                       9 "<NA/INAP, CODED 15 & 16 IN V7>" ;
label define V420      0 "<NA>" 1 "LEFT" 10 "RIGHT" 97 "REFUSAL" 98 "DK"
                       99 "<INAP, CODED 15 & 16 IN V7>" ;
label define V421      0 "<NA>" 1 "VERY CLOSE" 2 "FAIRLY CLOSE"
                       3 "MERELY A SYMPATHISER"
                       4 "CLOSE TO NO PARTICULAR PARTY" 5 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V422      0 "NO ANSWER" 90 "OTHER PARTY"
                       95 "WOULD VOTE BLANK/SPOIL VOTE" 96 "WOULD NOT VOTE"
                       98 "DK" 99 "<NA>" ;
label define V423      0 "NO ANSWER" 90 "OTHER PARTY"
                       95 "WOULD VOTE BLANK/SPOIL VOTE" 96 "WOULD NOT VOTE"
                       98 "DK" 99 "<NA>" ;
label define V424      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V425      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V426      0 "<NA>" 1 "SINGLE" 2 "MARRIED" 3 "LIVING AS MARRIED"
                       4 "DIVORCED" 5 "SEPARATED" 6 "WIDOWED"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V427      0 "<NA>" 997 "ILLITERATE/NVR STDY (POR)"
                       998 "STILL STUDYING" 999 "<INAP, 16 IN V7>" ;
label define V428      0 "<NA>" 998 "NO" 999 "<INAP, 997-999 V427; 16 V7>" ;
label define V429      0 "<NA>" 998 "NO" 999 "<INAP, 997-999 V427; 16 V7>" ;
label define V430      1 "MALE" 2 "FEMALE" ;
label define V431      0 "<NA>" ;
label define V432      0 "<NA>" 1 "15-24" 2 "25-39" 3 "40-54" 4 "55+" ;
label define V433      0 "<NA>" 1 "15-24" 2 "25-34" 3 "35-44" 4 "45-54"
                       5 "55-64" 6 "65+" ;
label define V434      0 "<NA>" 1 "ONE PERSON" 2 "2 PERSONS" 3 "3 PERSONS"
                       4 "4 PERSONS" 5 "5 PERSONS" 6 "6 PERSONS"
                       7 "7 PERSONS" 8 "8 PERSONS" 9 "9 AND MORE PERSONS" ;
label define V435      0 "<NA>" 1 "ONE CHILD" 2 "TWO CHILDREN"
                       3 "THREE CHILDREN" 4 "FOUR CHILDREN" 5 "FIVE CHILDREN"
                       6 "SIX CHILDREN" 7 "SEVEN CHILDREN" 8 "EIGHT CHILDREN"
                       9 "NINE CHILDREN OR MORE" 10 "NONE/NO CHILD" ;
label define V436      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V437      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V438      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V439      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V440      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V441      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V442      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V443      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V444      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V445      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V446      0 "<NA>" 1 "LOOKING AFTER HH" 2 "STUDENT"
                       3 "UNEMPLOYED" 4 "RETIRED" 5 "FARMER" 6 "FISHERMAN"
                       7 "PROFESSIONAL" 8 "SHOPOWNER, CRAFTSMEN"
                       9 "BUSINESS PROPRIETORS" 10 "EMPLOYED PROFESSIONAL"
                       11 "GENERAL MANAGEMENT" 12 "MIDDLE MANAGEMENT"
                       13 "EMPLOYED AT DESK" 14 "EMPLOYED TRAVELLING"
                       15 "EMPLOYED SERVICE" 16 "SUPERVISOR"
                       17 "SKILLED MANUAL WORKER" 18 "OTHER MANUAL WORKER"
                       99 "<INAP, CODED 16 IN V7>" ;
label define V447      0 "<NA>" 1 "FARMER" 2 "FISHERMAN" 3 "PROFESSIONAL"
                       4 "SHOPOWNER, CRAFTSMEN" 5 "BUSINESS PROPRIETORS"
                       6 "EMPLOYED PROFESSIONAL" 7 "GENERAL MANAGEMENT"
                       8 "MIDDLE MANAGEMENT" 9 "EMPLOYED AT DESK"
                       10 "EMPLOYED TRAVELLING" 11 "EMPLOYED SERVICE"
                       12 "SUPERVISOR" 13 "SKILLED MANUAL WORKER"
                       14 "OTHER MANUAL WORKER" 15 "NEVER DID ANY PAID WORK"
                       99 "<INAP, NOT 1-4 IN D15A; 16 IN V7>" ;
label define V448      998 "<NA>" 999 "<INAP, 5-18 IN D15A; 16 IN V7>" ;
label define V449      0 "<NA>" 1 "NONE" 2 "1 TO 4" 3 "5 TO 9"
                       4 "10 AND OVER" 5 "DK"
                       9 "<INAP, NOT 5-18 D15A, 1-14 D15B; 16 V7>" ;
label define V450      0 "<NA>" 1 "PUBLIC EMPLOYMENT"
                       2 "NATIONALISED INDUSTRY" 3 "PRIVATE INDUSTRY"
                       4 "PRIVATE SERVICES" 5 "DOES NOT KNOW"
                       9 "<INAP-NOT 10-18 D15A, 6-14 D15B; 16 V7>" ;
label define V451      0 "<NA>" 1 "YES" 2 "NO" 3 "<UNDOCUMENTED CODE>"
                       9 "<INAP, 16 IN V7>" ;
label define V452      0 "<NA>" 1 "YES" 2 "NO" 3 "<UNDOCUMENTED CODE>"
                       9 "<INAP, 16 IN V7>" ;
label define V453      0 "<NA>" 97 "ILLITERATE/NVR STDY <POR ONLY>"
                       98 "STILL STUDYING"
                       99 "<INAP, NOT CODE 2 D19B; 16 V7>" ;
label define V454      0 "<NA>" 1 "LOOKING AFTER HH" 2 "STUDENT"
                       3 "UNEMPLOYED" 4 "RETIRED" 5 "FARMER" 6 "FISHERMAN"
                       7 "PROFESSIONAL" 8 "SHOPOWNER, CRAFTSMEN"
                       9 "BUSINESS PROPRIETORS" 10 "EMPLOYED PROFESSIONAL"
                       11 "GENERAL MANAGEMENT" 12 "MIDDLE MANAGEMENT"
                       13 "EMPLOYED AT DESK" 14 "EMPLOYED TRAVELLING"
                       15 "EMPLOYED SERVICE" 16 "SUPERVISOR"
                       17 "SKILLED MANUAL WORKER" 18 "OTHER MANUAL WORKER"
                       99 "<INAP, NOT 2 IN D19B; 16 IN V7>" ;
label define V455      0 "<NA>" 1 "FARMER" 2 "FISHERMAN" 3 "PROFESSIONAL"
                       4 "SHOPOWNER, CRAFTSMEN" 5 "BUSINESS PROPRIETORS"
                       6 "EMPLOYED PROFESSIONAL" 7 "GENERAL MANAGEMENT"
                       8 "MIDDLE MANAGEMENT" 9 "EMPLOYED AT DESK"
                       10 "EMPLOYED TRAVELLING" 11 "EMPLOYED SERVICE"
                       12 "SUPERVISOR" 13 "SKILLED MANUAL WORKER"
                       14 "OTHER MANUAL WORKER" 15 "NEVER DID ANY PAID WORK"
                       99 "<INAP, NOT 1-4 IN D21A; 16 IN V7>" ;
label define V456      0 "<NA>" 1 "NONE" 2 "1 TO 4" 3 "5 TO 9"
                       4 "10 AND OVER" 5 "DK"
                       9 "<INAP, NOT 5-18 D21A, 1-14 D21B; 16 V7>" ;
label define V457      0 "<NA>" 1 "MIDDLE CLASS" 2 "LOWER MIDDLE CLASS"
                       3 "WORKING CLASS" 4 "UPPER CLASS"
                       5 "UPPER MIDDLE CLASS" 6 "REFUSES TO BE CLASSIFIED"
                       7 "OTHER" 8 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V458      0 "<NA>" 1 "OWN HOUSE" 2 "OWN APARTMENT"
                       3 "RENT PRIV HOUSE" 4 "RENT PRIV APARTMENT"
                       5 "RENT CORPOR HOUSE" 6 "RENT CORPOR APARTMENT"
                       7 "OTHER" 8 "DK" 9 "<INAP, CODED 16 IN V7>" ;
label define V459      0 "<NA>" 1 "RURAL AREA OR VILLAGE"
                       2 "SMALL OR MIDDLE SIZE TOWN" 3 "LARGE TOWN" 4 "DK" ;
label define V460      0 "<NA>" 1 "ROMAN CATHOLIC" 2 "PROTESTANT"
                       3 "ORTHODOX" 4 "JEWISH" 5 "MUSLIM" 6 "BUDDHIST"
                       7 "HINDU" 8 "OTHER" 9 "NONE" 10 "DK"
                       99 "<INAP, CODED 16 IN V7>" ;
label define V461      0 "<NA>" 1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "A FEW TIMES A YEAR" 4 "ONCE A YEAR OR LESS"
                       5 "NEVER" 6 "DK" 9 "<INAP, NOT 1-4 IN D26; 16 IN V7>" ;
label define V462      0 "<NA>" 1 "RELIGIOUS" 2 "NOT RELIGIOUS"
                       3 "AN AGNOSTIC" 4 "AN ATHEIST" 5 "DK"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V463      0 "<NA>" 97 "REFUSAL" 98 "DK" ;
label define V464      1 "+ +" 2 "+" 3 "-" 4 "- -" 5 "DK/REFUSAL"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V465      0 "<NA>" 9 "<INAP, CODED 16 IN V7>" ;
label define V466      0 "<NA>" 9 "<INAP, CODED 16 IN V7>" ;
label define V467      98 "<NA>" 99 "<INAP, CODED 16 IN V7>" ;
label define V468      98 "<NA>" 99 "<INAP, CODED 16 IN V7>" ;
label define V469      0 "<NA>" 999 "<INAP, CODED 16 IN V7>" ;
label define V470      0 "<NA>" 1 "TWO, INTERVIEWER/RESPONDENT" 2 "THREE"
                       3 "FOUR" 4 "FIVE OR MORE" 9 "<INAP, CODED 16 IN V7>" ;
label define V471      0 "<NA>" 1 "EXCELLENT" 2 "FAIR" 3 "AVERAGE" 4 "BAD"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V472      0 "<NA>" 99 "<INAP, CODED 16 IN V7>" ;
label define V473      99 "<INAP, CODED 10 IN V7>" ;
label define V474      99 "<INAP, 6-8, 11, 13, 16 IN V7>" ;
label define V475      0 "<NA>" 1 "YES" 2 "NO" 9 "<INAP, CODED 16 IN V7>" ;
label define V476      0 "<NA>" 1 "NO, DK THIS OFFICE"
                       2 "YES, KNOW OFFC, SEND CHK"
                       3 "YES, KNOW OFFC, NO CHK" 4 "NSP"
                       9 "<INAP, NOT 2 IN V7>" ;
label define V477      0 "<NA>" 1 "AN ADVANTAGE" 2 "A DISADVANTAGE"
                       3 "DOESN'T MATTER" 4 "NOT NOTICED BEFORE TODAY" 5 "DK"
                       9 "<INAP, NOT 7 IN V7>" ;
label define V478      0 "<NA>" 1 "YES" 2 "NO" 3 "DK"
                       9 "<INAP, NOT 4 NOR 14 IN V7>" ;
label define V479      0 "<NA>" 1 "TOO MUCH" 2 "JUST RIGHT" 3 "NOT ENOUGH"
                       4 "DK" 9 "<INAP, NOT 4 NOR 14 IN V7>" ;
label define V480      0 "<NA>" 1 "A LOT AFFECTED LIFE/WORK"
                       2 "A LITTLE AFFECTED LIFE/WORK"
                       3 "NOT AFFECTED LIFE/WORK" 4 "DK"
                       9 "<INAP, NOT 11 IN V7>" ;
label define V481      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V482      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V483      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V484      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V485      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V486      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V487      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V488      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V489      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V490      0 "NOT MENTIONED" 1 "MENTIONED" 8 "<NA>"
                       9 "<INAP, NOT 12 IN V7>" ;
label define V491      0 "<NA>" 1 "MORE PROTECTION" 2 "LESS PROTECTION"
                       3 "DK" 9 "<INAP, NOT 1 IN V7>" ;
label define V492      0 "<NA>" 1 "MORE PROTECTION" 2 "LESS PROTECTION"
                       3 "DK" 9 "<INAP, NOT 1 IN V7>" ;
label define V493      0 "<NA>" 1 "MORE PROTECTION" 2 "LESS PROTECTION"
                       3 "DK" 9 "<INAP, NOT 1 IN V7>" ;
label define V494      0 "<NA>" 1 "IN FAVOUR" 2 "OPPOSED" 3 "DK"
                       9 "<INAP, NOT 8 IN V7>" ;
label define V495      0 "<NA>" 1 "PARTICIPATE W/OUT PROBLEMS"
                       2 "PARTICIPATE WITH DELAY"
                       3 "NOT ABLE TO PARTCICIPATE" 4 "DK"
                       9 "<INAP, NOT 5 IN V7>" ;
label define V496      0 "<NA>" 1 "GOOD THING" 2 "BAD THING" 3 "NO EFFECT"
                       4 "NSP" 9 "<INAP, NOT 13 IN V7>" ;
label define V497      0 "<NA>" 1 "GOOD" 2 "BAD" 3 "GOOD AND BAD" 4 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V498      0 "<NA>" 1 "INDEPENDENT/DURABLE SOLUTION"
                       2 "STEP ON ROAD TO MEMBERSHIP" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V499      0 "<NA>" 1 "VERY IMPORTANT" 2 "FAIRLY IMPORTANT"
                       3 "NOT IMPORTANT" 4 "DK" 9 "<INAP, NOT 15 IN V7>" ;
label define V500      0 "<NA>" 1 "FOR" 2 "AGAINST" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V501      0 "<NA>" 1 "WOULD DEF VOTE FOR"
                       2 "WOULD PROB VOTE FOR" 3 "WOULD PROB VOTE AGAINST"
                       4 "WOULD DEF VOTE AGAINST" 5 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V502      0 "<NA>" 1 "DECISIVE" 2 "SOME" 3 "NONE AT ALL" 4 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V503      0 "<NA>" 1 "YES, VERY MUCH IMPORTANCE"
                       2 "YES, MUCH IMPORTANCE" 3 "YES, A LITTLE IMPORTANCE"
                       4 "YES, VERY LITTLE IMPORTANCE" 5 "NO, DON'T THINK SO"
                       6 "DK" 9 "<INAP, NOT 15 IN V7>" ;
label define V504      0 "<NA>" 1 "GREAT IMPORTANCE" 2 "SOME IMPORTANCE"
                       3 "LITTLE IMPORTANCE" 4 "NO IMPORTANCE" 5 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V505      0 "<NA>" 1 "NOR REF FIRST" 2 "NOR REF BEFORE SWEDEN"
                       3 "NOR REF SAME TIME AS SWEDEN"
                       4 "NOR REF AFTER SWEDEN" 9 "<INAP, NOT 15 IN V7>" ;
label define V506      0 "<NA>" 1 "NOR REF FIRST" 2 "NOR REF BEFORE SWEDEN"
                       3 "NOR REF SAME TIME AS SWEDEN"
                       4 "NOR REF AFTER SWEDEN" 9 "<INAP, NOT 15 IN V7>" ;
label define V507      0 "<NA>" 1 "WOULD DEFENITELY VOTE FOR"
                       2 "WOULD PROBABLY VOTE FOR"
                       3 "WOULD PROBABLY VOTE AGAINST"
                       4 "WOULD DEFENITELY VOTE AGAINST" 5 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V508      0 "<NA>" 1 "VERY POSITIVELY" 2 "FAIRLY POSITIVELY"
                       3 "FAIRLY NEGATIVELY" 4 "VERY NEGATIVELY"
                       5 "WILL NOT HAVE ANY INFLUENCE" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V509      0 "<NA>" 1 "MORE POSITIVE TOWARDS MEMBERSHIP"
                       2 "MORE NEGATIVE TOWARDS MEMBERSHIP" 3 "MORE INSECURE"
                       4 "OR NOT CHANGED OPNION" 5 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V510      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V511      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V512      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V513      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V514      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V515      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V516      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V517      0 "<NA>" 1 "GREAT CONFIDENCE" 2 "MUCH CONFIDENCE"
                       3 "A LITTLE CONFIDENCE" 4 "VERY LITTLE CONFIDENCE"
                       5 "NO CONFIDENCE AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V518      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V519      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V520      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V521      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V522      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V523      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V524      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V525      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V526      0 "<NA>" 1 "ADVANTAGE" 2 "DISADVANTAGE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V527      0 "<NA>" 1 "DID NOT VOTE IN 1972" 2 "VOTED FOR"
                       3 "VOTED AGAINST" 4 "DON'T REMEMBER" 5 "NO ANSWER"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V528      0 "<NA>" 1 "DO BELEIVE" 2 "DO NOT BELIEVE" 3 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V529      0 "<NA>" 1 "VERY INTERESTED" 2 "FAIRLY INTERESTED"
                       3 "A LITTLE INTERESTED" 4 "NOT MUCH INTERESTED"
                       5 "NOT INTERESTED AT ALL" 6 "DK"
                       9 "<INAP, NOT 15 IN V7>" ;
label define V530      0 "<NA>" 1 "+ + HIGH" 2 "+" 3 "-" 4 "- - LOW"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V531      0 "<NA>" 1 "FARMER & FISHER" 2 "PROFESSIONALS"
                       3 "SHOPOWNER, CRAFTSMEN" 4 "BUSINESS PROPRIETORS"
                       5 "EMPLOYED PROFESSIONAL" 6 "GENERAL MANAGEMENT"
                       7 "MIDDLE MANAGEMENT" 8 "EMPLOYED AT A DESK"
                       9 "EMPLOYED TRAVELLING" 10 "EMPLOYED SERVICE"
                       11 "SUPERVISORS" 12 "SKILLED MANUAL WORKERS"
                       13 "OTHER MANUAL WORKER" 99 "<INAP, CODED 16 IN V7>" ;
label define V532      0 "<NA>" 1 "+++" 2 "++" 3 "--" 4 "---"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V533      0 "<NA>" 1 "A" 2 "B" 3 "C" 4 "D" 5 "E1" 6 "E2" 7 "E3"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V534      0 "<NA>" 1 "SELF-EMPLOYED" 2 "MANAGERS"
                       3 "OTHER WHITE COLLARS" 4 "MANUAL WORKERS"
                       5 "HOUSE PERSON" 6 "UNEMPLOYED"
                       9 "<INAP, CODED 16 IN V7>" ;
label define V535      0 "NON NAT+OVERSAMPLE" 1 "NATIONALS ONLY" ;
label define V536      0 "OVERSAMPLE" 1 "NATIONALS+NON NAT"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V537      0 "V451 NOT CODED 1" 1 "ALL V451 CODED 1"
                       9 "<INAP, 15 & 16 IN V7>" ;
label define V538      0 "NON NATIONALS" 1 "NATIONALS" ;
label define V540      1 "VERS A: EUR COMMUNITY"
                       2 "VERS B: EUR UNION (EUR COMMTY)"
                       9 "INAP, NOT PART OF SPLIT BALLOT" ;


#delimit cr


/***************************************************************************

 Section 4: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace V34 = . if (V34 == 0 | V34 == 9)
replace V35 = . if (V35 == 0)
replace V35 = . if (V35 >= 13 )
replace V36 = . if (V36 == 0 | V36 == 5 | V36 == 9)
replace V37 = . if (V37 == 0 | V37 == 5)
replace V38 = . if (V38 == 0 | V38 == 4 | V38 == 9)
replace V39 = . if (V39 == 0 | V39 == 5 | V39 == 9)
replace V40 = . if (V40 == 0 | V40 == 3 | V40 == 9)
replace V41 = . if (V41 == 0 | V41 == 3 | V41 == 9)
replace V42 = . if (V42 == 0 | V42 == 9)
replace V43 = . if (V43 == 0 | V43 == 9)
replace V44 = . if (V44 == 0 | V44 == 9)
replace V45 = . if (V45 == 0 | V45 == 9)
replace V46 = . if (V46 == 0 | V46 == 9)
replace V47 = . if (V47 == 0 | V47 == 3 | V47 == 9)
replace V48 = . if (V48 == 0 | V48 == 3 | V48 == 9)
replace V49 = . if (V49 == 0 | V49 == 9)
replace V50 = . if (V50 == 0 | V50 == 9)
replace V51 = . if (V51 == 0 | V51 == 9)
replace V52 = . if (V52 == 0 | V52 == 9)
replace V53 = . if (V53 == 0 | V53 == 9)
replace V54 = . if (V54 == 0)
replace V54 = . if (V54 >= 7 )
replace V55 = . if (V55 == 0)
replace V55 = . if (V55 >= 7 )
replace V56 = . if (V56 == 0 | V56 == 6 | V56 == 9)
replace V57 = . if (V57 == 0 | V57 == 6 | V57 == 9)
replace V58 = . if (V58 == 0 | V58 == 6 | V58 == 9)
replace V59 = . if (V59 == 0 | V59 == 5)
replace V60 = . if (V60 == 0 | V60 == 5)
replace V61 = . if (V61 == 0 | V61 == 4)
replace V62 = . if (V62 == 0 | V62 == 3)
replace V63 = . if (V63 == 0 | V63 == 8 | V63 == 9)
replace V64 = . if (V64 == 0 | V64 == 8 | V64 == 9)
replace V65 = . if (V65 == 0 | V65 == 3 | V65 == 9)
replace V66 = . if (V66 == 0 | V66 == 3)
replace V67 = . if (V67 == 0 | V67 == 3)
replace V68 = . if (V68 == 0 | V68 == 3)
replace V69 = . if (V69 == 0 | V69 == 3)
replace V70 = . if (V70 == 0 | V70 == 3)
replace V71 = . if (V71 == 0 | V71 == 3)
replace V72 = . if (V72 == 0 | V72 == 3)
replace V73 = . if (V73 == 0 | V73 == 3)
replace V74 = . if (V74 == 0 | V74 == 3)
replace V75 = . if (V75 == 0 | V75 == 3)
replace V76 = . if (V76 == 0 | V76 == 3)
replace V77 = . if (V77 == 0 | V77 == 3)
replace V78 = . if (V78 == 0 | V78 == 3)
replace V79 = . if (V79 == 0 | V79 == 3)
replace V80 = . if (V80 == 0 | V80 == 3)
replace V81 = . if (V81 == 0 | V81 == 3)
replace V82 = . if (V82 == 0 | V82 == 3)
replace V83 = . if (V83 == 0 | V83 == 3)
replace V84 = . if (V84 == 0 | V84 == 5)
replace V85 = . if (V85 == 0 | V85 == 3 | V85 == 9)
replace V86 = . if (V86 == 0 | V86 == 5 | V86 == 9)
replace V87 = . if (V87 == 0 | V87 == 3)
replace V88 = . if (V88 == 0 | V88 == 3)
replace V89 = . if (V89 == 0 | V89 == 3)
replace V90 = . if (V90 == 0 | V90 == 3)
replace V91 = . if (V91 == 0 | V91 == 3)
replace V92 = . if (V92 == 0 | V92 == 3)
replace V93 = . if (V93 == 0 | V93 == 3)
replace V94 = . if (V94 == 0 | V94 == 3)
replace V95 = . if (V95 == 0 | V95 == 3)
replace V96 = . if (V96 == 0 | V96 == 3)
replace V97 = . if (V97 == 0 | V97 == 3)
replace V98 = . if (V98 == 0 | V98 == 3)
replace V99 = . if (V99 == 0 | V99 == 5 | V99 == 9)
replace V100 = . if (V100 == 0 | V100 == 3 | V100 == 9)
replace V101 = . if (V101 == 0 | V101 == 3 | V101 == 9)
replace V102 = . if (V102 == 0 | V102 == 3)
replace V103 = . if (V103 == 0 | V103 == 9)
replace V104 = . if (V104 == 0 | V104 == 6 | V104 == 9)
replace V105 = . if (V105 == 0 | V105 == 10 | V105 == 99)
replace V106 = . if (V106 == 0 | V106 == 5 | V106 == 9)
replace V107 = . if (V107 == 0 | V107 == 5 | V107 == 9)
replace V108 = . if (V108 == 0)
replace V108 = . if (V108 >= 90 )
replace V109 = . if (V109 == 0 | V109 == 3 | V109 == 9)
replace V110 = . if (V110 == 0 | V110 == 14 | V110 == 99)
replace V111 = . if (V111 == 0 | V111 == 3)
replace V112 = . if (V112 == 0 | V112 == 3 | V112 == 9)
replace V113 = . if (V113 == 8 | V113 == 9)
replace V114 = . if (V114 == 8 | V114 == 9)
replace V115 = . if (V115 == 8 | V115 == 9)
replace V116 = . if (V116 == 8 | V116 == 9)
replace V117 = . if (V117 == 8 | V117 == 9)
replace V118 = . if (V118 == 8 | V118 == 9)
replace V119 = . if (V119 == 8 | V119 == 9)
replace V120 = . if (V120 == 8 | V120 == 9)
replace V121 = . if (V121 == 8 | V121 == 9)
replace V122 = . if (V122 == 8 | V122 == 9)
replace V123 = . if (V123 == 8 | V123 == 9)
replace V124 = . if (V124 == 8 | V124 == 9)
replace V125 = . if (V125 == 8 | V125 == 9)
replace V126 = . if (V126 == 8 | V126 == 9)
replace V127 = . if (V127 == 8 | V127 == 9)
replace V128 = . if (V128 == 8 | V128 == 9)
replace V129 = . if (V129 == 8 | V129 == 9)
replace V130 = . if (V130 == 8 | V130 == 9)
replace V131 = . if (V131 == 8 | V131 == 9)
replace V132 = . if (V132 == 8 | V132 == 9)
replace V133 = . if (V133 == 8 | V133 == 9)
replace V134 = . if (V134 == 8 | V134 == 9)
replace V135 = . if (V135 == 8 | V135 == 9)
replace V136 = . if (V136 == 8 | V136 == 9)
replace V137 = . if (V137 == 8 | V137 == 9)
replace V138 = . if (V138 == 0 | V138 == 4 | V138 == 9)
replace V139 = . if (V139 == 0 | V139 == 9)
replace V140 = . if (V140 == 0 | V140 == 3 | V140 == 9)
replace V141 = . if (V141 == 0 | V141 == 3 | V141 == 9)
replace V142 = . if (V142 == 0 | V142 == 3 | V142 == 9)
replace V143 = . if (V143 == 0 | V143 == 3)
replace V144 = . if (V144 == 0 | V144 == 3)
replace V145 = . if (V145 == 0 | V145 == 3)
replace V146 = . if (V146 == 0 | V146 == 3)
replace V147 = . if (V147 == 8)
replace V148 = . if (V148 == 8)
replace V149 = . if (V149 == 8)
replace V150 = . if (V150 == 8)
replace V151 = . if (V151 == 8)
replace V152 = . if (V152 == 8)
replace V153 = . if (V153 == 8)
replace V154 = . if (V154 == 8)
replace V155 = . if (V155 == 8 | V155 == 9)
replace V156 = . if (V156 == 8 | V156 == 9)
replace V157 = . if (V157 == 8 | V157 == 9)
replace V158 = . if (V158 == 8 | V158 == 9)
replace V159 = . if (V159 == 8 | V159 == 9)
replace V160 = . if (V160 == 8 | V160 == 9)
replace V161 = . if (V161 == 8 | V161 == 9)
replace V162 = . if (V162 == 8 | V162 == 9)
replace V163 = . if (V163 == 0 | V163 == 5 | V163 == 9)
replace V164 = . if (V164 == 0 | V164 == 3 | V164 == 9)
replace V165 = . if (V165 == 0 | V165 == 3 | V165 == 9)
replace V166 = . if (V166 == 0 | V166 == 3 | V166 == 9)
replace V167 = . if (V167 == 0 | V167 == 3 | V167 == 9)
replace V168 = . if (V168 == 8 | V168 == 9)
replace V169 = . if (V169 == 8 | V169 == 9)
replace V170 = . if (V170 == 8 | V170 == 9)
replace V171 = . if (V171 == 8 | V171 == 9)
replace V172 = . if (V172 == 8 | V172 == 9)
replace V173 = . if (V173 == 0 | V173 == 3)
replace V174 = . if (V174 == 0 | V174 == 3)
replace V175 = . if (V175 == 0 | V175 == 3)
replace V176 = . if (V176 == 0 | V176 == 3)
replace V177 = . if (V177 == 0 | V177 == 3)
replace V178 = . if (V178 == 0 | V178 == 3)
replace V179 = . if (V179 == 0 | V179 == 3 | V179 == 9)
replace V180 = . if (V180 == 0 | V180 == 3 | V180 == 9)
replace V181 = . if (V181 == 0 | V181 == 5)
replace V182 = . if (V182 == 0 | V182 == 3 | V182 == 9)
replace V183 = . if (V183 == 0 | V183 == 3 | V183 == 9)
replace V184 = . if (V184 == 0 | V184 == 10)
replace V185 = . if (V185 == 8)
replace V186 = . if (V186 == 8)
replace V187 = . if (V187 == 8)
replace V188 = . if (V188 == 8)
replace V189 = . if (V189 == 8)
replace V190 = . if (V190 == 8)
replace V191 = . if (V191 == 8)
replace V192 = . if (V192 == 8)
replace V193 = . if (V193 == 8)
replace V194 = . if (V194 == 8)
replace V195 = . if (V195 == 0 | V195 == 3)
replace V196 = . if (V196 == 0 | V196 == 3)
replace V197 = . if (V197 == 0 | V197 == 3)
replace V198 = . if (V198 == 0 | V198 == 3)
replace V199 = . if (V199 == 0 | V199 == 3)
replace V200 = . if (V200 == 0 | V200 == 3 | V200 == 9)
replace V201 = . if (V201 == 0 | V201 == 3 | V201 == 9)
replace V202 = . if (V202 == 0 | V202 == 3 | V202 == 9)
replace V203 = . if (V203 == 0 | V203 == 3 | V203 == 9)
replace V204 = . if (V204 == 0 | V204 == 3 | V204 == 9)
replace V205 = . if (V205 == 0 | V205 == 3 | V205 == 9)
replace V206 = . if (V206 == 0 | V206 == 3 | V206 == 9)
replace V207 = . if (V207 == 0 | V207 == 3 | V207 == 9)
replace V208 = . if (V208 == 0 | V208 == 990 | V208 == 998)
replace V209 = . if (V209 == 0)
replace V210 = . if (V210 == 8 | V210 == 9)
replace V211 = . if (V211 == 8 | V211 == 9)
replace V212 = . if (V212 == 8 | V212 == 9)
replace V213 = . if (V213 == 8 | V213 == 9)
replace V214 = . if (V214 == 8 | V214 == 9)
replace V215 = . if (V215 == 8 | V215 == 9)
replace V216 = . if (V216 == 8 | V216 == 9)
replace V217 = . if (V217 == 8 | V217 == 9)
replace V218 = . if (V218 == 8 | V218 == 9)
replace V219 = . if (V219 == 8 | V219 == 9)
replace V220 = . if (V220 == 8 | V220 == 9)
replace V221 = . if (V221 == 8 | V221 == 9)
replace V222 = . if (V222 == 8 | V222 == 9)
replace V223 = . if (V223 == 8 | V223 == 9)
replace V224 = . if (V224 == 8 | V224 == 9)
replace V225 = . if (V225 == 8 | V225 == 9)
replace V226 = . if (V226 == 8 | V226 == 9)
replace V227 = . if (V227 == 8 | V227 == 9)
replace V228 = . if (V228 == 8 | V228 == 9)
replace V229 = . if (V229 == 8 | V229 == 9)
replace V230 = . if (V230 == 8 | V230 == 9)
replace V231 = . if (V231 == 8 | V231 == 9)
replace V232 = . if (V232 == 8 | V232 == 9)
replace V233 = . if (V233 == 8 | V233 == 9)
replace V234 = . if (V234 == 8 | V234 == 9)
replace V235 = . if (V235 == 8 | V235 == 9)
replace V236 = . if (V236 == 8 | V236 == 9)
replace V237 = . if (V237 == 8 | V237 == 9)
replace V238 = . if (V238 == 8 | V238 == 9)
replace V239 = . if (V239 == 8 | V239 == 9)
replace V240 = . if (V240 == 8 | V240 == 9)
replace V241 = . if (V241 == 8 | V241 == 9)
replace V242 = . if (V242 == 8 | V242 == 9)
replace V243 = . if (V243 == 8 | V243 == 9)
replace V244 = . if (V244 == 8 | V244 == 9)
replace V245 = . if (V245 == 8 | V245 == 9)
replace V246 = . if (V246 == 8)
replace V247 = . if (V247 == 8)
replace V248 = . if (V248 == 8)
replace V249 = . if (V249 == 8)
replace V250 = . if (V250 == 8)
replace V251 = . if (V251 == 8)
replace V252 = . if (V252 == 0 | V252 == 11 | V252 == 99)
replace V253 = . if (V253 == 0 | V253 == 4)
replace V254 = . if (V254 == 0 | V254 == 4)
replace V255 = . if (V255 == 0 | V255 == 4)
replace V256 = . if (V256 == 0 | V256 == 4)
replace V257 = . if (V257 == 0 | V257 == 4)
replace V258 = . if (V258 == 0 | V258 == 4)
replace V259 = . if (V259 == 4 | V259 == 8 | V259 == 9)
replace V260 = . if (V260 == 0 | V260 == 4 | V260 == 9)
replace V261 = . if (V261 == 0 | V261 == 4 | V261 == 9)
replace V262 = . if (V262 == 0 | V262 == 4 | V262 == 9)
replace V263 = . if (V263 == 0 | V263 == 4 | V263 == 9)
replace V264 = . if (V264 == 0 | V264 == 4 | V264 == 9)
replace V265 = . if (V265 == 0 | V265 == 4 | V265 == 9)
replace V266 = . if (V266 == 0 | V266 == 3)
replace V267 = . if (V267 == 0 | V267 == 3)
replace V268 = . if (V268 == 0 | V268 == 3)
replace V269 = . if (V269 == 0 | V269 == 3)
replace V270 = . if (V270 == 0 | V270 == 3)
replace V271 = . if (V271 == 0 | V271 == 3)
replace V272 = . if (V272 == 0 | V272 == 3)
replace V273 = . if (V273 == 0 | V273 == 3 | V273 == 9)
replace V274 = . if (V274 == 8 | V274 == 9)
replace V275 = . if (V275 == 8 | V275 == 9)
replace V276 = . if (V276 == 8 | V276 == 9)
replace V277 = . if (V277 == 8 | V277 == 9)
replace V278 = . if (V278 == 8 | V278 == 9)
replace V279 = . if (V279 == 8 | V279 == 9)
replace V280 = . if (V280 == 8 | V280 == 9)
replace V281 = . if (V281 == 8 | V281 == 9)
replace V282 = . if (V282 == 8 | V282 == 9)
replace V283 = . if (V283 == 8 | V283 == 9)
replace V284 = . if (V284 == 8 | V284 == 9)
replace V285 = . if (V285 == 0 | V285 == 3 | V285 == 9)
replace V286 = . if (V286 == 0 | V286 == 3 | V286 == 9)
replace V287 = . if (V287 == 0 | V287 == 3 | V287 == 9)
replace V288 = . if (V288 == 0 | V288 == 3 | V288 == 9)
replace V289 = . if (V289 == 0 | V289 == 3 | V289 == 9)
replace V290 = . if (V290 == 0 | V290 == 3 | V290 == 9)
replace V291 = . if (V291 == 0 | V291 == 3 | V291 == 9)
replace V292 = . if (V292 == 0 | V292 == 3 | V292 == 9)
replace V293 = . if (V293 == 0 | V293 == 3 | V293 == 9)
replace V294 = . if (V294 == 0 | V294 == 3 | V294 == 9)
replace V295 = . if (V295 == 0 | V295 == 11 | V295 == 99)
replace V296 = . if (V296 == 0 | V296 == 3 | V296 == 9)
replace V297 = . if (V297 == 0 | V297 == 4 | V297 == 9)
replace V298 = . if (V298 == 0 | V298 == 4 | V298 == 9)
replace V299 = . if (V299 == 0 | V299 == 3 | V299 == 9)
replace V300 = . if (V300 == 0 | V300 == 11 | V300 == 99)
replace V301 = . if (V301 == 0 | V301 == 3 | V301 == 9)
replace V302 = . if (V302 == 0 | V302 == 4 | V302 == 9)
replace V303 = . if (V303 == 0 | V303 == 4 | V303 == 9)
replace V304 = . if (V304 == 8 | V304 == 9)
replace V305 = . if (V305 == 8 | V305 == 9)
replace V306 = . if (V306 == 8 | V306 == 9)
replace V307 = . if (V307 == 8 | V307 == 9)
replace V308 = . if (V308 == 8 | V308 == 9)
replace V309 = . if (V309 == 8 | V309 == 9)
replace V310 = . if (V310 == 8 | V310 == 9)
replace V311 = . if (V311 == 8 | V311 == 9)
replace V312 = . if (V312 == 8 | V312 == 9)
replace V313 = . if (V313 == 8 | V313 == 9)
replace V314 = . if (V314 == 8 | V314 == 9)
replace V315 = . if (V315 == 8 | V315 == 9)
replace V316 = . if (V316 == 8 | V316 == 9)
replace V317 = . if (V317 == 8 | V317 == 9)
replace V318 = . if (V318 == 0 | V318 == 3 | V318 == 9)
replace V319 = . if (V319 == 8 | V319 == 9)
replace V320 = . if (V320 == 8 | V320 == 9)
replace V321 = . if (V321 == 8 | V321 == 9)
replace V322 = . if (V322 == 8 | V322 == 9)
replace V323 = . if (V323 == 8 | V323 == 9)
replace V324 = . if (V324 == 8 | V324 == 9)
replace V325 = . if (V325 == 8 | V325 == 9)
replace V326 = . if (V326 == 8 | V326 == 9)
replace V327 = . if (V327 == 8 | V327 == 9)
replace V328 = . if (V328 == 8 | V328 == 9)
replace V329 = . if (V329 == 8 | V329 == 9)
replace V330 = . if (V330 == 8 | V330 == 9)
replace V331 = . if (V331 == 8 | V331 == 9)
replace V332 = . if (V332 == 8 | V332 == 9)
replace V333 = . if (V333 == 0 | V333 == 3 | V333 == 9)
replace V334 = . if (V334 == 8 | V334 == 9)
replace V335 = . if (V335 == 8 | V335 == 9)
replace V336 = . if (V336 == 8 | V336 == 9)
replace V337 = . if (V337 == 8 | V337 == 9)
replace V338 = . if (V338 == 8 | V338 == 9)
replace V339 = . if (V339 == 8 | V339 == 9)
replace V340 = . if (V340 == 8 | V340 == 9)
replace V341 = . if (V341 == 8 | V341 == 9)
replace V342 = . if (V342 == 8 | V342 == 9)
replace V343 = . if (V343 == 8 | V343 == 9)
replace V344 = . if (V344 == 8 | V344 == 9)
replace V345 = . if (V345 == 8 | V345 == 9)
replace V346 = . if (V346 == 8 | V346 == 9)
replace V347 = . if (V347 == 8 | V347 == 9)
replace V348 = . if (V348 == 8 | V348 == 9)
replace V349 = . if (V349 == 8 | V349 == 9)
replace V350 = . if (V350 == 8 | V350 == 9)
replace V351 = . if (V351 == 8 | V351 == 9)
replace V352 = . if (V352 == 8 | V352 == 9)
replace V353 = . if (V353 == 8 | V353 == 9)
replace V354 = . if (V354 == 8 | V354 == 9)
replace V355 = . if (V355 == 8 | V355 == 9)
replace V356 = . if (V356 == 8 | V356 == 9)
replace V357 = . if (V357 == 8 | V357 == 9)
replace V358 = . if (V358 == 8 | V358 == 9)
replace V359 = . if (V359 == 0 | V359 == 4 | V359 == 9)
replace V360 = . if (V360 == 0 | V360 == 5 | V360 == 9)
replace V361 = . if (V361 == 8 | V361 == 9)
replace V362 = . if (V362 == 8 | V362 == 9)
replace V363 = . if (V363 == 8 | V363 == 9)
replace V364 = . if (V364 == 8 | V364 == 9)
replace V365 = . if (V365 == 8 | V365 == 9)
replace V366 = . if (V366 == 8 | V366 == 9)
replace V367 = . if (V367 == 8 | V367 == 9)
replace V368 = . if (V368 == 8 | V368 == 9)
replace V369 = . if (V369 == 8 | V369 == 9)
replace V370 = . if (V370 == 8 | V370 == 9)
replace V371 = . if (V371 == 8 | V371 == 9)
replace V372 = . if (V372 == 8 | V372 == 9)
replace V373 = . if (V373 == 8 | V373 == 9)
replace V374 = . if (V374 == 8 | V374 == 9)
replace V375 = . if (V375 == 8 | V375 == 9)
replace V376 = . if (V376 == 8 | V376 == 9)
replace V377 = . if (V377 == 0 | V377 == 3 | V377 == 9)
replace V378 = . if (V378 == 0 | V378 == 5 | V378 == 9)
replace V379 = . if (V379 == 0 | V379 == 3 | V379 == 9)
replace V380 = . if (V380 == 0 | V380 == 4 | V380 == 9)
replace V381 = . if (V381 == 0 | V381 == 3 | V381 == 9)
replace V382 = . if (V382 == 0 | V382 == 7 | V382 == 9)
replace V383 = . if (V383 == 0 | V383 == 3 | V383 == 9)
replace V384 = . if (V384 == 0 | V384 == 3 | V384 == 9)
replace V385 = . if (V385 == 0 | V385 == 3 | V385 == 9)
replace V386 = . if (V386 == 0 | V386 == 3 | V386 == 9)
replace V387 = . if (V387 == 0 | V387 == 3 | V387 == 9)
replace V388 = . if (V388 == 0 | V388 == 3 | V388 == 9)
replace V389 = . if (V389 == 0 | V389 == 3 | V389 == 9)
replace V390 = . if (V390 == 0 | V390 == 3 | V390 == 9)
replace V391 = . if (V391 == 0 | V391 == 3 | V391 == 9)
replace V392 = . if (V392 == 0 | V392 == 4 | V392 == 9)
replace V393 = . if (V393 == 0 | V393 == 4 | V393 == 9)
replace V394 = . if (V394 == 0 | V394 == 4 | V394 == 9)
replace V395 = . if (V395 == 0 | V395 == 4 | V395 == 9)
replace V396 = . if (V396 == 0 | V396 == 4 | V396 == 9)
replace V397 = . if (V397 == 0 | V397 == 4 | V397 == 9)
replace V398 = . if (V398 == 0 | V398 == 4 | V398 == 9)
replace V399 = . if (V399 == 0 | V399 == 4 | V399 == 9)
replace V400 = . if (V400 == 0 | V400 == 4 | V400 == 9)
replace V401 = . if (V401 == 0 | V401 == 4 | V401 == 9)
replace V402 = . if (V402 == 0 | V402 == 4 | V402 == 9)
replace V403 = . if (V403 == 0 | V403 == 4 | V403 == 9)
replace V404 = . if (V404 == 0 | V404 == 4 | V404 == 9)
replace V405 = . if (V405 == 0 | V405 == 4 | V405 == 9)
replace V406 = . if (V406 == 0 | V406 == 4 | V406 == 9)
replace V407 = . if (V407 == 0 | V407 == 4 | V407 == 9)
replace V408 = . if (V408 == 0 | V408 == 4 | V408 == 9)
replace V409 = . if (V409 == 0 | V409 == 4 | V409 == 9)
replace V410 = . if (V410 == 0 | V410 == 4 | V410 == 9)
replace V411 = . if (V411 == 0 | V411 == 4 | V411 == 9)
replace V412 = . if (V412 == 0 | V412 == 4 | V412 == 9)
replace V413 = . if (V413 == 0 | V413 == 4 | V413 == 9)
replace V414 = . if (V414 == 0 | V414 == 4 | V414 == 9)
replace V415 = . if (V415 == 0 | V415 == 4 | V415 == 9)
replace V416 = . if (V416 == 0 | V416 == 4 | V416 == 9)
replace V417 = . if (V417 == 0)
replace V417 = . if (V417 >= 4 )
replace V418 = . if (V418 == 7 | V418 == 8 | V418 == 9)
replace V419 = . if (V419 == 7 | V419 == 8 | V419 == 9)
replace V420 = . if (V420 == 0)
replace V420 = . if (V420 >= 97 )
replace V421 = . if (V421 == 0 | V421 == 5 | V421 == 9)
replace V422 = . if (V422 == 0)
replace V422 = . if (V422 >= 90 )
replace V423 = . if (V423 == 0)
replace V423 = . if (V423 >= 90 )
replace V424 = . if (V424 == 0 | V424 == 3 | V424 == 9)
replace V425 = . if (V425 == 0 | V425 == 3 | V425 == 9)
replace V426 = . if (V426 == 0 | V426 == 9)
replace V427 = . if (V427 == 0 | V427 == 997 | V427 == 999)
replace V428 = . if (V428 == 0 | V428 == 998 | V428 == 999)
replace V429 = . if (V429 == 0 | V429 == 998 | V429 == 999)
replace V431 = . if (V431 == 0)
replace V432 = . if (V432 == 0)
replace V433 = . if (V433 == 0)
replace V434 = . if (V434 == 0)
replace V435 = . if (V435 == 0 | V435 == 11)
replace V436 = . if (V436 == 8 | V436 == 9)
replace V437 = . if (V437 == 8 | V437 == 9)
replace V438 = . if (V438 == 8 | V438 == 9)
replace V439 = . if (V439 == 8 | V439 == 9)
replace V440 = . if (V440 == 8 | V440 == 9)
replace V441 = . if (V441 == 8 | V441 == 9)
replace V442 = . if (V442 == 8 | V442 == 9)
replace V443 = . if (V443 == 8 | V443 == 9)
replace V444 = . if (V444 == 8 | V444 == 9)
replace V445 = . if (V445 == 8 | V445 == 9)
replace V446 = . if (V446 == 0 | V446 == 99)
replace V447 = . if (V447 == 0 | V447 == 99)
replace V448 = . if (V448 == 998 | V448 == 999)
replace V449 = . if (V449 == 0 | V449 == 5 | V449 == 9)
replace V450 = . if (V450 == 0 | V450 == 5 | V450 == 9)
replace V451 = . if (V451 == 0 | V451 == 3 | V451 == 9)
replace V452 = . if (V452 == 0 | V452 == 3 | V452 == 9)
replace V453 = . if (V453 == 0 | V453 == 97 | V453 == 99)
replace V454 = . if (V454 == 0 | V454 == 99)
replace V455 = . if (V455 == 0 | V455 == 99)
replace V456 = . if (V456 == 0 | V456 == 5 | V456 == 9)
replace V457 = . if (V457 == 0 | V457 == 8 | V457 == 9)
replace V458 = . if (V458 == 0 | V458 == 8 | V458 == 9)
replace V459 = . if (V459 == 0 | V459 == 4)
replace V460 = . if (V460 == 0 | V460 == 10 | V460 == 99)
replace V461 = . if (V461 == 0)
replace V461 = . if (V461 >= 6 )
replace V462 = . if (V462 == 0 | V462 == 5 | V462 == 9)
replace V463 = . if (V463 == 0)
replace V463 = . if (V463 >= 97 )
replace V464 = . if (V464 == 0 | V464 == 5 | V464 == 9)
replace V465 = . if (V465 == 0 | V465 == 99)
replace V466 = . if (V466 == 0 | V466 == 9)
replace V467 = . if (V467 == 98 | V467 == 99)
replace V468 = . if (V468 == 98 | V468 == 99)
replace V469 = . if (V469 == 0 | V469 == 999)
replace V470 = . if (V470 == 0 | V470 == 9)
replace V471 = . if (V471 == 0 | V471 == 9)
replace V472 = . if (V472 == 0 | V472 == 99)
replace V473 = . if (V473 == 0 | V473 == 999)
replace V474 = . if (V474 == 99)
replace V475 = . if (V475 == 0 | V475 == 9)
replace V476 = . if (V476 == 0 | V476 == 4 | V476 == 9)
replace V477 = . if (V477 == 0 | V477 == 5 | V477 == 9)
replace V478 = . if (V478 == 0 | V478 == 3 | V478 == 9)
replace V479 = . if (V479 == 0 | V479 == 4 | V479 == 9)
replace V480 = . if (V480 == 0 | V480 == 4 | V480 == 9)
replace V481 = . if (V481 == 8 | V481 == 9)
replace V482 = . if (V482 == 8 | V482 == 9)
replace V483 = . if (V483 == 8 | V483 == 9)
replace V484 = . if (V484 == 8 | V484 == 9)
replace V485 = . if (V485 == 8 | V485 == 9)
replace V486 = . if (V486 == 8 | V486 == 9)
replace V487 = . if (V487 == 8 | V487 == 9)
replace V488 = . if (V488 == 8 | V488 == 9)
replace V489 = . if (V489 == 8 | V489 == 9)
replace V490 = . if (V490 == 8 | V490 == 9)
replace V491 = . if (V491 == 0 | V491 == 3 | V491 == 9)
replace V492 = . if (V492 == 0 | V492 == 3 | V492 == 9)
replace V493 = . if (V493 == 0 | V493 == 3 | V493 == 9)
replace V494 = . if (V494 == 0 | V494 == 3 | V494 == 9)
replace V495 = . if (V495 == 0 | V495 == 4 | V495 == 9)
replace V496 = . if (V496 == 0 | V496 == 4 | V496 == 9)
replace V497 = . if (V497 == 0 | V497 == 4 | V497 == 9)
replace V498 = . if (V498 == 0 | V498 == 3 | V498 == 9)
replace V499 = . if (V499 == 0 | V499 == 4 | V499 == 9)
replace V500 = . if (V500 == 0 | V500 == 3 | V500 == 9)
replace V501 = . if (V501 == 0 | V501 == 5 | V501 == 9)
replace V502 = . if (V502 == 0 | V502 == 4 | V502 == 9)
replace V503 = . if (V503 == 0 | V503 == 6 | V503 == 9)
replace V504 = . if (V504 == 0 | V504 == 5 | V504 == 9)
replace V505 = . if (V505 == 0 | V505 == 9)
replace V506 = . if (V506 == 0 | V506 == 9)
replace V507 = . if (V507 == 0 | V507 == 5 | V507 == 9)
replace V508 = . if (V508 == 0 | V508 == 6 | V508 == 9)
replace V509 = . if (V509 == 0 | V509 == 5 | V509 == 9)
replace V510 = . if (V510 == 0 | V510 == 6 | V510 == 9)
replace V511 = . if (V511 == 0 | V511 == 6 | V511 == 9)
replace V512 = . if (V512 == 0 | V512 == 6 | V512 == 9)
replace V513 = . if (V513 == 0 | V513 == 6 | V513 == 9)
replace V514 = . if (V514 == 0 | V514 == 6 | V514 == 9)
replace V515 = . if (V515 == 0 | V515 == 6 | V515 == 9)
replace V516 = . if (V516 == 0 | V516 == 6 | V516 == 9)
replace V517 = . if (V517 == 0 | V517 == 6 | V517 == 9)
replace V518 = . if (V518 == 0 | V518 == 3 | V518 == 9)
replace V519 = . if (V519 == 0 | V519 == 3 | V519 == 9)
replace V520 = . if (V520 == 0 | V520 == 3 | V520 == 9)
replace V521 = . if (V521 == 0 | V521 == 3 | V521 == 9)
replace V522 = . if (V522 == 0 | V522 == 3 | V522 == 9)
replace V523 = . if (V523 == 0 | V523 == 3 | V523 == 9)
replace V524 = . if (V524 == 0 | V524 == 3 | V524 == 9)
replace V525 = . if (V525 == 0 | V525 == 3 | V525 == 9)
replace V526 = . if (V526 == 0 | V526 == 3 | V526 == 9)
replace V527 = . if (V527 == 0 | V527 == 5 | V527 == 9)
replace V528 = . if (V528 == 0 | V528 == 3 | V528 == 9)
replace V529 = . if (V529 == 0 | V529 == 6 | V529 == 9)
replace V530 = . if (V530 == 0 | V530 == 9)
replace V531 = . if (V531 == 0 | V531 == 99)
replace V532 = . if (V532 == 0 | V532 == 9)
replace V533 = . if (V533 == 0 | V533 == 9)
replace V534 = . if (V534 == 0 | V534 == 9)
replace V536 = . if (V536 == 9)
replace V537 = . if (V537 == 9)
replace V540 = . if (V540 == 9)


*/
/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

