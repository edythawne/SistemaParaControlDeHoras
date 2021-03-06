<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class AlumnoController extends CI_Controller {

    private $versionName = 'v1';

    /**
     * AlumnoController constructor.
     */
    public function __construct(){
        parent::__construct();

        // Cargar Version
        $this -> versionName = $this -> config -> item('versionName');

        // Cargar librerias
        $this -> load -> library('form_validation');
        $this -> load -> helper(array('url', 'form', 'crypto_helper', 'metro_helper'));

        // Model
        $this -> load -> model('user_model');
    }

    /**
     * Index Method
     */
    public function index(){
        $this -> validateSession();

        // Consultas
        $consult_1 = $this -> user_model -> mostrarTodaInformacionAlumno($this -> session -> userdata('id'));
        $consult_2 = $this -> user_model -> checarRegistroHoy($this -> session -> userdata('id'));
        $consult_3 = count($this -> user_model -> mostrarRegistroHoy($this -> session -> userdata('id')));

        //$this -> user_model -> contarTodoRegistroAlumno($this -> session -> userdata('id'))

        $dataStudent = array('alumnoServicio' => $consult_1[0], 'checarRegistroHoy' => $consult_2, 'checarRegistroHoyCompleto' => $consult_3);

        $this -> load -> view($this->versionName.'/alumno/index', $dataStudent);
    }

    /**
     * Insertar informacion
     */
    public function store(){
        $this -> validateSession();

        if ($this -> user_model -> checarRegistroHoy($this -> session -> userdata('id')) == 0){
            $this -> load -> view($this->versionName.'/alumno/create');
        } else {
            $this->index();
        }
    }

    /**
     * Actualización
     * @param $params
     */
    public function update(){
        // Validar sesion
        $this -> validateSession();

        // Validar si ya se actualizo registro
        if (count($this -> user_model -> mostrarRegistroHoy($this -> session -> userdata('id'))) == 1){

            $consulta_1 = $this -> user_model -> mostrarRegistroHoy($this -> session -> userdata('id'));
            $dataStudent =  array('registroHoy' => $consulta_1);

            // Guardar hora de entrada en session
            $this -> session -> set_userdata('in_time', date('H:i:s', strtotime($consulta_1[0]['al_entrada'])));

            $this -> load -> view($this->versionName.'/alumno/update', $dataStudent);
        } else {
            $this->index();
        }
    }

    /**
     * Mostrar algunos registros
     * @param $params
     */
    public function show($params){

    }

    /**
     * Validar session
     */
    public function validateSession(){
        if (!$this -> session -> userdata('nombre')){
            redirect($this->versionName.'/home');
        }

        if ($this -> session -> userdata('access') != 'user'){
            redirect($this->versionName.'/admon/index');
        }
    }

    /**
     * Cerrar sesion
     */
    public function closeSession(){
        $this -> session -> set_userdata('access', 'false');
        $this -> session -> sess_destroy();

        if ($this -> session -> userdata('access') === 'false'){
            redirect($this->versionName.'/home');
        }
    }

    /**
     * Guardar el registro de entrada
     */
    public function saveRegister(){
        // Validar el formulario
        $this -> form_validation -> set_rules('date', 'Date', 'required|callback_check_date_format');
        $this -> form_validation -> set_rules('time', 'Time', 'required|callback_check_time_format');

        if ($this -> form_validation -> run() == FALSE){
            $this -> store();
        } else {
            $format_date = date('Y-m-d', strtotime($this -> input -> post('date')));
            $format_time = date("H:i:s", strtotime($this -> input -> post('time')));
            $data = array('fk_alumno' => $this -> session -> userdata('id'), 'al_entrada' => $format_date.' '.$format_time);

            if ($this -> user_model -> agregarRegistro($data) == 1){
                $this -> session -> set_userdata('message', '¡Hora de entrada registrada!');
                redirect($this->versionName.'/alumno');
            } else {
                $this -> session -> set_userdata('message', '¡Error al registrar hora de entrada!');
            }
        }
    }

    /**
     * Actualizar registro
     */
    public function updateRegister(){
        // Validar el formulario
        $this -> form_validation -> set_rules('time', 'Time', 'required|callback_check_time_inout|callback_check_time_format');

        if ($this -> form_validation -> run() == FALSE){
            $this -> update();
        } else {
            $format_date = date('Y-m-d');
            $format_time = date("H:i:s", strtotime($this -> input -> post('time')));
            $data = array('al_salida' => $format_date.' '.$format_time);

            if ($this -> user_model -> agregarSalidaRegistro($this -> session -> userdata('id'), $data) == 1){
                $this -> session -> set_userdata('message', '¡Hora de salida registrada!');
                redirect($this->versionName.'/alumno');
            } else {
                $this -> session -> set_userdata('message', '¡Error al registrar hora de salida!');
            }
        }
    }

    /**
     * Checar que la hora de salida sea mayor a la de entrada
     * @param $string
     * @return bool
     */
    public function check_time_inout($string){
        $in_time = $this -> session -> userdata('in_time');
        $in_out = date('H:i:s', strtotime($string));

        if (strtotime($in_out) > strtotime($in_time)){
            return true;
        } else {
            $this -> form_validation -> set_message('check_time_inout', 'Ingrese una Hora de Salida mayor a la de Entrada');
            return false;
        }
    }

    /**
     * Validación de la hora actual
     * @param $string
     * @return bool
     */
    public function check_time_format($string){
        if (strpos($string, 'AM') || strpos($string, 'PM')){
            if (strpos($string, 'AM')){
                $this -> form_validation -> set_message('check_time_format', 'Ingrese PM en vez de AM a la hora');
                return false;
            } else {
                return true;
            }
        } else {
            if (date('H:i:s', strtotime($string)) > date('H:i:s', strtotime('13:00:00'))){
                return true;
            } else {
                $this -> form_validation -> set_message('check_time_format', 'Ingrese una hora mayor a las 14:30');
                return false;
            }
        }
    }

    /**
     * Validación de la fecha actual
     * @param $string
     * @return bool
     */
    public function check_date_format($string){
        if (date('Y-m-d') ===  $string){
            return true;
        } else {
            $this -> form_validation -> set_message('check_date_format', 'Ingrese la fecha actual');
            return false;
        }
    }
}


?>