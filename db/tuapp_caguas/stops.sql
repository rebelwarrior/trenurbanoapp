delete from ref.stop where gid = 8002; insert into ref.stop (gid, routes, descriptio, ama_id, geom) select 8002 as gid, NULL as routes, 'Terminal San Lorenzo' as descriptio, NULL as ama_id, ST_GeomFromEWKT('SRID=4326;POINT(-65.96152 18.187474)');
delete from ref.stop where gid = 8001; insert into ref.stop (gid, routes, descriptio, ama_id, geom) select 8001 as gid, NULL as routes, 'Valle Tolima' as descriptio, NULL as ama_id, ST_GeomFromEWKT('SRID=4326;POINT(-66.046304 18.242135)');
delete from ref.stop where gid = 8000; insert into ref.stop (gid, routes, descriptio, ama_id, geom) select 8000 as gid, NULL as routes, 'Terminal Caguas' as descriptio, NULL as ama_id, ST_GeomFromEWKT('SRID=4326;POINT(-66.032452 18.23506)');
