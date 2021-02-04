
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(h,a,o)local k=string.char;local e=string.sub;local q=table.concat;local l=math.ldexp;local r=getfenv or function()return _ENV end;local m=select;local f=unpack or table.unpack;local j=tonumber;local function n(h)local b,c,g="","",{}local f=256;local d={}for a=0,f-1 do d[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())g[1]=b;while a<#h do local a=i()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[f]=b..e(c,1,1)g[#g+1],b,f=c,c,f+1 end;return table.concat(g)end;local j=n('24224Q27524P24U27524Q25P25N25J25R24P24T27926125R26026425F25L27E24H27927025F26026626725N25I27327I26027F27926Y25I25N25V27J26124P27P27526E25H25L27W28328527J24P24V27926B25Q25I25R25Q28127525L25H25G25G25R25L26624P24G27925I25H25N25Q26126626025F25G25P28R24Q26A26626626226L25R28Z23V27925E29G26226124023P23P26225N29725R25K29A23O28T25J23P26025N26523P26K26126825N25D24C26J27224P24M27926H26025R25N26625R27129A25Q25H26524P25527926D28W23U26Y26725G25L25E23U26125F25J26728426625H2802AI2752AK2AM2AO26K25H25I25Q28I24J27926J2672BC23U26K25N26025J24P24S27927225H25P25P28O2902BQ2BS25H2B02B22B42AH2C82BT2B126125E26729Q2892CF2CA26X26327V2662882BF24Q2BR2BT26W29Y27S26625E2BZ28228428628024P27926G25H25U2C727526X26225R28P23U26A25N25L25D2D327525G26725J25K2BO2792682DR2622DJ2DL2DN2C027526G2BS2BC25G24P25727926C2CA26H25I25F2DY23M26Y2AL26126123U26C23N24P24N27926K25I25V23U2EH2EJ2EL26N2EO29127526Y29K23U26F25H25Q2BA27E28K27529V27S2882F124Q29J26626X27J27L27N24P2BP2752712BD25D26129V2FN27827526N2C428828A2FH29K26H25E25F2BM2AL2E72FB24Q26625N25K2C62E224Q29A27Z28Z2FX24Q26C27C27E24I27926M26025H2622AS2652E72FG2FK28O28Y23U2FZ29C27G27526D2DG25G23U26Q24B29D2H925R2HB26Q24928J27H29V2GY27727926F25F26125L2DO24Q2CY25C25H29A2EP27927Y25R23U26J25I25I23U26H2F725R2G127926L26725F2FK29G29A25P2882H724Q2BH25Q25F2CS2HL28B2GE25R25I24P25427926X25L2992622662402I525I26625F25U23T24F24324324D2HV2IA2932602HK2IN25O2GU25J26W26L26G24O2792AJ26I2JT2JU2792JX2JU25D2JW2JY22Y26P26I2IY2IE27326B2J62I62J925U23U23W23U27127W2ET2DD24Q26M2IC29825H25V26L2KA1927925425A27924R27923U2JY24Q2JT2IZ2L424Q2D82L32L72L52752L02L02752L224Q2LE2L72L62D82GM2KZ2L82L72LH2LJ28K2LR2LI24Q2C023U24B2LV2L027G24S23T2LP2LD2LV24Q2532LA24Q26R2LV2D82L02L62L02GR2752L62JT2LF24Q2LH2JT2JT2BP2L62782FG2JZ24Q2LN2M62752K02M02LQ2MZ2LV27P2MS24Q2CU24Q26I2L72782JT23U2452LP2JT2EQ2L628K24K2L32D828K2ND2752782D824L24Q2L62C02562JZ2BP27G2MM24Q2E92782O02MN2LZ2NR24Q2NT25429M2C02E92MZ2NZ2L72792O324Q2O52LY2MW2LP2OA2OC2NU2NY2OK2M52752OJ2OL2O72OO2NU2OQ2AW2OF2OT2LN2482ON2OL2NQ2L72NI2752C02KY2JY2782C02NP24Q28K27825B2OR2OT2582KW2752GR2592OS2BP2GB2O22PJ24Q2BP2L02OM2PK24Q2PM2OB2OT24Y2KW29M2PS2PU2LW2JU2E928K2Q02O62PY27824Z2P02OT24W2OS2GR2IN2PX28K2GR2Q12LZ2Q32QL2Q627G24X2QP24Q2MI2F22PY2QU2MN2752NO24Q2PB2OT2522L328K27G2N02GH2MJ27527G2M92RK2R32M72R82RP2GR2502PN2912512L32GR2912ND23Q2RS2R82OM2GR2GR29M24Q2692RP2FP2752912IN2BP24U2PM2DE2LV2542NL2AI23S2L12S22AI2AI2M424Q2402RB2QD2LG2S22NL27P23Y2OV2N724Q2NL2L024S26A2OT26C2LV2JT2SH2EA2LV2OM27G28K23Z2QM2BP23W2JU2SV2912RJ2R127P2MM24O2BP2AI2SC2PX27G2AI2QV2OT28K2OP2PZ24Q23X2OS2912MU2E927G2912U22TI2O92TL24Q23M2U924Q2G22TZ24Q2UE2NU2NL27G23N2R22N82712OT2ML2RR2RH2SW2L62BP23K2L327G2BP2PI2QQ24Q2QY2SD24Q23L2OS27P2EQ2OI2RP2TT2QI2VA2QY29M2912S22P327P2NL27923P2VK2TG2PR2OT23R2JU2GR2UZ2LH2W32V22VD23O2RY2UP2N22U62GR2VW2L627P24A2PQ2T42LZ2LG2752SR24Q2P62Q62EQ2492KW26H2T524Q2WT2RO2NT2WY2JU2AI2NT2LC2SW2WL2RR2EQ2EQ2WQ2752NL24E2WJ2NT24F2WJ2NX24C2L32EQ2NX2JY2SC2U22BP2WE2NU2GR27P24D2WJ2AI2X72LH2WO2XB2SW2X12L62NL2Y42752X02L32X32LK2752EQ2XZ2YD2SW2Y22XD2Q92UH2XH2MJ2AI2XJ2XL24Q2XN2JU2XP2RR2XR24Q2742792V82SK2752BP2UU2P32912NT2792442U62UZ2SL2U62Z42L42BP2912YS24Q2Z92Z02MF2NL2Z32UL2OE2752ZK2L72ZM2ZD2UL2L62ZR2ZA2M72T22MY2752P22SX2L82ZQ26H25N2J42672AL2IA25G2KQ2I728I2CU2ED27M25D2E429G28U24829D27028X2BC260310P2L924Q28W2AU2GM26525N2IR2N027926I2VI2R92LA2LH2JU2O12N3311C2JY311A2MV2MK2OU2MO2NB2JU2UZ2MA2Z12792GB2MG31052JY311N311B2MA2K02HV2CI2BW28P2CE2752BC2C428O26J2B12B32D22KW2T62RQ2XN2L02N031012RQ2O1311Y2GH31202AL28Q2R431252C525R3128310W2ZC2LJ275312F2OH275312I2MM312K279311Z25E3121312P279312R312726X312V312D2MM312Z312H2LO310231303136313824P312Q2C3312S26J26W313E2N1312Y2M6313I31022O12IN2IT24Q262299310E2HP27527B27D29D28G2D62ID28B28D28F2D52DU2BG31372A528Y28I2R426A2DR25N25G2HZ28Q2SC2KJ25I25D2DF2DH25Q2FG25426G313V311M2MA312G311P31592WM2N12D82LU2L0278315F2PY315I2NW2M62QR311W313K31412GB314429A2GL279314927E2IN314C2872CM314F28E25I315Z2802SC2G52BW2DL2AO280314P314R314T25F314V2DV2DX26Y2AT27J31533155312X31572LA31592MF313X2L12M62L0315E316W2ON315I2LT316Z315L2LV315N313J2RQ2WB2762GH314T25L2EE262314727A2GP2KM2FI2FK27K27M27E2FG26W2B2317L2FM315X2J02AO2622DG28Q2IN28T28V310S314B314I260314E24Q28C31633165313O2IE29K2F626727I29D26925R25V26M2AT25G2PE2752XW2L32ZX2RQ318T2K0311G2762PN2TD311X2WC2JU31722JY2PH2Z02JY2XE311D2PN2N3315C2JU27G318X2RP2LU2Z2311W2MP2RR2UZ291311K2JT31962ON2O12E931902LF3132316Q2RP317A279317C317E317G315W318428H318631613188314G316431852FO2AJ314L316A314O279314Q25J314S314U31A9316829B25R26X2GD2AO311424Q23W26I2CU2ZC310224S26E2792VL2NQ2SI2UM2SK2VU313023U2472JY316Y2PF2RR319331BH2792LX2V6318Z319Z2L3311N319X2LA2SC24P2MM2E7317B28D31A32GM31A5315Y318531873189314H31A731AE314K3169314N316C31AJ316E31AN2G231AP25P31AR31AT25R31AV31AX31BA23W2WI2YG2LJ2TE31CR2UR2TC2JU2IZ316P311S2K0311S310W315I315H316Z31942LJ31BL2N1319F316Z2GR2LL2U62JY316X310031772O12GM2KM293295297314529C31C0317I2IN29F29H2FI24P2S824Q29O29H29R29T29V29X29Z25G2A125H2A32A52A724D26026Q26O24327026C25L2SC254243317731D0316V315D2PN2LM2L3278311E315G311O31302LO31EX31912762K026T26L31A92H52H1310S3122312C3156313H2JU31BR3178312L27H314L31222GH2HG25G2HD313U316P31FF27931FH313431A0275312N31FM2AX2HA2HJ31FR312E316U31FU31DJ2JU2Z72L83110311228Z31F531F72G231F92IW31FB25Q2L8312M31FL28Q31FN31G22HE31DS314A2FG317K2FL317N2E82792CY2622EE28E2AO25Q31AS2BD25N31CI31232HW25R25J25H2AO26N2642HH2IS2SC2H531FO31222CU26B25G26425H25D31AR2FL28I2GH26X2IK2GG31G12HH31G32GH2722J328O2VF2MJ31BA2O12GH315931B22792V52MM31CT24Q31IH31CV319C2MN2VR313531AW31CQ2U631EY31IJ2QH31IJ2M631B02PY2SY31952LW2YY2WW31CS31B7312D31IJ2QL2ZU2RL2L12RX2W231BN2TY31572PI2JU319O2L327P319G2AI311I318W2N32JT2D831DE311731BE31B9311Q2SP2JY2NL24S31J42RU31J627931K52MW31B731IY31BA2IN23U31JE27931DD2N331JH2MV31JJ27931JL2JY31JN2YA31BN31JR2LB2LP31DE31GA31JX315G31KA31DI313K319E313531GT317O318D2FJ31GX2FN31GA27231GJ2622BD31L7317M2FN31C22DL25R28M31A6314D31A931C531AC31C72R431LB28O31LD27T2YS2542723177319G2X531JT31912X5316P31D431BN2MM319P315J31JS2QD2E22JT2NT31II31B731MG2QI310W2H72SV28K2O12SV2PH2QE2LP2C0319W31772JY2CU29D26131GD27C25N31A4317I31GV29K317S31GY2ZQ31H131H32AN28P31H72A531HA2GH31HH31HJ2FF2AJ2IB2CY311126028Q31HP31HR31HT31HV27K28I2GB2IC2DG31662792J22GE284310E2FA279312125G31N32FG24C25J2G727L2B72IS2IN24924A25D25O25N26426131KF25426N31EP31G62RR2LJ31JU318Y2MX2MD2WC2LS31OW2LV31D92UZ2QR31P02N331EW31BN2R42LH2ME2OT31JZ31AV2NN311P2D82SC2LH31PB2QR2C0310W2792PG311P2MT31ER31MO31PG31JC31P02RG311P28K2G22LH31MU31PY2RP2PW2PC2RP316T2QD2CU2LH2O52QR2BP2RJ31JC2QH31DG2MA3117317G31112IR313M312O31HB313B312T31292CD31L431LM31602G231LP318B2R426G2E02FV2DN31BA26K2AR31RB31862662G52G728Q2GB31QX2D2316731AG31CB318C27531AK31AM316G31C824Q26N2CQ2EF2C22BL31RP2CV28Y25F26431ND2U831IA31MW31ID2L731K331JZ31K6311831KY2792TN31JB31BB31IP318Y31SC2VD31SE2WB31SG311W31IZ2GM23U2TK31BI319G31D931L2319G31KH2L731KJ31MC2RJ2KY31MH27931T731K92792R131SJ31SU2TN31SX2L331SZ31KM31BJ2VZ311I31T431KT312W2ON2LG2LJ2L031D731P531P42L031KN2LJ31KP2N12N831PR311W31PF319I2SW2LO2UZ31P031MV31L131TK27631GC31QR31GN313N313P312631QW31N431GU31L631N82FN31NA25R31H227M31ND31H6310T31H927E31NI31HI310E2882PT27526L31S427J316K26527J26T310J31HJ26T31NJ31462FG31RD31NV31HI280315Y318G2CJ29Q318P31IZ31IC31U92LW31B331032RQ31IJ2AW31SJ318W31SL31MT31J42QH31SR31IT31TB31SS31BA31SU31043118311I31QJ31KK31TL2OT31T131WJ2MR2N32MU315731EY31QM24Q31FH2JY2FG31QP31GD31QS312231UK313R313D31QZ31N631LF317T31GZ27531NB31UV31H531NF31UZ2HV31VH2IS31V52FH31V8260315028P31VD2EE31VF31XG2KM31VK317S31HX2J02CQ2AN261310431VT2JU31SA319Q31VX2OR31T82RK31W231K02JU2D831IF315O31WA2LO31ST2L131WE2PY31WG31M431WJ31DB2JY2GR319G31WN2L731WP2MV31WR315O31WU31JK31L327931QQ26631AV22I24531WZ31393124313Q3127313T31X431UP31L827E31US31UU31H431NE31UY31NH27931XG2CT31H02CZ27T25E31XR31VJ27S31VL27J31VS31IB2YK315B2752QO31T531Y531W131PS31B7320731IZ31D331W42PG31J42UQ31W82UQ31IX31JY31182LG31S731BK31BN317631MC31WL31YR31WJ31YU31UA2L331UC31782JU');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local f,e=a%2,c%2 if f~=e then d=d+b end a,c,b=(a-f)/2,(c-e)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local c,b,e,f=h(j,a,a+3);c=d(c,170)b=d(b,170)e=d(e,170)f=d(f,170)a=a+4;return(f*16777216)+(e*65536)+(b*256)+c;end;local function i()local b=d(h(j,a,a),170);a=a+1;return b;end;local function g()local b,c=h(j,a,a+2);b=d(b,170)c=d(c,170)a=a+2;return(c*256)+b;end;local function n()local d=b();local a=b();local e=1;local d=(c(a,1,20)*(2^32))+d;local b=c(a,21,31);local a=((-1)^c(a,32));if(b==0)then if(d==0)then return a*0;else b=1;e=0;end;elseif(b==2047)then return(d==0)and(a*(1/0))or(a*(0/0));end;return l(a,b-1023)*(e+(d/(2^52)));end;local l=b;local function p(b)local c;if(not b)then b=l();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),170))end return q(b);end;local a=b;local function q(...)return{...},m('#',...)end local function k()local l={};local h={};local a={};local j={[#{{677;867;880;329};{772;648;60;248};}]=h,[#{{808;792;705;260};"1 + 1 = 111";{611;637;143;812};}]=nil,[#{"1 + 1 = 111";{197;81;751;385};"1 + 1 = 111";"1 + 1 = 111";}]=a,[#{{688;159;245;681};}]=l,};local a=b()local e={}for c=1,a do local b=i();local a;if(b==1)then a=(i()~=0);elseif(b==2)then a=n();elseif(b==3)then a=p();end;e[c]=a;end;for h=1,b()do local a=i();if(c(a,1,1)==0)then local d=c(a,2,3);local f=c(a,4,6);local a={g(),g(),nil,nil};if(d==0)then a[3]=g();a[4]=g();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=g();end;if(c(f,1,1)==1)then a[2]=e[a[2]]end if(c(f,2,2)==1)then a[3]=e[a[3]]end if(c(f,3,3)==1)then a[4]=e[a[4]]end l[h]=a;end end;j[3]=i();for a=1,b()do h[a-1]=k();end;return j;end;local function l(a,j,g)a=(a==true and k())or a;return(function(...)local d=a[1];local e=a[3];local n=a[2];local i=q local b=1;local h=-1;local q={};local k={...};local p=m('#',...)-1;local m={};local c={};for a=0,p do if(a>=e)then q[a-e]=k[a+1];else c[a]=k[a+#{"1 + 1 = 111";}];end;end;local a=p-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=44 then if e<=21 then if e<=10 then if e<=4 then if e<=1 then if e==0 then c[a[2]][a[3]]=c[a[4]];else local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];b=a[3];end;elseif e<=2 then local a=a[2]c[a]=c[a](f(c,a+1,h))elseif e==3 then c[a[2]]=(not c[a[3]]);else b=a[3];end;elseif e<=7 then if e<=5 then local l;local n,m;local k;local e;c[a[2]]=j[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=j[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]n,m=i(c[e]())h=m+e-1 l=0;for a=e,h do l=l+1;c[a]=n[l];end;b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,h))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];do return end;elseif e>6 then local a=a[2]c[a]=c[a](c[a+1])else local a=a[2]c[a]=c[a]()end;elseif e<=8 then local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e==9 then c[a[2]]=l(n[a[3]],nil,g);else local d=a[2]local e={c[d](f(c,d+1,h))};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end end;elseif e<=15 then if e<=12 then if e==11 then local b=a[2]c[b](f(c,b+1,a[3]))else local k;local j;local m,l;local e;c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]m,l=i(c[e](f(c,e+1,a[3])))h=l+e-1 j=0;for a=e,h do j=j+1;c[a]=m[j];end;b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,h))b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=g[a[3]];end;elseif e<=13 then g[a[3]]=c[a[2]];elseif e>14 then c[a[2]]=(not c[a[3]]);else c[a[2]]=g[a[3]];end;elseif e<=18 then if e<=16 then local a=a[2]c[a](f(c,a+1,h))elseif e==17 then local b=a[2]c[b](f(c,b+1,a[3]))else local h;local e;c[a[2]]=(not c[a[3]]);b=b+1;a=d[b];g[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))end;elseif e<=19 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];elseif e>20 then b=a[3];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];end;elseif e<=32 then if e<=26 then if e<=23 then if e==22 then c[a[2]]=c[a[3]][a[4]];else local a=a[2]local d,b=i(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=24 then g[a[3]]=c[a[2]];elseif e>25 then local a=a[2]c[a]=c[a](c[a+1])else c[a[2]]();end;elseif e<=29 then if e<=27 then c[a[2]]=(a[3]~=0);elseif e==28 then if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=c[a[3]];end;elseif e<=30 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))elseif e>31 then do return end;else local h;local e;e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))end;elseif e<=38 then if e<=35 then if e<=33 then c[a[2]]=a[3];elseif e>34 then local h=n[a[3]];local f;local e={};f=o({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==29 then e[f-1]={c,a[3]};else e[f-1]={j,a[3]};end;m[#m+1]=e;end;c[a[2]]=l(h,f,g);else local a=a[2]c[a]=c[a](f(c,a+1,h))end;elseif e<=36 then do return end;elseif e==37 then local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))end;elseif e<=41 then if e<=39 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];b=a[3];elseif e>40 then local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;else c[a[2]]=a[3];end;elseif e<=42 then c[a[2]]={};elseif e>43 then c[a[2]]=c[a[3]][a[4]];else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];end;elseif e<=66 then if e<=55 then if e<=49 then if e<=46 then if e==45 then local a=a[2]c[a](f(c,a+1,h))else c[a[2]]=g[a[3]];end;elseif e<=47 then local h;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];elseif e==48 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;else local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];end;elseif e<=52 then if e<=50 then local g;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];elseif e==51 then c[a[2]][a[3]]=c[a[4]];else local h;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];end;elseif e<=53 then local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;elseif e>54 then local h;local e;c[a[2]]=(a[3]~=0);b=b+1;a=d[b];g[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];else c[a[2]]=j[a[3]];end;elseif e<=60 then if e<=57 then if e==56 then if not c[a[2]]then b=b+1;else b=a[3];end;else local j;local m,l;local k;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];e=a[2]m,l=i(c[e](f(c,e+1,a[3])))h=l+e-1 j=0;for a=e,h do j=j+1;c[a]=m[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];do return end;end;elseif e<=58 then c[a[2]]=c[a[3]];elseif e==59 then local a=a[2]local d,b=i(c[a]())h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;else c[a[2]]={};end;elseif e<=63 then if e<=61 then local g;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))elseif e==62 then local a=a[2]c[a](c[a+1])else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=64 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))elseif e>65 then local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;else local b=a[2]local d,a=i(c[b]())h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=77 then if e<=71 then if e<=68 then if e==67 then local j;local l,k;local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,k=i(c[e](f(c,e+1,a[3])))h=k+e-1 j=0;for a=e,h do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,h))else local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];end;elseif e<=69 then local h;local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];do return end;elseif e>70 then c[a[2]]=(a[3]~=0);else local i=n[a[3]];local h;local e={};h=o({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==29 then e[f-1]={c,a[3]};else e[f-1]={j,a[3]};end;m[#m+1]=e;end;c[a[2]]=l(i,h,g);end;elseif e<=74 then if e<=72 then local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;elseif e==73 then c[a[2]]();else local a=a[2]c[a](c[a+1])end;elseif e<=75 then local a=a[2]local d,b=i(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;elseif e>76 then local b=a[2]local e={c[b](f(c,b+1,h))};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=83 then if e<=80 then if e<=78 then local b=a[2]local d,a=i(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;elseif e==79 then if not c[a[2]]then b=b+1;else b=a[3];end;else local h;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))end;elseif e<=81 then local b=a[2]local d,a=i(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;elseif e>82 then c[a[2]]=l(n[a[3]],nil,g);else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=86 then if e<=84 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;elseif e>85 then local a=a[2]c[a]=c[a]()else c[a[2]]=j[a[3]];end;elseif e<=87 then local g;local e;e=a[2]c[e](c[e+1])b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e>88 then local k;local m,l;local j;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]m,l=i(c[e](f(c,e+1,a[3])))h=l+e-1 k=0;for a=e,h do k=k+1;c[a]=m[k];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];e=a[2];j=c[a[3]];c[e+1]=j;c[e]=j[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];else local h;local e;e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];end;b=b+1;end;end);end;return l(true,{},r())();end)(string.byte,table.insert,setmetatable);
