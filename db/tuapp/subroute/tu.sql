delete from ref.subroute_new where route = 'TU' and direction = 'SAGRADO_CORAZON';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.15363 18.402389,-66.153707 18.401576,-66.153824 18.399715,-66.153903 18.398255,-66.154 18.396776,-66.154001 18.396485,-66.153944 18.396166,-66.15384 18.395847,-66.153642 18.395568,-66.153452 18.395358,-66.153128 18.395048,-66.152795 18.394757,-66.152491 18.394529,-66.152044 18.394391,-66.15171 18.394355,-66.150487 18.394317,-66.149697 18.394307,-66.148981 18.394278,-66.148487 18.394287,-66.148078 18.394423,-66.147717 18.394682,-66.147345 18.394918,-66.146935 18.395136,-66.146611 18.39519,-66.146059 18.395171,-66.145076 18.395079,-66.1444 18.395005,-66.143828 18.39505,-66.143295 18.395122,-66.142847 18.395194,-66.142275 18.395302,-66.140749 18.395691,-66.140034 18.395853,-66.139025 18.396116,-66.138329 18.396233,-66.138024 18.396269,-66.137396 18.396268,-66.136929 18.396213,-66.136479 18.396111,-66.135651 18.395927,-66.133295 18.395344,-66.132181 18.395088,-66.129664 18.394422,-66.128646 18.394193,-66.126452 18.393656,-66.125396 18.393399,-66.122907 18.392776,-66.122422 18.39262,-66.121375 18.3924,-66.119353 18.391917,-66.116996 18.391343,-66.115911 18.391068,-66.114883 18.39083,-66.113874 18.390601,-66.11327 18.39051,-66.112842 18.390472,-66.112261 18.390499,-66.111823 18.390562,-66.111194 18.390643,-66.110632 18.390742,-66.109884 18.390858,-66.109237 18.390975,-66.108522 18.391129,-66.107431 18.391334,-66.107164 18.391379,-66.10685 18.391388,-66.106507 18.391406,-66.106203 18.391396,-66.105822 18.391368,-66.105269 18.391331,-66.102509 18.391195,-66.100635 18.391108,-66.0984 18.391009,-66.097362 18.390953,-66.093988 18.390776,-66.091402 18.390643,-66.090431 18.390605,-66.088931 18.390493,-66.086478 18.390516,-66.086116 18.390551,-66.084025 18.390711,-66.083406 18.390737,-66.082056 18.390816,-66.081802 18.390829,-66.08137 18.390879,-66.081189 18.390933,-66.080913 18.391069,-66.080646 18.39126,-66.080191 18.391667,-66.079733 18.392103,-66.079353 18.392436,-66.079048 18.392709,-66.078714 18.392881,-66.078361 18.393008,-66.078057 18.393044,-66.077809 18.393016,-66.077561 18.392988,-66.077371 18.392888,-66.077067 18.392714,-66.076756 18.392515,-66.076129 18.392031,-66.07592 18.391885,-66.075626 18.391747,-66.07521 18.391581,-66.074469 18.39136,-66.072186 18.390665,-66.07169 18.390546,-66.071359 18.390471,-66.070998 18.390455,-66.070636 18.390445,-66.070216 18.390487,-66.069835 18.390541,-66.068917 18.390684,-66.067534 18.390893,-66.066355 18.391088,-66.066118 18.391097,-66.065921 18.391077,-66.065642 18.391017,-66.065394 18.390899,-66.065126 18.390711,-66.06494 18.390542,-66.06461 18.390344,-66.064238 18.390235,-66.063887 18.390225,-66.063639 18.390264,-66.063463 18.390323,-66.063266 18.390401,-66.062961 18.390632,-66.062707 18.390795,-66.062345 18.39106,-66.061951 18.391346,-66.061579 18.391631,-66.061232 18.391864,-66.060403 18.392308,-66.058801 18.393151,-66.057648 18.393786,-66.05688 18.394198,-66.05628 18.394581,-66.054986 18.395506,-66.054057 18.396138,-66.053506 18.396517,-66.053247 18.396717,-66.053008 18.396973,-66.052873 18.397269,-66.052748 18.397663,-66.052644 18.398058,-66.052384 18.398886,-66.052061 18.40005,-66.051946 18.400582,-66.051966 18.401194,-66.052025 18.402319,-66.051886 18.404253,-66.051686 18.406187,-66.051706 18.406473,-66.051767 18.40671,-66.051984 18.407066,-66.052169 18.407254,-66.052417 18.407412,-66.052748 18.407541,-66.053213 18.407581,-66.053637 18.407612,-66.054035 18.407647,-66.054339 18.407781,-66.054525 18.4079,-66.05469 18.408028,-66.054845 18.408206,-66.054968 18.408414,-66.055061 18.40868,-66.055214 18.409608,-66.055285 18.410082,-66.055561 18.411819,-66.055652 18.412402,-66.055693 18.412619,-66.055806 18.412955,-66.056177 18.413587,-66.056311 18.413873,-66.056352 18.414336,-66.056375 18.414921,-66.056417 18.416868,-66.056551 18.417367,-66.056674 18.417851,-66.056871 18.41875,-66.056981 18.419342,-66.057063 18.419796,-66.057124 18.420171,-66.057227 18.420457,-66.057371 18.420704,-66.057687 18.420997,-66.057954 18.421207,-66.058124 18.421377,-66.058293 18.421514,-66.058483 18.42176,-66.05853 18.421888,-66.058606 18.422061,-66.058644 18.422234,-66.058926 18.42324,-66.059491 18.425415,-66.059737 18.426452,-66.059859 18.427212,-66.060441 18.430647,-66.060513 18.431052,-66.060564 18.431427,-66.060584 18.431723,-66.060562 18.43193,-66.060521 18.432197,-66.060365 18.432601,-66.060043 18.433133,-66.059721 18.433656,-66.059524 18.433991,-66.059441 18.434227,-66.059409 18.434543,-66.059429 18.4348,-66.059481 18.434958,-66.059563 18.435155,-66.059674 18.435347,-66.059833 18.435552,-66.060023 18.435789,-66.06046 18.436371,-66.06102 18.437079,-66.061087 18.437168,-66.061339 18.437501,-66.061495 18.437707,-66.061656 18.437912,-66.0618 18.43808)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'TU','SAGRADO_CORAZON', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_new where route = 'TU' and direction = 'BAYAMON';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.0618 18.43808,-66.061656 18.437912,-66.061495 18.437707,-66.061339 18.437501,-66.061087 18.437168,-66.06102 18.437079,-66.06046 18.436371,-66.060023 18.435789,-66.059833 18.435552,-66.059674 18.435347,-66.059563 18.435155,-66.059481 18.434958,-66.059429 18.4348,-66.059409 18.434543,-66.059441 18.434227,-66.059524 18.433991,-66.059721 18.433656,-66.060043 18.433133,-66.060365 18.432601,-66.060521 18.432197,-66.060562 18.43193,-66.060584 18.431723,-66.060564 18.431427,-66.060513 18.431052,-66.060441 18.430647,-66.059859 18.427212,-66.059737 18.426452,-66.059491 18.425415,-66.058926 18.42324,-66.058644 18.422234,-66.058606 18.422061,-66.05853 18.421888,-66.058483 18.42176,-66.058293 18.421514,-66.058124 18.421377,-66.057954 18.421207,-66.057687 18.420997,-66.057371 18.420704,-66.057227 18.420457,-66.057124 18.420171,-66.057063 18.419796,-66.056981 18.419342,-66.056871 18.41875,-66.056674 18.417851,-66.056551 18.417367,-66.056417 18.416868,-66.056375 18.414921,-66.056352 18.414336,-66.056311 18.413873,-66.056177 18.413587,-66.055806 18.412955,-66.055693 18.412619,-66.055652 18.412402,-66.055561 18.411819,-66.055285 18.410082,-66.055214 18.409608,-66.055061 18.40868,-66.054968 18.408414,-66.054845 18.408206,-66.05469 18.408028,-66.054525 18.4079,-66.054339 18.407781,-66.054035 18.407647,-66.053637 18.407612,-66.053213 18.407581,-66.052748 18.407541,-66.052417 18.407412,-66.052169 18.407254,-66.051984 18.407066,-66.051767 18.40671,-66.051706 18.406473,-66.051686 18.406187,-66.051886 18.404253,-66.052025 18.402319,-66.051966 18.401194,-66.051946 18.400582,-66.052061 18.40005,-66.052384 18.398886,-66.052644 18.398058,-66.052748 18.397663,-66.052873 18.397269,-66.053008 18.396973,-66.053247 18.396717,-66.053506 18.396517,-66.054057 18.396138,-66.054986 18.395506,-66.05628 18.394581,-66.05688 18.394198,-66.057648 18.393786,-66.058801 18.393151,-66.060403 18.392308,-66.061232 18.391864,-66.061579 18.391631,-66.061951 18.391346,-66.062345 18.39106,-66.062707 18.390795,-66.062961 18.390632,-66.063266 18.390401,-66.063463 18.390323,-66.063639 18.390264,-66.063887 18.390225,-66.064238 18.390235,-66.06461 18.390344,-66.06494 18.390542,-66.065126 18.390711,-66.065394 18.390899,-66.065642 18.391017,-66.065921 18.391077,-66.066118 18.391097,-66.066355 18.391088,-66.067534 18.390893,-66.068917 18.390684,-66.069835 18.390541,-66.070216 18.390487,-66.070636 18.390445,-66.070998 18.390455,-66.071359 18.390471,-66.07169 18.390546,-66.072186 18.390665,-66.074469 18.39136,-66.07521 18.391581,-66.075626 18.391747,-66.07592 18.391885,-66.076129 18.392031,-66.076756 18.392515,-66.077067 18.392714,-66.077371 18.392888,-66.077561 18.392988,-66.077809 18.393016,-66.078057 18.393044,-66.078361 18.393008,-66.078714 18.392881,-66.079048 18.392709,-66.079353 18.392436,-66.079733 18.392103,-66.080191 18.391667,-66.080646 18.39126,-66.080913 18.391069,-66.081189 18.390933,-66.08137 18.390879,-66.081802 18.390829,-66.082056 18.390816,-66.083406 18.390737,-66.084025 18.390711,-66.086116 18.390551,-66.086478 18.390516,-66.088931 18.390493,-66.090431 18.390605,-66.091402 18.390643,-66.093988 18.390776,-66.097362 18.390953,-66.0984 18.391009,-66.100635 18.391108,-66.102509 18.391195,-66.105269 18.391331,-66.105822 18.391368,-66.106203 18.391396,-66.106507 18.391406,-66.10685 18.391388,-66.107164 18.391379,-66.107431 18.391334,-66.108522 18.391129,-66.109237 18.390975,-66.109884 18.390858,-66.110632 18.390742,-66.111194 18.390643,-66.111823 18.390562,-66.112261 18.390499,-66.112842 18.390472,-66.11327 18.39051,-66.113874 18.390601,-66.114883 18.39083,-66.115911 18.391068,-66.116996 18.391343,-66.119353 18.391917,-66.121375 18.3924,-66.122422 18.39262,-66.122907 18.392776,-66.125396 18.393399,-66.126452 18.393656,-66.128646 18.394193,-66.129664 18.394422,-66.132181 18.395088,-66.133295 18.395344,-66.135651 18.395927,-66.136479 18.396111,-66.136929 18.396213,-66.137396 18.396268,-66.138024 18.396269,-66.138329 18.396233,-66.139025 18.396116,-66.140034 18.395853,-66.140749 18.395691,-66.142275 18.395302,-66.142847 18.395194,-66.143295 18.395122,-66.143828 18.39505,-66.1444 18.395005,-66.145076 18.395079,-66.146059 18.395171,-66.146611 18.39519,-66.146935 18.395136,-66.147345 18.394918,-66.147717 18.394682,-66.148078 18.394423,-66.148487 18.394287,-66.148981 18.394278,-66.149697 18.394307,-66.150487 18.394317,-66.15171 18.394355,-66.152044 18.394391,-66.152491 18.394529,-66.152795 18.394757,-66.153128 18.395048,-66.153452 18.395358,-66.153642 18.395568,-66.15384 18.395847,-66.153944 18.396166,-66.154001 18.396485,-66.154 18.396776,-66.153903 18.398255,-66.153824 18.399715,-66.153707 18.401576,-66.15363 18.402389)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'TU','BAYAMON', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_stop where route = 'TU' and direction = 'BAYAMON'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (1588, 0, 'TU', 'BAYAMON'),(1587, 1, 'TU', 'BAYAMON'),(1586, 2, 'TU', 'BAYAMON'),(1585, 3, 'TU', 'BAYAMON'),(1584, 4, 'TU', 'BAYAMON'),(1583, 5, 'TU', 'BAYAMON'),(1582, 6, 'TU', 'BAYAMON'),(1581, 7, 'TU', 'BAYAMON'),(1580, 8, 'TU', 'BAYAMON'),(1595, 9, 'TU', 'BAYAMON'),(1594, 10, 'TU', 'BAYAMON'),(1593, 11, 'TU', 'BAYAMON'),(1592, 12, 'TU', 'BAYAMON'),(1591, 13, 'TU', 'BAYAMON'),(1590, 14, 'TU', 'BAYAMON'),(1589, 15, 'TU', 'BAYAMON');
delete from ref.subroute_stop where route = 'TU' and direction = 'SAGRADO_CORAZON'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (1589, 0, 'TU', 'SAGRADO_CORAZON'),(1590, 1, 'TU', 'SAGRADO_CORAZON'),(1591, 2, 'TU', 'SAGRADO_CORAZON'),(1592, 3, 'TU', 'SAGRADO_CORAZON'),(1593, 4, 'TU', 'SAGRADO_CORAZON'),(1594, 5, 'TU', 'SAGRADO_CORAZON'),(1595, 6, 'TU', 'SAGRADO_CORAZON'),(1580, 7, 'TU', 'SAGRADO_CORAZON'),(1581, 8, 'TU', 'SAGRADO_CORAZON'),(1582, 9, 'TU', 'SAGRADO_CORAZON'),(1583, 10, 'TU', 'SAGRADO_CORAZON'),(1584, 11, 'TU', 'SAGRADO_CORAZON'),(1585, 12, 'TU', 'SAGRADO_CORAZON'),(1586, 13, 'TU', 'SAGRADO_CORAZON'),(1587, 14, 'TU', 'SAGRADO_CORAZON'),(1588, 15, 'TU', 'SAGRADO_CORAZON');
