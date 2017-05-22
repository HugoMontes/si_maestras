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

    public function insert($data) {
        $data['creado'] = $data['modificado'] = date('Y-m-d H:i:s');

        $success = $this->db->insert($this->table_name, $data);
        if ($success) {
            return $this->db->insert_id();
        } else {
            return FALSE;
        }
    }

    public function get_especialistas_by_id_empleador($id){
        $sql='SELECT DISTINCT et.id AS id_trabajador, ec.descripcion AS ciudad, et.apellidos, et.nombres, et.telefono_contacto, et.telefono_referencia, et.correo, et.direccion
              FROM especialista_trabajador_especialidad AS ete 
              INNER JOIN especialista_trabajador AS et ON ete.id_trabajador=et.id
              INNER JOIN especialista_ciudad AS ec ON et.id_ciudad=ec.id
              WHERE et.id_ciudad IN  (SELECT DISTINCT id_ciudad FROM especialista_solicitud WHERE id_empleador='.$id.')
              AND ete.id_especialidad IN (SELECT DISTINCT id_especialidad FROM especialista_solicitud WHERE id_empleador='.$id.')
              ORDER BY RAND() LIMIT 100';
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function get_especialidad_by_id_trabajador($id){
        $sql='SELECT *
              FROM especialista_trabajador_especialidad AS ete 
              INNER JOIN especialista_trabajador AS et ON ete.id_trabajador=et.id
              INNER JOIN especialista_especialidad AS ee ON ee.id=ete.id_especialidad
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