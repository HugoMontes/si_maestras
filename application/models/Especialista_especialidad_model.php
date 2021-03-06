<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class Especialista_especialidad_model extends CI_Model{

	protected $table_name = 'especialista_especialidad';
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

    public function get_all_join_area($id_centro) {
        $data = array();
        //$this->db->select('*');
        $this->db->select('t1.id, t1.descripcion descripcion, t2.descripcion area');
        //$this->db->from($this->table_name.' t1');
        $this->db->from('especialista_especialidad t1');
        $this->db->join('especialista_area t2','t2.id=t1.id_area');
        $this->db->where(array('id_centro'=>$id_centro));    
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
           $data=$query->result();
            //$data=$query->result_array();
           $query->free_result();
        }
        return $data;
    }

    public function get_all_distinct(){
        $this->db->distinct();
        $this->db->select('descripcion');
        $this->db->order_by('descripcion','asc');
        $query = $this->db->get($this->table_name);
        if ($query->num_rows() > 0){
            $data=$query->result();
            $query->free_result();
            return $data;
        }
    }

    public function insert($data) {
        $data['creado'] = $data['modificado'] = $data['publicado'] = date('Y-m-d H:i:s');
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

    public function findByDescripcion($descripcion){
        return $this->db->get_where($this->table_name, array('descripcion' => $descripcion))->row();
    }

    public function find($find = array()){
        return $this->db->get_where($this->table_name, $find)->row();
    }
}