<%--@elvariable id="gpsEnabled" type="java.lang.Boolean"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html <c:if test="${!applicationScope['appCache.disabled']}">manifest="<c:url value="/cache.manifest"/>"</c:if>>
<head>

    <c:import url="header.jsp"/>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.5/leaflet.css" />
    <link rel="stylesheet" href="<c:url value="/css/trenurbanoapp-map.css"/>">


    <c:if test="${applicationScope['javascript.useSource']}">
        <script src="//cdn.leafletjs.com/leaflet-0.7.3/leaflet-src.js"></script>
        <script src="<c:url value="/js/trenurbanoapp-map.concat.js"/>"></script>
    </c:if>
    <c:if test="${!applicationScope['javascript.useSource']}">
        <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.5/leaflet.js"></script>
        <script src="<c:url value="/js/tumap.min.js"/>"></script>
    </c:if>
    <script type="text/javascript">
        $(document).ready(function () {

            var mapDiv = $('#map');
            mapDiv.css("height", $(window).innerHeight() * 0.86);

            var map = L.map('map', {
                center: TU.MAP.DEFAULTS.CENTER,
                zoom: TU.MAP.DEFAULTS.ZOOM
            });

            var url = ' http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}@2x.png'; //cartodb
            L.tileLayer(url, {
                minZoom: 10,
                maxZoom: 18,
                maxBounds: TU.MAP.DEFAULTS.BOUNDS,
                attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
                '&copy; <a href="http://cartodb.com/attributions">CartoDB</a>',
            }).addTo(map);

            TU.MAP.doMagic(map, {
                gpsEnabled: ${applicationScope['gps.enabled']},
                contextPath: '${pageContext.request.contextPath}',
                debug: ${applicationScope['javascript.useSource']}
            });

            $('#mapa-link').addClass('active');
        });
    </script>
</head>
<body>
<c:import url="menu.jsp"/>
<div id="map" style="width: 100%; height: 460px;"></div>

<div class="modal" id="timeoutModal" tabindex="-1" role="dialog" aria-labelledby="timeoutModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="timeoutModalLabel">&iquest;Sigue ah&iacute;?</h4>
            </div>
            <div class="modal-body">Cierre esta notificaci&oacute;n o presione 'Continuar' para regresar al mapa de
                rastreo GPS de la AMA.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal">Continuar</button>
            </div>
        </div> <!-- /.modal-content -->
    </div> <!-- /.modal-dialog -->
</div>

<div id="contextMenu" class="dropdown clearfix" style="position: absolute; display:none;">
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display:block;position:static;margin-bottom:5px;">
        <li><a tabindex="-1" onclick="TU.MAP.setOrigin()">Rutas desde aqu&iacute;</a></li>
        <li><a tabindex="-1" onclick="TU.MAP.setDestination()">Rutas hacia aqu&iacute;</a></li>
    </ul>
</div>

<div id="markerContextMenu" class="dropdown clearfix" style="position: absolute; display:none;">
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display:block;position:static;margin-bottom:5px;">
        <li><a tabindex="-1" onclick="">Eliminar destino</a></li>
    </ul>
</div>


</body>
</html>