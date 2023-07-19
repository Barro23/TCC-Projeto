<?php
    include_once("conexao.php");

    class manipuladados extends conexao{
        protected $table, $fields, $dados, $status, $fieldId, $valueId;

        function setTable($tabela){
            $this->table = $tabela;
        }
        function setFields($campos){
            $this->fields = $campos;
        }
        function setDados($valores){
            $this->dados = $valores;
        }
        function setFieldsId($chavep){
            $this->fieldId = $chavep;
        }
        function setValueId($valorchave){
            $this->valueId = $valorchave;
        }
        function getStatus(){
            return $this->status;
        }

        public function insert(){
            $this->sql = "INSERT INTO $this->table($this->fields) VALUES ($this->dados)";

            $this->status = self::exeSQL($this->sql) ? "cadastrado com sucesso" : "deu erro chapa".mysql_error();
        }
        public function updateUser($id, $nome, $nome_completo, $instituto, $descricao, $data_nascimento, $email,$senha,$tipo, $url_local1, $url_local2){
            $this->sql = "UPDATE tb_usuario SET nome ='".$nome."', nome_completo = '".$nome_completo."' , instituto = '".$instituto."', descricao = '".$descricao."', data_nascimento = '".$data_nascimento."', email = '".$email."', senha = '".$senha."', tipo = '".$tipo."' ,img_capa = '".$url_local1."' ,img_fundo = '".$url_local2."' WHERE $id = id ";
            $this->qr = self::exeSQL($this->sql);
        }

        
        public function DeleteUser($id){
            $this->sql = "DELETE FROM tb_usuario WHERE id = '".$id."'";
            $this->qr = self::exeSQL($this->sql);
        }
        /*** 
        public function update($descricao, $quantidade, $valor, $status, $img, $id){
            $this->sql = "UPDATE produto SET descricao = '".$descricao."',quantidade = '".$quantidade."',valor = '".$valor."',status = '".$status."',img = '".$img."' WHERE $id = id ";
            $this->qr = self::exeSQL($this->sql);
        }


        public function getAllDataTable(){
            $this->sql = "SELECT * FROM $this->table";
            $this->qr = self::exeSQL($this->sql);
            return $this->qr;
        }
        **/

        public function getAllDataTable(){
            $this->sql = "SELECT * FROM $this->table;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
    
            return $listaresp;
        }

        public function validarLogin($email, $senha, $tipo){

            $this->sql = "SELECT * FROM tb_usuario WHERE email ='$email' and senha ='$senha' and tipo ='$tipo'";
            $this->qr = self::exeSQL($this->sql);
            $linhas = @mysqli_num_rows($this->qr);
            return $linhas;
        }
        public function validarLoginExistente($email){

            $this->sql = "SELECT * FROM tb_usuario WHERE email ='$email'";
            $this->qr = self::exeSQL($this->sql);
            $linhas = @mysqli_num_rows($this->qr);
            return $linhas;
        }
        
        public function getIdByEmail($email){

            $this->sql = "SELECT * FROM tb_usuario WHERE email = '".$email."'";
            $this->qr = self::exeSQL($this->sql);
            
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getUsuarioByEmail($email){

            $this->sql = "SELECT * FROM tb_usuario WHERE id = '".self::getIdByEmail($email)[0]['id']."'";
            $this->qr = self::exeSQL($this->sql);
            
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
    }

        

?>