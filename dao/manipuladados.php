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
        public function insertMensagens($id_usuario, $id_chat, $mensagem){
            $this->sql = "INSERT INTO tb_mensagens(id_usuario, id_chat, mensagem) VALUES ('{$id_usuario}','{$id_chat}','{$mensagem}')";

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
        public function updateText($id, $id_usuario, $titulo, $resumo, $texto){
            $this->sql = "UPDATE tb_textos SET titulo ='".$titulo."', resumo = '".$resumo."' , texto = '".$texto."' WHERE $id = id and $id_usuario = id_usuario";
            $this->qr = self::exeSQL($this->sql);
        }
        public function deleteText($id){
            $this->sql = "DELETE FROM tb_textos WHERE id = '".$id."'";
            $this->qr = self::exeSQL($this->sql);
        }
        public function updatePdf($id, $id_usuario, $titulo, $resumo, $url_local){
            $this->sql = "UPDATE tb_pdf SET titulo ='".$titulo."', resumo = '".$resumo."' , pdf = '".$url_local."' WHERE $id = id and $id_usuario = id_usuario";
            $this->qr = self::exeSQL($this->sql);
        }
        public function deletePdf($id){
            $this->sql = "DELETE FROM tb_pdf WHERE id = '".$id."'";
            $this->qr = self::exeSQL($this->sql);
        }
        public function deleteSalvos($id){
            $this->sql = "DELETE FROM tb_salvos WHERE id = '".$id."'";
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
        ***/

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

        public function getUsuariosPorID($id){
            $this->sql = "SELECT * FROM tb_usuario WHERE id = $id;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSalvoPorIDUsuario($id_usuario){
            $this->sql = "SELECT * FROM tb_salvos WHERE id_usuario = $id_usuario;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSalvoPorIDText($id_texto, $id_usuario){
            $this->sql = "SELECT * FROM tb_salvos WHERE id_texto = $id_texto AND id_usuario = $id_usuario;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSalvoPorIDPdf($id_pdf, $id_usuario){
            $this->sql = "SELECT * FROM tb_salvos WHERE id_pdf = $id_pdf AND id_usuario = $id_usuario;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getTextoPorID($id){
            $this->sql = "SELECT * FROM tb_textos WHERE id = $id;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getTextosByUsuariosID($id){
            $this->sql = "SELECT * FROM tb_usuario WHERE id = $id;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }

        public function getCursoPorID($id){
            $this->sql = "SELECT * FROM tb_curso WHERE id = $id;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getChatsPorUsuarios($id_usuario){
            $this->sql = "SELECT * FROM tb_chats WHERE id_usuario1 = $id_usuario OR id_usuario2 = $id_usuario;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function procurarChats($id_usuario1, $id_usuario2 ){

            $this->sql = "SELECT * FROM tb_chats WHERE id_usuario1 = $id_usuario1 AND id_usuario2 = $id_usuario2; ";
            $this->qr = self::exeSQL($this->sql);
            $linhas = @mysqli_num_rows($this->qr);
            return $linhas;
        }
        public function procurarChats2($id_usuario3, $id_usuario4 ){

            $this->sql = "SELECT * FROM tb_chats WHERE id_usuario1 = $id_usuario3 AND id_usuario2 = $id_usuario4; ";
            $this->qr = self::exeSQL($this->sql);
            $linhas = @mysqli_num_rows($this->qr);
            return $linhas;
        }
        public function procurarChatsMostrarID($id_usuario1, $id_usuario2 , $id_usuario3, $id_usuario4){

            $this->sql = "SELECT * FROM tb_chats WHERE id_usuario1 = $id_usuario1 AND id_usuario2 = $id_usuario2 OR id_usuario1 = $id_usuario3 AND id_usuario2 = $id_usuario4 ";
            $this->qr = self::exeSQL($this->sql);
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        
        }
        
        public function getMensagens($id_chat){

            $this->sql = "SELECT * FROM tb_mensagens WHERE id_chat = $id_chat ";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        
        }
    
    }

        

?>