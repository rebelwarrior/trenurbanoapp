delete from ref.subroute where route = 'T2' and direction = 'GEORGETTI';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.006767 18.187521,-66.006442 18.188197,-66.006442 18.188462,-66.006528 18.188717,-66.006635 18.189105,-66.006624 18.189471,-66.006238 18.190287,-66.005959 18.190898,-66.005702 18.191367,-66.00597 18.191724,-66.006485 18.19201,-66.006667 18.192254,-66.006721 18.192611,-66.006718 18.193038,-66.006799 18.19314,-66.007279 18.193212,-66.007762 18.193375,-66.007944 18.193589,-66.008201 18.194089,-66.008512 18.194751,-66.008674 18.194935,-66.009124 18.195016,-66.009693 18.1952,-66.009757 18.195261,-66.00951 18.195852,-66.009414 18.196117,-66.009403 18.196321,-66.009553 18.196667,-66.009714 18.196983,-66.009778 18.197228,-66.009929 18.197789,-66.010283 18.198349,-66.01039 18.198889,-66.010476 18.199103,-66.011138 18.19977,-66.01127 18.200021,-66.011326 18.200132,-66.011444 18.200356,-66.011541 18.20084,-66.011527 18.201422,-66.011452 18.201672,-66.011407 18.201915,-66.011549 18.202441,-66.01171 18.202727,-66.011602 18.202971,-66.011399 18.203216,-66.011377 18.203838,-66.01156 18.204271,-66.011946 18.204587,-66.011965 18.204639,-66.011975 18.204703,-66.011972 18.204911,-66.011978 18.205071,-66.011956 18.205178,-66.011817 18.205392,-66.011776 18.205508,-66.011781 18.205624,-66.011848 18.205774,-66.011946 18.20585,-66.012507 18.206009,-66.012541 18.206038,-66.012588 18.206094,-66.012636 18.206202,-66.01263 18.206286,-66.012606 18.206362,-66.012536 18.20652,-66.012448 18.206706,-66.01239 18.206892,-66.012267 18.207737,-66.012258 18.207831,-66.012278 18.207926,-66.012354 18.207995,-66.012464 18.208052,-66.013196 18.208311,-66.014212 18.208933,-66.014528 18.209036,-66.014861 18.209077,-66.0152 18.209077,-66.015337 18.209089,-66.015712 18.209163,-66.015894 18.209286,-66.016007 18.209418,-66.016119 18.209678,-66.016162 18.209973,-66.016227 18.21008,-66.016296 18.210152,-66.016555 18.210335,-66.016933 18.210692,-66.017074 18.210982,-66.017093 18.211389,-66.017117 18.211602,-66.017162 18.211825,-66.017307 18.212253,-66.017316 18.212414,-66.017312 18.212514,-66.017307 18.212578,-66.017188 18.21293,-66.017145 18.213134,-66.017239 18.213364,-66.017342 18.213566,-66.017477 18.214014,-66.017487 18.214075,-66.017573 18.214351,-66.017627 18.214631,-66.017627 18.215194,-66.017648 18.215289,-66.017677 18.215367,-66.017715 18.21544,-66.017791 18.215558,-66.018072 18.215835,-66.018146 18.215953,-66.018213 18.216199,-66.018224 18.21626,-66.018265 18.216674,-66.0183 18.216891,-66.01842 18.217454,-66.018571 18.218009,-66.018592 18.218111,-66.018635 18.218335,-66.018877 18.218972,-66.018992 18.219419,-66.019005 18.219531,-66.019013 18.219713,-66.018939 18.220708,-66.018943 18.220803,-66.018973 18.220888,-66.019048 18.22095,-66.019175 18.220981,-66.019939 18.220964,-66.020859 18.220935,-66.02119 18.220938,-66.021355 18.220981,-66.021491 18.221033,-66.021726 18.221146,-66.021849 18.221268,-66.022017 18.221489,-66.022253 18.221713,-66.0228 18.222139,-66.023288 18.222406,-66.024192 18.223179,-66.024471 18.223462,-66.024601 18.223528,-66.024908 18.22357,-66.025192 18.22362,-66.025477 18.223691,-66.025817 18.22381,-66.026022 18.22393,-66.02629 18.224154,-66.02635 18.22421,-66.026487 18.224375,-66.027175 18.225419,-66.027308 18.225607,-66.027499 18.225826,-66.027661 18.22597,-66.02878 18.226895,-66.029286 18.227297,-66.02964 18.227634,-66.031024 18.228783,-66.032176 18.229753,-66.032282 18.229719,-66.0329 18.228844,-66.032945 18.228817,-66.033004 18.228844,-66.034054 18.229532,-66.034966 18.229976,-66.035583 18.230186,-66.035593 18.230235,-66.035167 18.231255)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'T2','GEORGETTI', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute where route = 'T2' and direction = 'TOMAS_DE_CASTRO_2';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.035131 18.231287,-66.034863 18.231256,-66.03442 18.231337,-66.034302 18.231299,-66.033946 18.231032,-66.033312 18.230576,-66.032563 18.23002,-66.032444 18.229925,-66.031743 18.229344,-66.031044 18.228772,-66.029654 18.227613,-66.029327 18.227251,-66.028854 18.226833,-66.028173 18.226292,-66.027581 18.225774,-66.027393 18.225555,-66.027242 18.225378,-66.026989 18.225032,-66.026538 18.22435,-66.026404 18.224158,-66.026319 18.22404,-66.026141 18.223904,-66.025823 18.223723,-66.025394 18.223596,-66.024938 18.223513,-66.024703 18.223473,-66.024533 18.223398,-66.024235 18.223167,-66.024211 18.223159,-66.023305 18.222384,-66.022816 18.222117,-66.022272 18.221693,-66.022039 18.221471,-66.02187 18.22125,-66.021743 18.221124,-66.021502 18.221009,-66.021364 18.220955,-66.021194 18.220911,-66.020859 18.220908,-66.019938 18.220937,-66.019178 18.220954,-66.019061 18.220925,-66.018998 18.220873,-66.018971 18.220798,-66.018967 18.220708,-66.019042 18.219713,-66.019034 18.219529,-66.01902 18.219414,-66.018904 18.218965,-66.018663 18.218328,-66.01862 18.218106,-66.018599 18.218004,-66.018417 18.217342,-66.018323 18.216885,-66.018289 18.216658,-66.018246 18.216246,-66.01823 18.21617,-66.018166 18.215945,-66.018092 18.215828,-66.017793 18.215511,-66.017768 18.215472,-66.017723 18.215393,-66.017675 18.215294,-66.017654 18.21519,-66.017655 18.214628,-66.017601 18.214344,-66.017515 18.214069,-66.017504 18.214008,-66.017369 18.213556,-66.017271 18.213343,-66.017198 18.213126,-66.017207 18.212941,-66.01733 18.212582,-66.017342 18.212503,-66.017343 18.212411,-66.017331 18.212201,-66.017182 18.21181,-66.01713 18.211599,-66.017109 18.21139,-66.017102 18.210977,-66.016934 18.210672,-66.016566 18.210322,-66.016315 18.210131,-66.01625 18.210064,-66.01619 18.209965,-66.016147 18.209671,-66.016031 18.209404,-66.015914 18.209266,-66.015724 18.209138,-66.015341 18.209071,-66.015191 18.209063,-66.014861 18.209062,-66.014544 18.209023,-66.014226 18.208914,-66.013201 18.208298,-66.01247 18.208037,-66.012362 18.207979,-66.012301 18.207915,-66.012286 18.207829,-66.01229 18.207735,-66.012409 18.206891,-66.012466 18.206699,-66.012551 18.206535,-66.012625 18.206369,-66.012645 18.206302,-66.012655 18.206199,-66.012604 18.206084,-66.012558 18.20603,-66.012515 18.205995,-66.011954 18.205834,-66.011863 18.20576,-66.011794 18.20562,-66.011794 18.205503,-66.011827 18.205403,-66.011971 18.205191,-66.011998 18.205066,-66.011995 18.204908,-66.011994 18.204702,-66.011986 18.204626,-66.011956 18.204567,-66.011583 18.204255,-66.011406 18.203833,-66.011427 18.203226,-66.011627 18.202985,-66.011741 18.202725,-66.011575 18.202431,-66.011436 18.201914,-66.01148 18.201678,-66.011556 18.201426,-66.011569 18.200838,-66.011471 18.200348,-66.011352 18.20012,-66.011295 18.200009,-66.011162 18.199755,-66.0105 18.199089,-66.010418 18.198882,-66.01031 18.198339,-66.009955 18.197778,-66.009806 18.197221,-66.009741 18.196974,-66.009579 18.196656,-66.009432 18.196316,-66.009442 18.196122,-66.009537 18.195861,-66.00979 18.195254,-66.009708 18.195176,-66.009131 18.19499,-66.008689 18.19491,-66.008537 18.194737,-66.008227 18.194077,-66.007968 18.193575,-66.007779 18.193352,-66.007286 18.193186,-66.006814 18.193115,-66.006747 18.193029,-66.006749 18.192609,-66.006694 18.192244,-66.006504 18.191989,-66.005989 18.191704,-66.005735 18.191365,-66.005985 18.19091,-66.006264 18.190298,-66.006653 18.189478,-66.006663 18.189101,-66.006555 18.18871,-66.00647 18.188458,-66.00647 18.188203,-66.006807 18.187529,-66.006813 18.187473,-66.006799 18.18745)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'T2','TOMAS_DE_CASTRO_2', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;