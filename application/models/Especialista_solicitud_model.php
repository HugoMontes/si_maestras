<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class Especialista_solicitud_model extends CI_Model{

	protected $table_name = 'especialista_solicitud';
    protected $primary_key = 'id';

    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->helper('inflector');
        if (!$this->table_name) {
            $this->table_name = strtolower(plural(get_class($this)));
        }
    }

    public function get($id) {
        return $this->db->get_where($this->table_name, array($this->primary_key => $id))->row();
    }

    public function get_all($fields = '', $where = array(), $table = '', $limit = '', $order_by = '', $group_by = '') {
        $data = array();
        if ($fields != '') {
            $this->db->select($fields);
        }

        if (count($where)) {
            $this->db->where($where);
        }

        if ($table != '') {
            $this->table_name = $table;
        }

        if ($limit != '') {
            $this->db->limit($limit);
        }

        if ($order_by != '') {
            $this->db->order_by($order_by);
        }

        if ($group_by != '') {
            $this->db->group_by($group_by);
        }

        $Q = $this->db->get($this->table_name);

        if ($Q->num_rows() > 0) {
            foreach ($Q->result_array() as $row) {
                $data[] = $row;
            }
        }
        $Q->free_result();

        return $data;
    }

    public function get_all_solicitudes_satisfaccion(){
        $now = date('Y-m-d');
        $sql='SELECT es.id, ee.correo, es.fecha_ini, es.fecha_fin, es.creado FROM '.$this->table_name.' AS es '; 
        $sql.='INNER JOIN especialista_empleador AS ee ON ee.id=es.id_empleador ';
        $sql.='WHERE es.ctr_formulario_satisfaccion = 0 ';
        $sql.='AND es.fecha_fin <= ? ';
        $query = $this->db->query($sql,array($now));
        if ($query->num_rows() > 0) {
            return $query->result();
        }
    }

    public function insert($data) {
        $data['creado'] = $data['modificado'] = date('Y-m-d H:i:s');

        $success = $this->db->insert($this->table_name, $data);
        if ($success) {
            return $this->db->insert_id();
        } else {
            return FALSE;
        }
    }

    public function update($data, $id) {
        $data['modificado'] = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->where($this->primary_key, $id);
        $this->db->update($this->table_name, $data);
        $this->db->trans_complete();
        return $this->db->trans_status();       
    }

    /*
    SELECT DISTINCT et.id AS id_trabajador, ec.descripcion AS ciudad, et.apellidos, et.nombres, et.telefono_contacto, et.telefono_referencia, et.correo, et.direccion
    FROM especialista_trabajador_especialidad AS ete 
    JOIN especialista_trabajador AS et ON ete.id_trabajador=et.id
    JOIN especialista_especialidad AS ee ON ete.id_especialidad=ee.id
    WHERE et.id_ciudad = (SELECT id_ciudad FROM especialista_solicitud WHERE id_empleador=58)

    AND ee.id_area IN (SELECT DISTINCT id_especialidad FROM especialista_solicitud WHERE id_empleador=58)
    ORDER BY et.apellidos
    */

    /*
    public function get_especialistas_by_id_empleador($id){
        $sql='SELECT DISTINCT et.id AS id_trabajador, ec.descripcion AS ciudad, et.apellidos, et.nombres, et.telefono_contacto, et.telefono_referencia, et.correo, et.direccion
              FROM especialista_trabajador_especialidad AS ete 
              INNER JOIN especialista_trabajador AS et ON ete.id_trabajador=et.id
              INNER JOIN especialista_ciudad AS ec ON et.id_ciudad=ec.id
              WHERE et.id_ciudad IN  (SELECT DISTINCT id_ciudad FROM especialista_solicitud WHERE id_empleador='.$id.')
              AND ete.id_especialidad IN (SELECT DISTINCT id_especialidad FROM especialista_solicitud WHERE id_empleador='.$id.')
              ORDER BY et.apellidos';
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    */

    /*
    public function get_especialistas_by_id_solicitud($id){
        $sql='SELECT et.id AS id_trabajador, et.apellidos, et.nombres, et.telefono_contacto, et.telefono_referencia, et.correo, et.direccion
                FROM especialista_trabajador AS et 
                JOIN especialista_trabajador_especialidad AS ete ON ete.id_trabajador=et.id
                JOIN especialista_especialidad AS ee ON ee.id=ete.id_especialidad
                JOIN especialista_area AS ea ON ea.id=ee.id_area
                JOIN especialista_solicitud AS es ON es.id_especialidad=ea.id              
                WHERE es.id='.$id.' ORDER BY RAND() LIMIT 100';
        $query = $this->db->query($sql);
        return $query->result_array();
        //if ($query->num_rows() > 0) {
        //    return $query->result();
        //}
    }
    */
    public function get_especialistas_by_id_solicitud($id){
        /*
        $sql='SELECT et.id AS id_trabajador, ec.descripcion AS ciudad, et.apellidos, et.nombres, et.telefono_contacto, et.telefono_referencia, et.correo, et.direccion
                FROM especialista_trabajador AS et 
                JOIN especialista_trabajador_especialidad AS ete ON ete.id_trabajador=et.id
                JOIN especialista_especialidad AS ee ON ee.id=ete.id_especialidad
                JOIN especialista_solicitud AS es ON es.id_especialidad=ee.id
                JOIN especialista_ciudad AS ec ON ec.id=es.id_ciudad
                JOIN especialista_area AS ea ON ea.id=es.id_especialidad
                WHERE es.id='.$id.' ORDER BY RAND() LIMIT 100';
        */
        $sql='SELECT * FROM especialista_solicitud WHERE id='.$id;
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function get_solicitud_by_id($id){
        $this->db->from('especialista_solicitud');
        $this->db->where('id',$id);  
        $query = $this->db->get();
        if($query->num_rows()>0){
            return $query->row();            
        }
        return null;
    }

    public function get_trabajadores_by_id_area($id){
        $sql='SELECT et.id AS id_trabajador, et.apellidos, et.nombres, et.telefono_contacto, et.telefono_referencia, et.correo, et.direccion
                FROM especialista_trabajador AS et 
                JOIN especialista_trabajador_especialidad AS ete ON ete.id_trabajador=et.id
                JOIN especialista_especialidad AS ee ON ee.id=ete.id_especialidad
                WHERE ee.id_area='.$id.' ORDER BY RAND() LIMIT 100';
        $query = $this->db->query($sql);
        return $query->result_array();
    }    

    public function get_especialidad_by_id_trabajador($id){
        $sql='SELECT ee.id AS id_especialidad, ee.descripcion AS especialidad, cf.descripcion AS centro 
              FROM especialista_trabajador_especialidad AS ete 
              INNER JOIN especialista_especialidad AS ee ON ee.id=ete.id_especialidad
              INNER JOIN centro_formacion AS cf ON cf.id=ee.id_centro
              INNER JOIN especialista_area AS ea ON ea.id=ee.id_area
              WHERE ete.id_trabajador='.$id;
        $query = $this->db->query($sql);
        return $query->result_array();   
    }

    public function get_id_especialidades_by_id_empleador($id){
        // this->db->select($fields);
        $this->db->from('especialista_solicitud');
        $this->db->where('id_empleador',$id);  
        $query = $this->db->get();
        if($query->num_rows()>0){
            return $query->result();            
        }

    }
}