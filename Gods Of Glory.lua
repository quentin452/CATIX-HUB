
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(h,p,q)local k=string.char;local e=string.sub;local l=table.concat;local m=math.ldexp;local r=getfenv or function()return _ENV end;local o=select;local f=unpack or table.unpack;local i=tonumber;local function n(h)local b,c,d="","",{}local g=256;local f={}for a=0,g-1 do f[a]=k(a)end;local a=1;local function j()local b=i(e(h,a,a),36)a=a+1;local c=i(e(h,a,a+b-1),36)a=a+b;return c end;b=k(j())d[1]=b;while a<#h do local a=j()if f[a]then c=f[a]else c=b..e(b,1,1)end;f[g]=b..e(c,1,1)d[#d+1],b,g=c,c,g+1 end;return table.concat(d)end;local j=n('26323N27523K23R27523N26C26A26M26E23K23O27926O26E26P26T26I26827E23S27925X26I26P26V26U26A26N25Y27I26P27F27925V26N26A26Y27J26O23K27P27525R26K26827W28328527J23K23Q27925M26F26N26E26F28127526826K26L26L26E26826V28R23N25C26K26P26E25G26U26I23K23X27925H26I26L26F29C26P26O26V25C26J26I26N28Q23U27925S26829426E26L29629827G27525J26E29I26P26K26Y23K23T27926N26K26A26F2A229D26C29025N26V26V26R25G26E28Z25P27926J2AI26R26O25524S24S26P26A26S24T26C26I26V26J26U26926U27Z28T26L26V29U26V24T28T26M24S26Q26U2BC29D25325224X24S25C25E25Z25M26324U25N25Y25D24S26M26A29I27J24S24I26126Y26R26J27J24M24X24Z25Y25M24T26N27V2A627925C29426A2BB25Q26A29D23K23V27926R2A326H25P27C27E29P27525T2A126I26X26A26928O23N23M29025Q29D25S2D527E28K27525Y25J26I26M24X23K23K27928W26S23L2792DV23N2DU2DW26Y25F2DC26A26Z2DF26X26E2DY2CU1425F2E827525F2702E129A2752CL26E2CN26E25C2EL26C2932A527827525N26K27D23K23Y2CK2CM2BB25S28X26V26I28U2EX27925G26K2AC24J25O26D24J25G2A926P2A523Z27925Y26R26F2EL24J2A926C2AT23K23P2EZ2EK2BB23K2D123N25Z26E26Z26V28426926E26N23K2FK27524O2FF2CZ24J25E26F26F28P2902EJ26F2B228824729Q29S26I26R26V24J26926Y2GG26N2F426Z24G24W24W25625223K24B2792G22C226F2GW2GY25M24K26M2GG24J2EN26V24G2502CC2DO2FV27525D26U2AI2F624Y2CK26K26R2GY2DL26O28T26P2HD25R29D26G24J24R2AQ2AJ2AT2AV2GN2I329326F2B026C24S25K26M25N2612FM26325I26M25U24Q2CS27926A26L2DM2EL28Q2CT27525H26U26L28Y2F526L23K23W2F826I26T26E24J2CP26L26A24J25S27U26D26D2902G22G425D26K26Z2892792JJ2JL25P26U26M2G72802ES23N2BB2G423K23M27924Y2FZ2JE2JG2JI2IZ26A23K25A27925E26926K2KG25624Z24Z25U26L24J2B224J26G27M26G26O24J26Y26K26U24J26S2B226J24J2B32JH26P26I26O2I926K2FE29427I2AI2AE2L32L526P2KH2JK2762J42G12G826E26R29328Z2EH2LV28O2LY27T2JM2JO2JQ2LU25J2A326R25J26K26S2JB2JD2EI26J26K26K27I24J2JL28G2862802A727526R2842MQ26N2LF28Z29Y23N2GJ26D26A26U2H02FU27H2EK26P26826J2GA27928C28E26N24J2MP28I2GB23N2NJ2LQ2JN26U2JP2N727525S2MX2GJ2MR29Q26R26E28P24J25N26A26826G2DP27926M2CR2DQ2752C026Z2EC23N25F26K2E12G029K26A2AX28Y28I2LU25N2K22IZ26K26I29O27925W27W26G25S2NZ2GK2N02CV28X2LF27E2M12NB2IZ27B2D826E26T27W2BJ2KE27525L2K226R2O22O42O62G02PK26M26R25V2ME28I2M125N2GT25N26E26I26C2AQ2PN2O52PI23N2PY26R2Q02Q22AQ23K24227925P26K2HK2MX2PM24R25V2LK2L225P2IW2EY2J526N2GY2QM2QO24J25H2IW2MH29126V26P2NH2GD25C2MX2O524J25Z26R23K24F2CK2CZ2AX2KH26Z24S2DD2KV2612MK2HI2I226V2IZ27N2F72EI2HZ2GY2NF2CN2JA2772JY2LF2682CJ2752DD2I32M62NQ2JQ2NL2D326D2LK2LA25G2CZ2RU23N27Y2JH25E26N2NH2922GJ2882G029W2S92NR2N025K26E26Y25D29D2J32792PY2GJ2FF2972S127525I26L2K22902SY26Y2SQ27E2SC2QC29J28U2R326K2G928A23N2A02A22A42T726I23N2412792HR23N2QE2RF2GU26U2942922BA2A32SO2NK2CK2R826G2HT2HV26L2DO2N025X2F32932DO2OB23N2DS2T923N26S2CQ26V2OF2ED2DW2QS2752442DW27524J2V22KB2DW2DU2V62V22V32V22DU2TY2DX2U12792V42VF2DU2K62VF2V92VA2KB2VE2752DI2TX2752KB2U02V72DA2V52792E82ND2752LL2682QK2KO2OM28Q24E2AP2AR2IE24S2IG2I42IJ26C2IL2IN2IP2IR2IT25U2DW2K624124N2792V924125Y2VY2EC2582W02VY23N25K2WT2X02762U026O26J2OM2GK2G025X2PG2952JF26E2VN2UO2WR2VY2V92432622WX2DV2X32VU2792G02UR27B2EW2MS23N2AL26V2F227K27M27E2QF2D22LX2R82J22JN29326A26C27E2N02D326M26K2BB2882LU25G2XG2JZ2S523N29G26E2Y22JG2802VS2XD2CH27E2X72X92942OW2752YY2BJ2YN2JG2UY2792412432X42VB2VX2VE2DU2UO2VX2DU2VI2DV2782ZM27928K2ZP2752VW2E82VP27623N2LU2VI2DQ2DQ29P2ZD2VF27G2ZJ2752V82VZ2VA2DV2VN2XR2X12ZY27928J2CU2LE2BA2W223N2F228O2OO2HD26V26K2552XV2SI2N02NN2882TQ2RY26N2NN2Q72OL2ON2BB28031042Q82OS26L2OU26F25T2MK26V25V2OM28Z2U025C25H2AX27D2VN2Y62TX2562XL2ZB31082VF2DW31072X42DQ2ZW2VY2UO2VI2KB2KB2ZO2XS2KB2ZR312923N2FV31252VY27G2ZH2VG2ZF2DU2VK2DV312L2VH311W2DU312E312Q23N27G2VI312O2CT31042KB2CT2UW2V92U0310V2EW310X2MV2872JX28B28D28F31382802OK2Z22O431172IX2ET311B311D2Q72OY26N2P02P226F2VN2N024124G311U2ZF31262VF312F2KB2DQ314223N3128311U28K312Z312D310B3133310H2K62XW2YF282313E310Z2NE313C3112313E3114313H2OO2802OQ313M2OV2Q72PR2PT2PV26P313U2ZB313X3140313Z2XP31453144312C3147314031492XS2VW310C2TZ314E279314G290310Y313A23N31113113313G2OM313I2OP2T4314U2Z42Q82PZ2Q12Q326V3151275313W313Y23N31452ZL312C3158311U315A2VY315C2VY315E2ZE23N2XY2NS2UP28D2QK313527E2XY2Y02YU2Y42YQ25T2J7316S2RT2N02JN2LX2NZ28Q2N02B928W28Y315K314J315M315O314O2YM2AM25Q2L527I2TE2SZ2MD2MF311X310G2X62DR316M2GT316O317828H29H317A314M315P2CK314Q313J314T2C0311C314V2TQ2OL26L2YE2JN2EL2UW24L25F2ZA31632WS2XS2ZT26W279278314023R26N318L2VY318O2792FK2VP318H317M24J2VQ2ZX2ZS314631662V2312B2DW312S2DW312H311W2LU2VX2V6310E2V92XU2V92JB2U0311C2W5317R314F310W314I317U314K313B2NG317Y2MI315R314R313K311A3183313N31862X931882YT2RR2BB318C25F2VN2R124L26P310H316B318P2ZX312731AG23N29A318V2XP27925J31652VE2KB2E831AR312J3193316B31AW315B31AY316F31B02KB312V312C2CT2VE31022VZ3121275319E2792GQ2792TQ2DV318Z2WU312N312P311Y2VT2VF2VL31BK31682DW31952DV2FV23L24X317M27Q2X03122311W2ZF2DV31B42DW2CT312F2752G02XP31BR31092A7312W2VF31BV31BX318M2DV2GQ312M319D316H2K62YQ2A92AB2AD3188317S2N02AH2AJ2Y023K24I2WB2ID2AU24S26R2C12BB26929D2BE2EV2AW2AY24S26824Z24Y26926R26Z26R25H2DW2G024124A316H31AU2E8315731BN2DQ31BP31922VN2XS31DY31BK2DW3154315F2752N0317S316Q2AM316X314H275315L3110317X317C2F8317E317G27O2792UF310S26L24Y317K2JB317428U317626V310F2NL31E931EJ2Y127J27L2RT31192SL26P25M26L26R2HU31EC2Q725M26O2TF31ES2UR2TB2TD2SX2SZ2TH317A26E26D2TL2U82TO316K25Z2OM2YE28Z315Q311628I2U0317F2JG25Z26K2O72ET2B22KA2CU2DW2492ZB2H9318I31AW31BK312I311Z312T3191278312I2VS31CF312R31AW312O2N02X031GS318T31AF31GY31CN31GH23N26Y2VA24J26831C6312D2K62QF2V9318S27531HB314631AJ2TY31H1310F31H3316H24J24M31DO31GI2792XY31BY31GT2VF27P31GR23N2NL31C0310A31AK2ZB24H31HM2VC31BN2ZI310B312O31GN31B02VR315F31IA311W2VV31HU2DU27G23P25W31922XS2DY2G02VN31CA31CK31BO2X131BC2752LU31F0275316R31F3316T3137319Q317W319T314O2462RF27D2AX2CP26Z2RN2EV2RQ2RS2E72DV23726I23F2E131J92EI2RG26A2RL31JF26M31JH2J831JJ310B2DV2UZ24125Q31I52ZG311W31GL2VJ31HQ27527824Z2DV28K2FV31BI31BL31GJ31K631I931412V231KB31C4317N31E631BN2U12UO26O26Y2MG27926S2LE2BB264319L26R2W72I523K25N315I2CZ24T310Y24T317B317U24T3115315S26P24T2OR31A02OV311F2YJ311I27T31LF311N2GF25A2HK31LS27D24T2DS24R319Y310S31CT2AF2UJ2UL26P24W31G82UP26E26S31CV319P2MQ319R315N31EH317U314P319W313J2K62Q02AB319Y2PU26O2B22S02V92632UW23725831GB2752622UW23F31MZ2V926131N023N24Q310F2K631MX31MZ2K62C02B3310I27526D2A92932UW22R2582EC2NL23P31CJ31BA31KA31AJ31BA31HD31DZ2TX2WW31E52XK312O2V329A312O2ZJ2UO2KB31002VG2VL312O2EC312O2VN31O431I124V2W031BX2V22412593165316731I731AV31B731IN31BN27831GQ31KA31922VW2VS31632ZT312U31BL2FV2FV31C731P42FV29P2VI31P7316I31AW31PE31HW31PA31HY31PG314B2EY2VE27G2M12ZQ31P52EC315E31PO31P52ZF27G27G31P931P527G31PC31E731P531CE31Q427G31PI31Q131PK2VI31PY23N2JD31QC31P52ZD2VE2CT31PQ31P4313131KO31BH31IX31PW31AW2CT31QT31QS310G31Q3310G2CT31Q631QY23N31Q931QU2FK2VI31QU2QF2VE29P31QL31P531IS31OV31BM311W2VE31GO31I6312M2X4310931E427931E8319N2XX31F131FD2R12G22M32LZ31FD31J427N28M317T31MF31J6313D31MJ2LU31RV2LX2LZ2DW311924131O931KH2X031GK31KK2VD312C3155312731OS2V931HX3195312O31PE2VF2JD31HC31AJ31SU316625O31AV29Y25I23N28K2VN31T231BV31IT2DQ2FV31HJ2V9316J2M12X926R2I024J2MJ2NV2852SS2792G824J26F2YC31TQ31NI23N31D627S28831RQ316P31RS31J22RT311R2D32MU27M2YA310S2AX2YE2902YH2YJ2A1319Y2TH25M2BB26M310M31F926T26K26G2YT31F328I2YX2XE2DW31JP2752XY31AT31O1310F2WV31K82T431I02XK31432DV31T22UW26G2XP31DX31HH2VY2XK2FV2K624J265314B2FV28K31QJ314B3196310G31BR31PE31C531PE31Q031PE31CA2LU2KB310431QZ31T331BU310G2VV318E31302XP31NY2CT31TB2XT310H2VS2CV29D28Z31TY2YQ31J12Y3316Y2HY29429W2Q729R29T29V2T82TQ317F2LC26P2SE319O2Z52LF26I2PD2WT311Q2ZB2WO31E52X52VZ310931DT31BL31402DQ31OU31DY31V631BR31AZ31453197310931IK311W2EY318N31AJ31XR31HG27931SX24Z245312G310G31NY2ZD2KB31XY31Y02D131IW31W227631WI31EA31F231WL31ED2912932952T82G031WR2O031WT29X31AO2A12TN31H42DV2LU24126Q31K431KI2VF31K731IF2WP31K931Y931BK31E031EY2V624124U31YX31SG31KJ2VA312O31AU31SO312C31SJ31OC31B931KL314831B2314B2FC311U31IK31IM31SE2V631RD275264312331VE31SK31ZO31Q0314029P31OU31HS2XS2DQ31GX2KB2RE31SV279320C2TX2WS31E52MN311U32032VY32052ZX320731ZZ31XK2VY31BG31AS31VE320H31PK316325C2VM31BL312O31PN31OZ31RB31RK31KQ2EC314031CC2VY2R131OV31KN31922ZD2A731KC319231R8320G31W231BE31AW28K28K31J92VE2FV31XZ31P331P52V1321V2CT321U31BN29P321X31KD23N29P2DU310427824031W22VE28K321N2VI321P23N321R31P4322031V127G31DR316331J9321Z311V322523N31GE31BS322S322731OZ2H931P2312M31BR320923N24831BN28K2RE31BM28K31BR2782DQ2WA321S23N24D2DV24L31P0314125B31W2323D31BN27G24C319431PS31PL312B31VN31D1321V29P31I431VP29P31OA31P4323O31VN313X31VP31QN31ZQ31XP2V424125M322S323X31BN2A7318W31RO31PF324331P5312S31R923N324G2VE2A731HO3198324L31AW324B322123N323J321V2A724K31OL31R231HK25T320X2VY321I2FK24R31KR31P5318U324X2VF3235324P31NA324V322631QV27G323E31UW23N24P2V231W131BR29P31P931V127P24O2ZB2WW2FK31OK310831BX2EY2EC26131I22XS321I29A31ZA24T2DV31RA2VY2VI325X31932VE27P325131BN2FK24S32552EY2ZJ326A2M131Y427529A325D318Z326I324M326L324C275326O322R2FK321I2DX326731RE3258326X23N326D23N325D2HX31WC31AL31AW325N325J327723N31OM326H325631BR2A729P325Q31PK24W2V22A72FK31BR27P31Q631V12EY253326231I225232552JD31P226H23N31192DQ321I2ZD2512VT328L23N25023N328D328P257325E27P31Y331AW27P2DU327Q23N2EY311T2DW27P326831AW2FK27P327Z29A255323I31PK31O631SY329331QB31O031QE23N254328B2ZD323M326623N2QF2VW2HX2VQ28K321I2TY2KL31XZ329Z23N31OP2WZ2VE322A31ZH23N322A322A314732AB31W22VI32AE318E32AG32AA23N25E31AW32AE25D328I31P3328R322A31Y52TY320Z2HX24Z2AO2TY31AP318Z3213324M2EY31R531BN2JD329O321V2ZD31T2329S2QF31GV329W31PR32A332A1327H31P332A531BN32A831BL32AE32AD32AK319532AH32AN32AK32AM32AJ322A31DN31042TY32AS327H31XZ32AV23N32AX32AZ2TR325E32B331AW32B5326M27532B8322R2ZD25G32552QF319B3254329X32BN310F32BY319232CS32BT32AK32AI27532AE32BX32CY32AK31L732C123N2KL32AT32BL23N32A632D131SO31H732BQ316626C32AK322A32CV322A32CX32DH32AL32BV322A32D332AR32AK32A3320Z2TY32A332B131K02VT32B4329K2VE2JD326P31V12ZD324E32BD322S279326A2VQ326Y2VT327132DY31HI32CD32E132CG325032CI23N25L32CL31PF32EA31KR32ED2TY32EF27932CC2VI32CE3276329M32E42752ZD310E31BW329T325632ER32EC32BK32EE32CB32DZ32EI32B632E232EL32BA315N32EP31HZ32EB2X432A332EV27532EX32FR32EJ32F132EM31K332E82UZ23N325832FA32FP32FD32EH32EY325I32B723N2AO2ZA2JD31BR29A2EY327Z2ZD31SZ2DW29A2ZD31BR2JD29A324C2WW2QF32E42WW2TY25V3255322A31PQ326A321N32ED2GQ32FQ329M2GQ324M32GN32CF32F732F22VT2WO329S322A321C26623N32H032FB32H2325E2JD32H531AW2JD32GF31BN2QF32582DW2JD2QF31BR2ZD31QF31BN2TY25S322R322A25Z32552GQ31193234322H2X42VE31XZ2WW2ZF31XZ31XZ25X31AW32IG23N31IM310431J9328R322032AQ31J9324M32HY32H82TY32HA322A274329S2GQ311R31PF31UV31Y431XZ31J932EV32I732IA31WB275');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local b,c,f,e=h(j,a,a+3);b=d(b,131)c=d(c,131)f=d(f,131)e=d(e,131)a=a+4;return(e*16777216)+(f*65536)+(c*256)+b;end;local function i()local b=d(h(j,a,a),131);a=a+1;return b;end;local function g()local c,b=h(j,a,a+2);c=d(c,131)b=d(b,131)a=a+2;return(b*256)+c;end;local function s()local d=b();local a=b();local e=1;local d=(c(a,1,20)*(2^32))+d;local b=c(a,21,31);local a=((-1)^c(a,32));if(b==0)then if(d==0)then return a*0;else b=1;e=0;end;elseif(b==2047)then return(d==0)and(a*(1/0))or(a*(0/0));end;return m(a,b-1023)*(e+(d/(2^52)));end;local m=b;local function n(b)local c;if(not b)then b=m();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),131))end return l(b);end;local a=b;local function m(...)return{...},o('#',...)end local function h()local k={};local d={};local a={};local j={[#{{915;881;630;163};"1 + 1 = 111";}]=d,[#{"1 + 1 = 111";{599;820;708;784};{815;855;748;463};}]=nil,[#{{640;806;460;600};"1 + 1 = 111";{72;41;471;852};{475;222;725;417};}]=a,[#{"1 + 1 = 111";}]=k,};local a=b()local e={}for c=1,a do local b=i();local a;if(b==0)then a=(i()~=0);elseif(b==2)then a=s();elseif(b==3)then a=n();end;e[c]=a;end;j[3]=i();for a=1,b()do d[a-1]=h();end;for h=1,b()do local a=i();if(c(a,1,1)==0)then local d=c(a,2,3);local f=c(a,4,6);local a={g(),g(),nil,nil};if(d==0)then a[3]=g();a[4]=g();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=g();end;if(c(f,1,1)==1)then a[2]=e[a[2]]end if(c(f,2,2)==1)then a[3]=e[a[3]]end if(c(f,3,3)==1)then a[4]=e[a[4]]end k[h]=a;end end;return j;end;local function l(a,k,g)a=(a==true and h())or a;return(function(...)local d=a[1];local e=a[3];local n=a[2];local i=m local b=1;local h=-1;local r={};local m={...};local j=o('#',...)-1;local o={};local c={};for a=0,j do if(a>=e)then r[a-e]=m[a+1];else c[a]=m[a+#{"1 + 1 = 111";}];end;end;local a=j-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=62 then if e<=30 then if e<=14 then if e<=6 then if e<=2 then if e<=0 then local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e>1 then local a=a[2]c[a]=c[a](f(c,a+1,h))else g[a[3]]=c[a[2]];end;elseif e<=4 then if e==3 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e>5 then local g;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else local i=n[a[3]];local h;local e={};h=q({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==9 then e[f-1]={c,a[3]};else e[f-1]={k,a[3]};end;o[#o+1]=e;end;c[a[2]]=l(i,h,g);end;elseif e<=10 then if e<=8 then if e==7 then c[a[2]]=c[a[3]]+a[4];else c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;end;elseif e==9 then c[a[2]]=c[a[3]];else c[a[2]]={};end;elseif e<=12 then if e==11 then local h;local e;c[a[2]]=(a[3]~=0);b=b+1;a=d[b];g[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];else local a=a[2]c[a](f(c,a+1,h))end;elseif e>13 then local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]/c[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]+a[4];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=c[a[3]]*c[a[4]];b=b+1;a=d[b];do return c[a[2]]end b=b+1;a=d[b];do return end;else c[a[2]]=(a[3]~=0);end;elseif e<=22 then if e<=18 then if e<=16 then if e==15 then c[a[2]]=a[3];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];do return end;end;elseif e>17 then local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else local b=a[2];local d=c[b];for a=b+1,a[3]do p(d,c[a])end;end;elseif e<=20 then if e>19 then local b=a[2]c[b](f(c,b+1,a[3]))else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e==21 then local g;local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];else c[a[2]][a[3]]=a[4];end;elseif e<=26 then if e<=24 then if e>23 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;else local l;local n,m;local j;local e;c[a[2]]=k[a[3]];b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=k[a[3]];b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]n,m=i(c[e]())h=m+e-1 l=0;for a=e,h do l=l+1;c[a]=n[l];end;b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,h))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];do return end;end;elseif e==25 then local j;local l,m;local k;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];e=a[2]l,m=i(c[e](f(c,e+1,a[3])))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];do return end;else local a=a[2]c[a](f(c,a+1,h))end;elseif e<=28 then if e==27 then local h;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else local b=a[2]local d,a=i(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e>29 then local a=a[2]c[a]=c[a]()else c[a[2]]=c[a[3]]-a[4];end;elseif e<=46 then if e<=38 then if e<=34 then if e<=32 then if e==31 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;else c[a[2]]();end;elseif e==33 then c[a[2]][a[3]]=a[4];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];end;elseif e<=36 then if e>35 then c[a[2]]=g[a[3]];else c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;end;elseif e>37 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))else local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=k[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];do return end;end;elseif e<=42 then if e<=40 then if e>39 then do return end;else c[a[2]]={};b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=g[a[3]];end;elseif e>41 then c[a[2]]=(a[3]~=0);else do return c[a[2]]end end;elseif e<=44 then if e==43 then local b=a[2]local d,a=i(c[b]())h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];end;elseif e>45 then do return c[a[2]]end else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];end;elseif e<=54 then if e<=50 then if e<=48 then if e>47 then local a=a[2]local d,b=i(c[a](f(c,a+1,h)))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;else if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e==49 then c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];else c[a[2]]=l(n[a[3]],nil,g);end;elseif e<=52 then if e>51 then local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;end;elseif e>53 then local a=a[2]c[a](c[a+1])else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=58 then if e<=56 then if e>55 then c[a[2]]=c[a[3]]-a[4];else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e==57 then local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;else local a=a[2]local d,b=i(c[a](f(c,a+1,h)))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=60 then if e>59 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))else c[a[2]]=c[a[3]]+a[4];end;elseif e==61 then local b=a[2]local e={c[b](c[b+1])};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else local k;local n;local j;local l,m;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]-a[4];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=i(c[e](f(c,e+1,a[3])))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l,m=i(c[e](f(c,e+1,h)))h=m+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];n=a[3];k=c[n]for a=n+1,a[4]do k=k..c[a];end;c[a[2]]=k;b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];do return end;end;elseif e<=94 then if e<=78 then if e<=70 then if e<=66 then if e<=64 then if e==63 then local a=a[2]c[a](c[a+1])else local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;end;elseif e>65 then c[a[2]]=k[a[3]];else c[a[2]]=(not c[a[3]]);end;elseif e<=68 then if e==67 then local k;local l,m;local j;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=i(c[e](f(c,e+1,a[3])))h=m+e-1 k=0;for a=e,h do k=k+1;c[a]=l[k];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];else local h;local e;c[a[2]]=(not c[a[3]]);b=b+1;a=d[b];g[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))end;elseif e>69 then local d=a[3];local b=c[d]for a=d+1,a[4]do b=b..c[a];end;c[a[2]]=b;else c[a[2]]=c[a[3]];end;elseif e<=74 then if e<=72 then if e==71 then c[a[2]]=c[a[3]][c[a[4]]];else local b=a[2];local d=c[b];for a=b+1,a[3]do p(d,c[a])end;end;elseif e==73 then local g;local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];end;elseif e<=76 then if e>75 then local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else do return end;end;elseif e>77 then local g;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];do return end;end;elseif e<=86 then if e<=82 then if e<=80 then if e==79 then local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];else local b=a[2]c[b](f(c,b+1,a[3]))end;elseif e>81 then local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=84 then if e>83 then local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else local a=a[2]c[a]=c[a](c[a+1])end;elseif e>85 then local h;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];else c[a[2]]=a[3];end;elseif e<=90 then if e<=88 then if e==87 then local h=n[a[3]];local f;local e={};f=q({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==9 then e[f-1]={c,a[3]};else e[f-1]={k,a[3]};end;o[#o+1]=e;end;c[a[2]]=l(h,f,g);else local a=a[2]c[a]=c[a]()end;elseif e==89 then c[a[2]][a[3]]=c[a[4]];else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=92 then if e==91 then c[a[2]]=g[a[3]];else c[a[2]]=c[a[3]][c[a[4]]];end;elseif e>93 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=110 then if e<=102 then if e<=98 then if e<=96 then if e==95 then local h;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e>97 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))else local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])end;elseif e<=100 then if e==99 then c[a[2]]=c[a[3]][a[4]];else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];end;elseif e>101 then c[a[2]]=c[a[3]]*c[a[4]];else local b=a[2]local d,a=i(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=106 then if e<=104 then if e>103 then g[a[3]]=c[a[2]];else local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e==105 then local a=a[2]local d,b=i(c[a]())h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;else local g;local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=108 then if e==107 then local d=a[2]local e={c[d](c[d+1])};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end else b=a[3];end;elseif e>109 then c[a[2]]=c[a[3]]/c[a[4]];else c[a[2]]();end;elseif e<=118 then if e<=114 then if e<=112 then if e==111 then c[a[2]]=c[a[3]][a[4]];else c[a[2]]=c[a[3]]*c[a[4]];end;elseif e==113 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];do return end;else if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;end;elseif e<=116 then if e>115 then b=a[3];else c[a[2]][a[3]]=c[a[4]];end;elseif e>117 then local a=a[2]c[a]=c[a](f(c,a+1,h))else c[a[2]]=l(n[a[3]],nil,g);end;elseif e<=122 then if e<=120 then if e==119 then local a=a[2]c[a]=c[a](c[a+1])else local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;end;elseif e==121 then c[a[2]]=k[a[3]];else c[a[2]]=c[a[3]]/c[a[4]];end;elseif e<=124 then if e==123 then if not c[a[2]]then b=b+1;else b=a[3];end;else local d=a[3];local b=c[d]for a=d+1,a[4]do b=b..c[a];end;c[a[2]]=b;end;elseif e==125 then if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]={};end;b=b+1;end;end);end;return l(true,{},r())();end)(string.byte,table.insert,setmetatable);
