<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class centro_model extends CI_Model{

	protected $table_name = 'centro_formacion';
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

        /*
        $query = $this->db->get($this->table_name);

        if ($query->num_rows() > 0) {
            return $query->result();
        }
        */
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

    public function insert_especialidad($data) {
        $data['creado'] = $data['modificado'] = $data['publicado'] = date('Y-m-d H:i:s');
        $success = $this->db->insert('especialista_especialidad', $data);
        if ($success) {
            return $this->db->insert_id();
        }
        return FALSE;
    }

    public function update($data, $id) {
        $data['modificado'] = date('Y-m-d H:i:s');

        $this->db->trans_start();
        $this->db->where($this->primary_key, $id);
        $this->db->update($this->table_name, $data);
        $this->db->trans_complete();

        return $this->db->trans_status();       
    }

    public function update_especialidad($data,$id_especialidad){
        $data['modificado'] = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->where('id', $id_especialidad);
        $this->db->update('especialista_especialidad', $data);
        $this->db->trans_complete();
        return $this->db->trans_status();  
    }

    public function delete($id) {
        $this->db->where($this->primary_key, $id);
        return $this->db->delete($this->table_name);
    }

    public function delete_especialidad($id_especialidad){
        $this->db->where('id', $id_especialidad);
        return $this->db->delete('especialista_especialidad');   
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

    function get_count_maestras($id_especialidad){
        $this->db->where('id_especialidad',$id_especialidad);
        $query = $this->db->get('especialista_trabajador_especialidad');
        return $query->num_rows();
    }

    function get_count_solicitudes($id_especialidad){
        $this->db->where('id_especialidad',$id_especialidad);
        $query = $this->db->get('especialista_solicitud');
        return $query->num_rows();
    }

    function contains_especialidades($centro_id){
        $this->db->where('id_centro',$centro_id);
        $query = $this->db->get('especialista_especialidad');
        return $query->num_rows();
    }
    
}