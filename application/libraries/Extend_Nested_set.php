<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Extend_Nested_set extends CI_Nested_set {
    
    public function __construct()
    {
    parent::__construct();
    }

    /**
     * Devuelve un Array con el arbol a partir del nodo especificado
     * @param array $node El nodo en el cual se empieza
     * @param $field campo que sera asociado al id del nodo (id => field)
     * @param boolean direct cuando es cierto, va a recuperar sólo los hijos inmediatos utilizando los nodos padres
     * @return Array de opciones para select HTML
     */
    public function getSubTreeForSelect($nodes, $field = 'nombre', $direct = FALSE) {
    	if(isset($nodes[0]) && !is_array($nodes[0])) {
    		$nodes = array($nodes);
    	}
    	
        $arraySelect = array();
        
    	foreach($nodes AS $node) {
    	   
            if($direct)
            {
                $tree_handle = $this->getTreePreorder($node, TRUE);
                $childrens = $tree_handle['result_array'];
                
                foreach($childrens as $children):
                
                    $id = $children['id'];
                    $retVal = $children[$field];
                    $arraySelect[$id] = $retVal;
                
                endforeach;
                
            }
            else
            {
                $tree_handle = $this->getTreePreorder($node);
        		while($this->getTreeNext($tree_handle))
        		{
        		    $retVal = '';
                    $level = $this->getTreeLevel($tree_handle);
                    if($level - 1 > 0)
                    {
                        $retVal .= (str_repeat('-', ($level-1)*4));
                    }
                    $retVal .= $tree_handle['row'][$field];
                    
                    $id = $tree_handle['row'][$this->primary_key_column_name];
                    $arraySelect[$id] = $retVal;              
        		}
            }

    	}
    	return $arraySelect;
    }    
        
    /**
     * Devuelve un Array con el arbol a partir del nodo raiz
     * @param $field campo que sera asociado al id del nodo (id => field)
     * @return Array de opciones para select HTML
     */
	public function getTreeForSelect($field = 'nombre') {
		return $this->getSubTreeForSelect($this->getRootNodes(), $field);
	}
    
    public function getMenuBootstrap()
    {
       $CI = get_instance();
       $CI->load->model('menu_model');
       
       $menu = $CI->menu_model->get(1); // menu main
       $tree_handle = $this->getTreePreorder((array)$menu, TRUE);
       $childrens = $tree_handle['result_array'];
       
       $html = '';
        
       foreach($childrens as $children):
        $html.= $this->getSubTreeBootstrap($children);
       endforeach;
       
       return $html;        
    }
    
	/**
	 * Renders the tree starting from given node
	 * @param array $node The node to start with
	 * @return string Unordered HTML list of the tree
	 */
	public function getSubTreeBootstrap($node) {
		if(empty($node)) return FALSE;
		$tree_handle = $this->getTreePreorder($node);
		$menuData = array(
			'items' => array(),
			'parents' => array()
		);
		foreach ($tree_handle['result_array'] as $menuItem)
		{
			$menuData['items'][$menuItem[$this->primary_key_column_name]] = $menuItem;
			$menuData['parents'][$menuItem[$this->parent_column_name]][] = $menuItem[$this->primary_key_column_name];
		}
		//return $menuData;
		 return $this->buildMenuBootstrap($node['padre_id'], $menuData);
	}
	function buildMenuBootstrap($parentId, $menuData, $depth=0)
	{
        $CI = get_instance();
        $CI->load->model('menu_model');

		$retVal = '';
		if (isset($menuData['parents'][$parentId]))
		{
			$retVal = '';
			foreach ($menuData['parents'][$parentId] as $itemId)
			{
			    // solo se imprime menus publicados  
                if($menuData['items'][$itemId]['estado'] == PUBLICADO)
                {
                    $menu = $CI->menu_model->get($itemId);
                    $menu = (array)$menu;
                    
                    if($menuData['items'][$itemId]['abrir_en'] == NUEVA_VENTANA)
                        $target = '_blank';
                    else
                        $target = '_self';  
                        
                    if($menuData['items'][$itemId]['tipo'] == MENU_PAGINA)
                        $enlace = base_url($menuData['items'][$itemId]['enlace']);
                    else
                        $enlace =  $menuData['items'][$itemId]['enlace'];       
                                       
                    if($depth == 0)
                    {
                        $num_hijos = $this->getNumberOfChildren($menu);
                        if($num_hijos > 0)
                        {
                            $retVal.='
    						<li>
    							<a href="'.$enlace.'" target="'.$target.'">'.$menuData['items'][$itemId]['titulo'].'</a>
    							<ul class="dropdown dropdown-caboco">                            
                            '; 
                            $retVal .= $this->buildMenuBootstrap($itemId, $menuData, $depth+1);
                            $retVal.='
                                </ul>
                            </li> 
                            ';   
                        }
                        else
                        {
                            $retVal.='<li><a href="'.$enlace.'" target="'.$target.'">'.$menuData['items'][$itemId]['titulo'].'</a></li>';
                        }
                    }
    
                    if($depth >0)
                    {
                        $num_hijos = $this->getNumberOfChildren($menu);
                        if($num_hijos > 0)
                        {
                            $retVal.='
                            <li>
                                <a href="'.$enlace.'" target="'.$target.'"><center>'.$menuData['items'][$itemId]['titulo'].'</center></a>
                                <ul class="dropdown dropdown-caboco">                           
                            '; 
                            
                            $retVal .= $this->buildMenuBootstrap($itemId, $menuData, $depth+1);
                            
                            $retVal.='
                                </ul>
                            </li> 
                            ';                              
                        }
                        else
                        {
                            $retVal.='<li><a href="'.$enlace.'" target="'.$target.'">'.$menuData['items'][$itemId]['titulo'].'</a></li>';    
                        }
                    } 
                }                                            
			}
		}
		return $retVal;
	} 
    

	public function blockNode($node,$usuario_id) {
		$leftanchor		=	$node[$this->left_column_name];
		$leftcol		=	$this->left_column_name;
		$rightcol		=	$this->right_column_name;
		$leftval		=	$node[$this->left_column_name];
		$rightval		=	$node[$this->right_column_name];
		$where = array(
		$leftcol . ' >=' => $leftval,
		$rightcol . ' <=' => $rightval,
		);
		//$this->db->delete($this->table_name, $where);
        $data = array(
            'bloqueado' => BLOQUEADO,
            'estado' => DESPUBLICADO,
            'modificado_por' => $usuario_id,
            'modificado' => date('Y-m-d H:i:s')
            );
            
        $this->db->where($where);
        $this->db->update($this->table_name, $data);
	}  
    
   	public function changeNode($node,$data,$usuario_id) {
		$leftanchor		=	$node[$this->left_column_name];
		$leftcol		=	$this->left_column_name;
		$rightcol		=	$this->right_column_name;
		$leftval		=	$node[$this->left_column_name];
		$rightval		=	$node[$this->right_column_name];
		$where = array(
		$leftcol . ' >=' => $leftval,
		$rightcol . ' <=' => $rightval,
		);
		//$this->db->delete($this->table_name, $where);
        $this->db->where($where);
        $this->db->update($this->table_name, $data);
	}     
}