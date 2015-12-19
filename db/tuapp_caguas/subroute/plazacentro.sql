delete from ref.subroute_new where route = 'PC' and direction = 'PLAZA_CENTRO';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.032115 18.235175,-66.031938 18.23515,-66.031751 18.235336,-66.031306 18.235216,-66.030786 18.235096,-66.03065 18.235082,-66.030557 18.235095,-66.030475 18.235186,-66.030398 18.235333,-66.029642 18.237208,-66.028941 18.238858,-66.028542 18.239848,-66.028151 18.240379,-66.02776 18.240704,-66.027162 18.241009,-66.025856 18.241486,-66.025441 18.241671,-66.025023 18.241809,-66.024947 18.241909,-66.024941 18.242055,-66.025004 18.242224,-66.025032 18.242263,-66.025092 18.24228,-66.027369 18.241541,-66.027814 18.241321,-66.02815 18.241103,-66.02823 18.241093,-66.028537 18.241453,-66.028572 18.24152,-66.028583 18.241569,-66.027963 18.242731,-66.027716 18.24321,-66.027577 18.243577,-66.027405 18.244148,-66.027298 18.245126,-66.027276 18.245594,-66.027126 18.245961,-66.026045 18.247197,-66.025992 18.247222,-66.025932 18.247211,-66.024932 18.246454,-66.02483 18.246471,-66.024722 18.246602,-66.024684 18.246694,-66.024704 18.246761,-66.024776 18.246941,-66.024757 18.247009,-66.024512 18.247264,-66.02444 18.247255,-66.024216 18.247049,-66.024147 18.247035,-66.023948 18.247237,-66.023012 18.248195,-66.022443 18.248773,-66.021788 18.249082,-66.021503 18.249902,-66.021452 18.249935,-66.019629 18.249366,-66.019032 18.249156,-66.018213 18.24852,-66.018035 18.248179,-66.018285 18.247404,-66.018454 18.246924,-66.018554 18.246717,-66.018917 18.24631,-66.019241 18.246043,-66.01942 18.24595,-66.019716 18.245817,-66.020128 18.245606,-66.020196 18.245525,-66.020142 18.245396,-66.020084 18.245305,-66.020057 18.24515,-66.020113 18.244951,-66.020192 18.244838,-66.020332 18.244734,-66.021943 18.243622,-66.022839 18.242979,-66.023723 18.242376,-66.024146 18.242189,-66.024758 18.242005,-66.02537 18.24181,-66.026962 18.24129,-66.027426 18.241118,-66.027847 18.240879,-66.028264 18.240551,-66.028563 18.240193,-66.028851 18.239708,-66.028966 18.23937,-66.029697 18.237446,-66.030237 18.236159,-66.030634 18.235267,-66.030719 18.235195,-66.030822 18.235182,-66.030984 18.235193,-66.031697 18.235376,-66.032673 18.235716,-66.032799 18.23577,-66.032888 18.235754,-66.032931 18.235702,-66.032925 18.235628,-66.033134 18.235124,-66.033142 18.235045,-66.032926 18.234966,-66.032365 18.234799)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'PC','PLAZA_CENTRO', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_stop where route = 'PC' and direction = 'PLAZA_CENTRO'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8000, 0, 'PC', 'PLAZA_CENTRO'),(8010, 1, 'PC', 'PLAZA_CENTRO');
