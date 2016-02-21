<%-- 
    Document   : cont_ficha_estudiante
    Created on : 11/01/2016, 09:27:00 PM
    Author     : Geovanny Barrera
--%>
<br>
<fieldset>
    <legend><h1 class="alineado3">FICHA DEL ESTUDIANTE PARA EL TUTOR</h1></legend>

    <fieldset class="legendas2"><legend class="legendas opcion_iluminada">DATOS DEL ESTUDIANTE</legend>

        <table class="table table-hover table-responsive" >
            <tr>
                <td><label for="txt_id_carta_comp">CARTA COMPROMISO:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_id_carta_comp" name="txt_id_carta_comp" ng-model="txt_id_carta_comp"/></td>
                <td align="right"><label for="txt_actividad">ACTIVIDAD:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_actividad" name="txt_actividad" ng-model="txt_actividad"/></td>
            </tr>
            <tr>
                <td><label for="txt_tipo_doc">TIPO DE DOCUMENTO:</label></td>
                <td><input type="text" class="form-control" id="txt_tipo_doc" readonly="readonly" name="txt_tipo_doc" ng-model="txt_tipo_doc"/></td>
                <td align="right"><label for="txt_fecha_ini">INICIO:</label></td>
                <td>
                    <div class="form-group">
                        <input type="text" class="form-control" readonly="readonly" id="txt_fecha_ini" name="txt_fecha_ini" ng-model="txt_fecha_ini"/>
                    </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td><label for="txt_cedula">CEDULA DE CIUDADANÍA:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_cedula" name="txt_cedula" ng-model="txt_cedula"/></td>
                <td align="right"><label for="txt_fecha_fin">FIN:</label>
                </td>
                <td>
                    <input type="text" class="form-control" readonly="readonly" id="txt_fecha_fin" name="txt_fecha_fin" ng-model="txt_fecha_fin" ng-click="calendarios()"/>
                </td>

            </tr>
            <tr>
                <td><label for="txt_nombre_completo">APELLIDOS Y NOMBRES:</label></td>
                <td colspan="3"><input type="text" readonly="readonly" id="txt_nombre_completo" class="form-control" name="txt_nombre_completo" ng-model="txt_nombre_completo"/></td>
            </tr>
            <tr>
                <td><label for="txt_direccion">DIRECCION:</label><label class="text-danger">(*)</label></td>
                <td colspan="3"><input type="text" id="txt_direccion_est" required="" class="form-control" name="txt_direccion_est" ng-model="txt_direccion_est"/></td>
            </tr>
            <tr>
                <td><label for="txt_fono_est">TELÉFONOS:</label></td>
                <td colspan="1"><input type="text" readonly="readonly" id="txt_fono_est" class="form-control" name="txt_fono_est" ng-model="txt_fono_est"/></td>
                <td align="right"><label for="txt_email_est">E-MAIL:</label></td>
                <td><input type="text" id="txt_email_est" readonly="readonly" class="form-control" name="txt_email_est" ng-model="txt_email_est"/></td>
            </tr>
            <tr>
                <td><label for="txt_facebook">FACEBOOK:</label></td>
                <td><input type="text" id="txt_facebook" class="form-control" name="txt_facebook" ng-model="txt_facebook"/></td>
                <td align="right"><label for="txt_twitter">TWITTER:</label></td>
                <td><input type="text" id="txt_twitter" class="form-control" name="txt_twitter" ng-model="txt_twitter"/></td>
            </tr>
            <tr>
                <td><label for="txt_linkedin">LINKEDIN</label></td>
                <td colspan="3"><input type="text" id="txt_linkedin" class="form-control" name="txt_linkedin" ng-model="txt_linkedin"/></td>
            </tr>
            <tr>
            <table class="table table-hover table-responsive">
                <tr>
                    <td colspan="3" width=179px><label for="txt_carrera">CARRERA:</label></td>
                    <td><input type="text" id="txt_carrera" readonly="readonly" class="form-control" name="txt_carrera" ng-model="txt_carrera"/></td>
                    <td colspan="1" width=171px><label for="txt_semestre">CICLO O SEMESTRE<br>QUE CURSA:</label></td>
                    <td colspan="1"><input type="text" readonly="readonly" id="txt_semestre" size="10" class="form-control" name="txt_semestre" ng-model="txt_semestre"/></td>
                </tr>
            </table>
            </tr>
        </table>
    </fieldset>
    <br><br>
    <fieldset  class="legendas2"><legend class="legendas opcion_iluminada" >DATOS DE LA EMPRESA Y/O PROYECTO</legend>
        <table class="table table-hover table-responsive">
            <tr>
                <td><label for="txt_empresa">INSTITUCIÓN O EMPRESA DE INTERÉS:</label></td>
                <td colspan="3"><input type="text" readonly="readonly" id="txt_empresa" class="form-control" name="txt_empresa" ng-model="txt_empresa"/></td>
            </tr>
            <tr>
                <td><label for="txt_responsable_empresa">RESPONSABLE DE LA EMPRESA:</label></td>
                <td><input type="text" id="txt_responsable_empresa" readonly="readonly" class="form-control" name="txt_responsable_empresa" ng-model="txt_responsable_empresa"/></td>
                <td align="right"><label for="txt_responsable_proy">DEL PROYECTO:</label></td>
                <td><input type="text" id="txt_responsable_proy" class="form-control" name="txt_responsable_proy" ng-model="txt_responsable_proy"/></td>
            </tr>
            <tr>
                <td><label for="txt_departamento">ÁREA O DEPARTAMENTO DE INTERÉS:</label></td>
                <td colspan="3"><input type="text" readonly="readonly" id="txt_departamento" class="form-control" name="txt_departamento" ng-model="txt_departamento"/></td>
            </tr>
            <tr>
                <td><label for="txt_responsable_area">RESPONSABLE DEL ÁREA:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_responsable_area" name="txt_responsable_area" ng-model="txt_responsable_area"/></td>
                <td align="right"><label for="txt_horario_previsto">HORARIO<br>PREVISTO:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_horario_previsto" name="txt_horario_previsto" ng-model="txt_horario_previsto"/></td>
            </tr>
            <tr>
                <td><label for="txt_cargo_resp_cia">CARGO DEL RESPONSABLE CIA:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_cargo_resp_cia" name="txt_cargo_resp_cia" ng-model="txt_cargo_resp_cia"/></td>
                <td align="right"><label for="txt_telefono_cia">TELÉFONOS:</label></td>
                <td><input type="text" class="form-control" readonly="readonly" id="txt_telefono_cia" name="txt_telefono_cia" ng-model="txt_telefono_cia"/></td>
            </tr>
            <tr>
                <td><label for="txt_dir_cia">DIRECCIÓN DE LA COMPAÑÍA:</label></td>
                <td colspan="3"><input type="text" readonly="readonly" class="form-control" id="txt_dir_cia" name="txt_dir_cia" ng-model="txt_dir_cia"/></td>
            </tr>
            <tr>
                <td><label for="txt_nomb_progama">NOMBRE DEL PROGRAMA:</label></td>
                <td colspan="3"><input type="text" readonly="readonly" class="form-control" id="txt_nomb_progama" name="txt_nomb_progama" ng-model="txt_nomb_progama"/></td>
            </tr>
            <tr>
                <td><label for="txt_nomb_proy">NOMBRE DEL PROYECTO(en el caso de<br>
                        extensiones universitarias):
                    </label></td>
                <td colspan="3"><textarea class="form-control" id="txt_nomb_proy" name="txt_nomb_proy"></textarea></td>
            </tr>
            <tr>
                <td><label for="txt_act_realizar">DETALLE BREVEMENTE LAS ACTIVIDADES<br>
                        A REALIZAR (en el caso de Pasantías o<br>
                        Prácticas Pre profesionales):</label></td>
                <td colspan="3"><textarea readonly="readonly" class="form-control" id="txt_act_realizar" name="txt_act_realizar"></textarea></td>
            </tr>
        </table>
    </fieldset>
</fieldset>
<br>
<table>
    <tr>
        <td align="left"><label for="txt_tutor">Nombre del Tutor:&nbsp;&nbsp;</label></td>
        <td align="left"><input type="text" readonly="readonly" class="form-control" id="txt_tutor" name="txt_tutor" ng-model="txt_tutor"></td>
    </tr>
</table>
<input type="hidden" class="form-control" id="txt_cod_proy" name="txt_cod_proy" ng-model="txt_cod_proy"/>
<br><br><center><button ng-click="" type="button" class="btn btn-success" onclick="" ng-disabled="txt_direccion_est.$invalid || txt_cedula.$invalid"><span class="glyphicon glyphicon-saved"></span> Grabar</button></center>