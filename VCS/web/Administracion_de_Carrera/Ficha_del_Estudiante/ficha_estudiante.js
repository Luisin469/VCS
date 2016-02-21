/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module("VCS", []);
app.controller("ControladorVCS", function($scope, $http) {
    $scope.institucion = "Universidad Politecnica Salesiana";
    $scope.sede = "Guayaquil";
    $scope.submitted = false;
    $scope.muestra_carrera = false;

    $scope.consultar_estudiante = function() {
        var estudiante = document.getElementById("txt_nombre_est").value;
        var ruta = document.getElementById("ruta_principal").value;

        var $tabla = $("#tbl_estudiante");
        $tabla.find("tr:gt(0)").remove();

        $.ajax({
            type: 'POST',
            dataType: 'json',
            data: {id_est: estudiante},
            //data: {id_cmb:'carrera'},
            //data: $('#formid').serialize(),
            url: ruta + '/F_Consulta_Estudiante',
            success: function(data) {
                $("#div_datos").html("");

                $.each(data.items, function(index, article) {
                    $tabla.append("<tr><td>" + article.id_cc + "</td>\n" +
                            "<td>" + article.nomb_est + "</td>\n" +
                            //"<td>" + article.emp_nombre + "</td>\n" +
                            "<td>" + article.lugar_suscrip + "</td>\n" +
                            "<td>" + article.fecha_suscrip + "</td>\n" +
                            "<td><input type = \"radio\" name = \"group1\" id = \"group1\" value = \"" + article.id_cc + "\" ></td>\n" +
                            "<td class=\"alineado3\">" +
                            "<img width=\"30px\" height=\"30px\" src=\"../../images/modificar.png\" alt=\"Modificar\"/>" +
                            "</td>\n" +
                            "<td class=\"alineado3\">" +
                            "<img width=\"20px\" height=\"10px\" src=\"../../images/eliminar.jpg\" alt=\"Eliminar\"/>" +
                            "</td></tr>\n");
                    document.getElementById("existe_data").value = "1";
                });
                var v = document.getElementById("existe_data").value;
                if (v == "0") {
                    $tabla.append("<tr><td colspan=\"4\" align=\"center\">No hay datos a mostrar</td></tr>");
                }

            }
        });
    };

    $scope.carga_ingreso = function() {
        var estudiante = document.getElementById("txt_nombre_est").value;
        var ruta = document.getElementById("ruta_principal").value;
        var seleccionado = $("input[name='group1']:checked").val();

        if (seleccionado) {//Verifico que tenga seleccionado una Carta compromiso
            alert("ENTRO SELECCIONADO");
            //document.getElementById("frm_datos").action = ruta + "/Administracion_de_Carrera/Ficha_del_Estudiante/ingresar_ficha_estudiante.jsp";
            //document.frm_datos.submit();
            $("#frm_consulta").css("display", "none");
            $("#div_ingreso").css("display", "block");
            //$scope.submitted = true;
            $.ajax({
                type: 'POST',
                //data: {id_cmb:'carrera'},
                //data: $('#formid').serialize(),
                url: ruta + '/Administracion_de_Carrera/Ficha_del_Estudiante/cont_ficha_estudiante.jsp',
                success: function(data) {
                    $("#div_ingreso").html("");
                    $("#div_ingreso").append(data);
                    $scope.carga_datos();
                }
            });
        } else {
            alert("No ha seleccionado una carta compromiso. Favor verifique");
        }


        //alert(ruta);
    };

    $scope.carga2 = function() {
        var ruta = document.getElementById("ruta_principal").value;
        //var fullname = $('#fullname').val();

        $.ajax({
            type: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            mimeType: 'application/json',
            //data: {id_cmb:'carrera'},
            //data: $('#formid').serialize(),
            url: ruta + '/F_Menu_principal.jsp',
            success: function(data) {
                $("#ajaxResponse").html("");
                $.each(data.items, function(index, article) {
                    $("#ajaxResponse").append("");
                    if (article.id_modulo_padre == "1") {
                        $("#ajaxResponse").append("<a class=\"list-group-item active\" href=\"" + article.pagina_modulo + "\">" + article.nombre_modulo + "</a>");
                    } else {
                        $("#ajaxResponse").append("<a class=\"list-group-item\" href=\"" + article.pagina_modulo + "\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + article.nombre_modulo + "</a>\n");
                    }
                });
            }
        });
    };
    $scope.carga_autocomplete_est = function() {
        var ruta = document.getElementById("ruta_principal").value;
        //var fullname = $('#fullname').val();
        $.ajax({
            type: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            mimeType: 'application/json',
            //data: {id_cmb:'carrera'},
            //data: $('#formid').serialize(),
            url: ruta + '/F_carga_estudiantes',
            success: function(data) {
                $("#ajaxIconos").html("");
                $.each(data.items, function(index, article) {
                    if (article.id_modulo_padre == id_modulo_padre) {

                        $("#ajaxIconos").append("<a  href=\"" + article.pagina_modulo + "\">" +
                                " <img width=\"150px\" height=\"150px\" class=\"img-circle\" src=\"" + article.icono_modulo + "\"/> " +
                                article.nombre_modulo + "</a>");

                    }
                });
            }
        });
    };
    $scope.carga_iconos = function() {
        var ruta = document.getElementById("ruta_principal").value;
        var id_modulo_padre = document.getElementById("id_modulo_padre").value;
        //var fullname = $('#fullname').val();
        $.ajax({
            type: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            mimeType: 'application/json',
            //data: {id_cmb:'carrera'},
            //data: $('#formid').serialize(),
            url: ruta + '/F_Menu_principal.jsp',
            success: function(data) {
                $("#ajaxIconos").html("");
                $.each(data.items, function(index, article) {
                    if (article.id_modulo_padre == id_modulo_padre) {

                        $("#ajaxIconos").append("<a  href=\"" + article.pagina_modulo + "\">" +
                                " <img width=\"150px\" height=\"150px\" class=\"img-circle\" src=\"" + article.icono_modulo + "\"/> " +
                                article.nombre_modulo + "</a>");

                    }
                });
            }
        });
    };

    $scope.consulta_ficha_est = function() {

        $.ajax({
            type: 'POST',
            data: {id_cmb: 'tipo_actividad'},
            url: ruta + '/F_muestra_ficha_estudiante',
            success: function(result) {
                $('#div_tipo_actividad').html(result);
            }
        });
    };

    $scope.carga_datos = function() {
        var ruta = document.getElementById("ruta_principal").value;
        var id_cc = document.getElementById("group1").value;
        alert("id_cc " + id_cc);
        $.ajax({
            type: 'POST',
            dataType: 'json',
            data: {id_cc: id_cc},
            //data: {id_cmb:'carrera'},
            //data: $('#formid').serialize(),
            url: ruta + '/F_muestra_ficha_estudiante',
            success: function(data) {

                $.each(data.items, function(index, article) {
                    document.getElementById("txt_id_carta_comp").value = article.id_carta_comp;
                    document.getElementById("txt_actividad").value = article.tipo_act;
                    document.getElementById("txt_fecha_ini").value = article.dia_ini +'/'+article.mes_ini+'/'+article.anio_ini;
                    document.getElementById("txt_fecha_fin").value = article.dia_fin +'/'+article.mes_fin+'/'+article.anio_fin;
                    if (article.est_ced.length > 10){
                        document.getElementById("txt_tipo_doc").value = "PASAPORTE";
                    }else {
                        document.getElementById("txt_tipo_doc").value = "CÉDULA DE CIUDADANÍA";
                    }
                    document.getElementById("txt_cedula").value = article.est_ced;
                    document.getElementById("txt_nombre_completo").value = article.est_nombre;
                    document.getElementById("txt_fono_est").value = article.est_fono;
                    document.getElementById("txt_email_est").value = article.est_mail;
                    document.getElementById("txt_carrera").value = article.est_carrera;
                    document.getElementById("txt_semestre").value = article.est_ciclo;
                    document.getElementById("txt_empresa").value = article.empresa;
                    document.getElementById("txt_responsable_empresa").value = article.emp_rep;
                    document.getElementById("txt_departamento").value = article.area_act;
                    document.getElementById("txt_responsable_area").value = article.resp_area;
                    document.getElementById("txt_horario_previsto").value = article.horario;
                    document.getElementById("txt_cargo_resp_cia").value = article.cargo_rep;
                    document.getElementById("txt_telefono_cia").value = article.fono_rep;
                    document.getElementById("txt_dir_cia").value = article.emp_dir;
                    document.getElementById("txt_nomb_progama").value = article.programa;
                    document.getElementById("txt_nomb_proy").value = article.proyecto;
                    document.getElementById("txt_tutor").value = article.tutor;
                    document.getElementById("txt_act_realizar").value = article.actividades;
                });
            }
        });
    };
    $(function() {
        $('#datetimepicker6').datetimepicker();
        $('#datetimepicker7').datetimepicker({
            useCurrent: false //Important! See issue #1075
        });
        $("#datetimepicker6").on("dp.change", function(e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function(e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });

});