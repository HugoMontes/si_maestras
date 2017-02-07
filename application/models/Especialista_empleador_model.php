<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class Especialista_empleador_model extends CI_Model{

	protected $table_name = 'especialista_empleador';
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
}