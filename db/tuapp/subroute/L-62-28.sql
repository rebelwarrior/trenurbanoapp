delete from ref.subroute where route = 'L-62-28' and direction = 'RIO_PIEDRAS';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.097019 18.400397,-66.097657 18.399983,-66.097724 18.399981,-66.098646 18.401235,-66.099302 18.40216,-66.100242 18.403522,-66.101101 18.40482,-66.102146 18.40644,-66.102872 18.407531,-66.103253 18.408136,-66.103407 18.408409,-66.10367 18.409017,-66.103898 18.409659,-66.104137 18.410434,-66.1041 18.410549,-66.103779 18.410626,-66.102737 18.410853,-66.101911 18.411081,-66.100873 18.411425,-66.099405 18.412004,-66.097011 18.412911,-66.096434 18.413116,-66.095992 18.413238,-66.09531 18.413372,-66.094691 18.413443,-66.093863 18.413474,-66.093053 18.413509,-66.08972 18.413618,-66.086571 18.413721,-66.085624 18.413796,-66.084577 18.413924,-66.08387 18.414052,-66.082629 18.414377,-66.081553 18.414767,-66.080533 18.415217,-66.078241 18.416311,-66.075323 18.417734,-66.075074 18.417901,-66.074737 18.418064,-66.074489 18.418172,-66.074391 18.418277,-66.074354 18.418432,-66.074374 18.418576,-66.074442 18.418724,-66.074861 18.419557,-66.075229 18.420083,-66.077351 18.42422,-66.077377 18.424317,-66.07732 18.424409,-66.075513 18.42528,-66.075319 18.425295,-66.074658 18.425261,-66.074546 18.425283,-66.073372 18.425862,-66.072695 18.426148,-66.071609 18.426535,-66.071372 18.426619,-66.069911 18.427025,-66.06843 18.427437,-66.067174 18.427812,-66.065041 18.428361,-66.062978 18.428832,-66.060352 18.429354,-66.059543 18.42951,-66.059102 18.429572,-66.058674 18.429644,-66.058589 18.429781,-66.058858 18.431024,-66.05897 18.431748,-66.059036 18.433356,-66.059085 18.434033,-66.059151 18.434923,-66.059257 18.435953,-66.059335 18.436109,-66.059408 18.436153,-66.06024 18.436146,-66.060402 18.436096,-66.060688 18.434931,-66.060727 18.434613,-66.060652 18.434176,-66.06049 18.433648,-66.060049 18.432272,-66.059763 18.431235,-66.059611 18.430809,-66.059371 18.429725,-66.058619 18.426283,-66.058566 18.426181,-66.058456 18.426153,-66.057905 18.426248,-66.057749 18.42623,-66.054255 18.427052,-66.05357 18.427202,-66.053294 18.427202,-66.051183 18.4271,-66.051114 18.427077,-66.051089 18.427022,-66.050701 18.424939,-66.050622 18.424531,-66.050493 18.42409,-66.050431 18.423988,-66.050374 18.423958,-66.050313 18.423925,-66.050249 18.423877,-66.050208 18.423767,-66.049914 18.422822,-66.049898 18.422729,-66.049919 18.422605,-66.049729 18.421925,-66.049594 18.421892,-66.049233 18.422303,-66.048542 18.422934,-66.047788 18.42356,-66.047714 18.423569,-66.047554 18.423427,-66.047046 18.423161,-66.04782 18.421753,-66.047822 18.421684,-66.04742 18.421496,-66.047296 18.421471,-66.04594 18.421067,-66.045909 18.421035,-66.045916 18.420982,-66.046859 18.419035,-66.047805 18.417026,-66.048605 18.415358,-66.049155 18.412603,-66.049222 18.41255,-66.050004 18.412687,-66.050148 18.412674,-66.050271 18.412619,-66.050758 18.412332,-66.050895 18.412287,-66.052077 18.412135,-66.052768 18.412094,-66.053717 18.412046,-66.054078 18.41201,-66.054315 18.411913,-66.055632 18.411266,-66.056544 18.41079,-66.056695 18.410701,-66.056756 18.410511,-66.056599 18.406627,-66.056518 18.404575,-66.05647 18.404244,-66.056435 18.403442,-66.056393 18.403299,-66.0562 18.403222,-66.055616 18.40316,-66.05498 18.40312,-66.053661 18.403043,-66.053563 18.403001,-66.053249 18.402555,-66.052961 18.4021,-66.052616 18.401747,-66.052414 18.401588,-66.052093 18.401396,-66.051642 18.401217,-66.051199 18.401126,-66.050588 18.401078,-66.04784 18.4014,-66.046058 18.401591,-66.046005 18.401558,-66.046008 18.401458,-66.046013 18.400245,-66.046066 18.396944,-66.046122 18.396903,-66.047491 18.396903,-66.047639 18.396944,-66.047632 18.397063,-66.047294 18.397066,-66.047047 18.397291)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'L-62-28','RIO_PIEDRAS', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute where route = 'L-62-28' and direction = 'SAN_PATRICIO';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.047088 18.397423,-66.046913 18.397649,-66.046102 18.397643,-66.046028 18.397683,-66.046009 18.398394,-66.045976 18.400241,-66.045883 18.400254,-66.045543 18.400261,-66.045494 18.400306,-66.045484 18.401611,-66.045525 18.401685,-66.045663 18.401712,-66.050206 18.401181,-66.050566 18.401143,-66.050825 18.401142,-66.051096 18.401157,-66.051609 18.401263,-66.051929 18.401393,-66.052036 18.401519,-66.052106 18.401694,-66.052136 18.401813,-66.051961 18.404308,-66.051961 18.405187,-66.051961 18.40596,-66.052015 18.406231,-66.052145 18.406617,-66.052485 18.407494,-66.052931 18.408596,-66.053488 18.410043,-66.054156 18.411801,-66.054144 18.411885,-66.054044 18.411959,-66.052955 18.41204,-66.052057 18.41209,-66.050819 18.412255,-66.05026 18.41257,-66.050109 18.412639,-66.049924 18.412633,-66.049224 18.412503,-66.049117 18.412565,-66.048583 18.415241,-66.04854 18.415382,-66.048294 18.415913,-66.047764 18.417024,-66.046933 18.418784,-66.046509 18.419658,-66.046202 18.420283,-66.045879 18.420975,-66.045623 18.421471,-66.045311 18.421785,-66.045129 18.421916,-66.045152 18.421977,-66.045785 18.422471,-66.0458 18.422547,-66.045636 18.422829,-66.045637 18.422896,-66.046582 18.423656,-66.046643 18.423682,-66.046717 18.423679,-66.046794 18.423623,-66.047001 18.423231,-66.047059 18.423206,-66.04712 18.42322,-66.047533 18.423443,-66.047701 18.423593,-66.048259 18.424125,-66.048336 18.424138,-66.049766 18.422884,-66.049825 18.422871,-66.049867 18.422926,-66.05015 18.423931,-66.050227 18.42399,-66.050353 18.424006,-66.050437 18.42409,-66.050602 18.424701,-66.051032 18.427023,-66.051076 18.427121,-66.051202 18.427149,-66.056744 18.427419,-66.057996 18.427458,-66.058117 18.427505,-66.058154 18.427668,-66.058575 18.429661,-66.058678 18.429706,-66.059274 18.429627,-66.059328 18.429754,-66.059569 18.430872,-66.059864 18.431937,-66.060113 18.432754,-66.060224 18.433094,-66.06047 18.433811,-66.060571 18.43411,-66.060654 18.434425,-66.060671 18.434722,-66.060653 18.434938,-66.060574 18.435243,-66.060368 18.435922,-66.060327 18.435984,-66.059425 18.436002,-66.059345 18.435953,-66.059314 18.435701,-66.059262 18.434916,-66.059214 18.434384,-66.059142 18.434036,-66.059084 18.432917,-66.059083 18.432505,-66.059056 18.431909,-66.059027 18.431692,-66.058892 18.43106,-66.058638 18.429786,-66.058656 18.429734,-66.058782 18.429656,-66.059254 18.429595,-66.059623 18.429609,-66.060107 18.429525,-66.060507 18.429439,-66.060775 18.429437,-66.063861 18.428748,-66.0649 18.428499,-66.066026 18.428205,-66.067388 18.427834,-66.068431 18.427543,-66.069904 18.427074,-66.071067 18.426754,-66.071609 18.426595,-66.073408 18.425919,-66.07469 18.425308,-66.075034 18.425339,-66.075423 18.425361,-66.075542 18.425332,-66.075742 18.425244,-66.076817 18.424729,-66.077401 18.424464,-66.077487 18.424321,-66.077461 18.424195,-66.076847 18.423021,-66.075537 18.420464,-66.075109 18.419716,-66.074606 18.418751,-66.074478 18.418491,-66.074457 18.418378,-66.074504 18.418286,-66.076344 18.417391,-66.078173 18.416533,-66.079718 18.415787,-66.080567 18.415374,-66.081398 18.414994,-66.08197 18.414775,-66.082675 18.414539,-66.083625 18.414283,-66.084797 18.414047,-66.085779 18.413932,-66.087301 18.413862,-66.088418 18.413824,-66.089646 18.413775,-66.090873 18.413738,-66.091733 18.413714,-66.093462 18.413656,-66.09456 18.413603,-66.095133 18.413559,-66.095861 18.413431,-66.096617 18.413228,-66.097285 18.412976,-66.09833 18.412579,-66.099335 18.412199,-66.100531 18.411685,-66.100668 18.411632,-66.101234 18.411411,-66.10132 18.411316,-66.101282 18.411106,-66.101096 18.410532,-66.101129 18.410453,-66.103134 18.409877,-66.103842 18.409674,-66.103935 18.409618,-66.103909 18.409521,-66.103709 18.408994,-66.103442 18.408389,-66.102939 18.407548,-66.10152 18.405406,-66.100275 18.403492,-66.099326 18.402108,-66.098423 18.400865,-66.097774 18.399977,-66.097719 18.399935,-66.097634 18.399957,-66.097084 18.400319,-66.097 18.400373)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'L-62-28','SAN_PATRICIO', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;