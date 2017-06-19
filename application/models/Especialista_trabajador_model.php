<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class Especialista_trabajador_model extends CI_Model{

	protected $table_name = 'especialista_trabajador';
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

    public function get_by_ci($ci) {
        return $this->db->get_where($this->table_name, array('ci' => $ci))->row();
    }
    
    public function get_values($fields = '', $where = array()){
        $row = NULL;
        if(!empty($fields) && is_array($where) && count($where))
        {
            $this->db->select($fields);
            $this->db->from($this->table_name);
            $this->db->where($where);  
            $query = $this->db->get();
            $row = $query->row();
        }
        return $row;   
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

    public function update($data, $id) {
        $data['modificado'] = date('Y-m-d H:i:s');

        $this->db->trans_start();
        $this->db->where($this->primary_key, $id);
        $this->db->update($this->table_name, $data);
        $this->db->trans_complete();

        return $this->db->trans_status();
            
    }

    public function delete($id) {
        $this->db->where($this->primary_key, $id);

        return $this->db->delete($this->table_name);
    }

    public function delete_relations($id_trabajador, $id_centro){
        return $this->db->query("DELETE FROM especialista_trabajador_especialidad 
                                WHERE especialista_trabajador_especialidad.id_especialidad
                                IN(SELECT id FROM especialista_especialidad WHERE id_centro = $id_centro)
                                AND especialista_trabajador_especialidad.id_trabajador= $id_trabajador");
    }
    
    public function exists($key, $value)
    {
        $this->db->where($key, $value);
        $query = $this->db->get($this->table_name);
        if ($query->num_rows() > 0){
            return true;
        }
        else{
            return false;
        }
    }
    
    public function get_all_trabajadores_by_id_centro($id){
        $query = $this->db->query("SELECT et.id, et.ci, et.nombres, et.apellidos, et.fecha_nacimiento, et.direccion, et.telefono_contacto, et.correo, et.estado, cc.descripcion  FROM especialista_trabajador et
                                    JOIN especialista_trabajador_especialidad ete ON ete.id_trabajador=et.id
                                    JOIN especialista_especialidad ee ON ee.id=ete.id_especialidad
                                    JOIN centro_formacion cc ON cc.id=ee.id_centro AND cc.id=$id GROUP BY et.id ORDER BY et.id");
        $row = $query->result_array();
        if(isset($row)){
            return $row;
        }
       
    }

    public function get_count($where = '', $order_by = '')
    {
        if ($where != '') {
            $this->db->where($where);
        }
        
        if ($order_by != '') {
            $this->db->order_by($order_by);
        }
        
        $Q = $this->db->get($this->table_name);
        return $Q->num_rows();
    }

    public function get_count_by_id_centro($id){
        $query = $this->db->query("SELECT et.id, et.ci, et.nombres, et.apellidos, et.fecha_nacimiento, et.direccion, et.telefono_contacto, et.correo, et.estado, cc.descripcion  FROM especialista_trabajador et
                                    JOIN especialista_trabajador_especialidad ete ON ete.id_trabajador=et.id
                                    JOIN especialista_especialidad ee ON ee.id=ete.id_especialidad
                                    JOIN centro_formacion cc ON cc.id=ee.id_centro AND cc.id=$id GROUP BY et.id ORDER BY et.id");
        $row = $query->result_array();
        if(isset($row)){
            return count($row);
        }
    }    
    
    public function get_pagination($cur_page = 1, $rows_per_page = 25, $where = '', $order_by = '')
    {
        
        if (is_numeric($cur_page) && $cur_page != 'all')
        {
            if(($cur_page-1)*$rows_per_page > 0)
                $start = ($cur_page-1)*$rows_per_page;
            else
                $start = 0;
        }
        else
        {
            $rows_per_page = 0;
            $start = 0;
        }

        $data = array();
        
        if ($where != '') {
            $this->db->where($where);
        }
        
        if ($order_by != '') {
            $this->db->order_by($order_by);
        }
        
        $this->db->limit($rows_per_page, $start);
        
        $Q = $this->db->get($this->table_name);

        if ($Q->num_rows() > 0) {
            foreach ($Q->result_array() as $row) {
                $data[] = $row;
            }
        }
        $Q->free_result();

        return $data;
              
    }

    public function get_fast_search($where = '', $order_by = '')
    {
        $data = array();
        
        if ($where != '') {
            $this->db->where($where);
        }
        
        if ($order_by != '') {
            $this->db->order_by($order_by);
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

    public function is_register_trabajador_centro($id_trabajador, $id_centro){
        $sql='SELECT * FROM especialista_trabajador_especialidad ete, especialista_especialidad ee WHERE ete.id_trabajador='.$id_trabajador.' AND ete.id_especialidad=ee.id AND ee.id_centro='.$id_centro;
        $query = $this->db->query($sql);
        return $query->num_rows();
    }  
}