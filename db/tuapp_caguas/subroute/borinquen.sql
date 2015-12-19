delete from ref.subroute_new where route = 'BQ' and direction = 'GEORGETTI';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.051821 18.201901,-66.051679 18.202086,-66.051565 18.202239,-66.051398 18.202502,-66.050495 18.203969,-66.050385 18.204179,-66.049973 18.204971,-66.049903 18.205108,-66.049473 18.205918,-66.049135 18.206554,-66.049017 18.206891,-66.048978 18.207084,-66.048973 18.207278,-66.048986 18.207825,-66.048887 18.208198,-66.048721 18.208497,-66.048478 18.208752,-66.047738 18.209218,-66.047258 18.209524,-66.046998 18.209718,-66.046808 18.209955,-66.046682 18.210215,-66.046605 18.210471,-66.046593 18.211494,-66.046539 18.21178,-66.046393 18.212144,-66.046252 18.21243,-66.046113 18.212675,-66.043625 18.216137,-66.041672 18.218908,-66.04144 18.219191,-66.04118 18.219447,-66.041079 18.219627,-66.041016 18.219889,-66.040885 18.220136,-66.040799 18.2203,-66.039014 18.223563,-66.037321 18.22676,-66.03716 18.227089,-66.036456 18.228362,-66.03619 18.228863,-66.035918 18.229486,-66.035172 18.231263)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'BQ','GEORGETTI', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_new where route = 'BQ' and direction = 'BO_BORINQUEN';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.035177 18.231307,-66.035941 18.229493,-66.03621 18.228876,-66.036479 18.228376,-66.037183 18.227115,-66.037365 18.226804,-66.039131 18.223625,-66.040877 18.220378,-66.040974 18.220178,-66.041158 18.219881,-66.041361 18.219615,-66.04147 18.219446,-66.043741 18.216243,-66.046225 18.212751,-66.046369 18.212534,-66.046534 18.212226,-66.046644 18.211825,-66.046658 18.211514,-66.046658 18.210474,-66.04673 18.210227,-66.046852 18.209986,-66.047021 18.209753,-66.047279 18.209559,-66.047764 18.209259,-66.048502 18.20879,-66.048748 18.208533,-66.048934 18.208208,-66.049016 18.207826,-66.049013 18.207274,-66.049023 18.207091,-66.049051 18.206908,-66.049153 18.206612,-66.049225 18.206442,-66.049499 18.205926,-66.049932 18.205114,-66.049998 18.204987,-66.050408 18.204196,-66.050515 18.203997,-66.051437 18.202528,-66.051609 18.202267,-66.051731 18.202127,-66.051896 18.201953)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'BQ','BO_BORINQUEN', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_stop where route = 'BQ' and direction = 'GEORGETTI'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8011, 0, 'BQ', 'GEORGETTI'),(8012, 1, 'BQ', 'GEORGETTI'),(8008, 2, 'BQ', 'GEORGETTI');
delete from ref.subroute_stop where route = 'BQ' and direction = 'BO_BORINQUEN'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8008, 0, 'BQ', 'BO_BORINQUEN'),(8012, 1, 'BQ', 'BO_BORINQUEN'),(8011, 2, 'BQ', 'BO_BORINQUEN');
