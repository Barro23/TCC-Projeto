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
        public function updateSemana($id_curso, $id_usuario, $semana ){
            $this->sql = "UPDATE tb_cursando SET semana = '".$semana."' WHERE $id_curso = id_curso and $id_usuario = id_usuario";
            $this->qr = self::exeSQL($this->sql);
        }
        public function updateInicio($id, $id_usuario, $textCarroseu1, $textCarroseu2, $textCarroseu3, $textCirculo1, $textCirculo2, $textCirculo3,$textCompletoCirculo1,$textCompletoCirculo2, $textCompletoCirculo3, $url_local1, $url_local2, $url_local3, $url_local4, $url_local5, $url_local6){
            $this->sql = "UPDATE tb_inicio SET textCarroseu1 ='".$textCarroseu1."', textCarroseu2 = '".$textCarroseu2."' , textCarroseu3 = '".$textCarroseu3."', textCirculo1 = '".$textCirculo1."', textCirculo2 = '".$textCirculo2."', textCirculo3 = '".$textCirculo3."', textCompletoCirculo1 = '".$textCompletoCirculo1."', textCompletoCirculo2 = '".$textCompletoCirculo2."' ,textCompletoCirculo3 = '".$textCompletoCirculo3."'  ,imgCarroseu1 = '".$url_local1."' ,imgCarroseu2 = '".$url_local2."' ,imgCarroseu3 = '".$url_local3."' ,imgCirculo1 = '".$url_local4."' ,imgCirculo2 = '".$url_local5."',imgCirculo3 = '".$url_local6."' WHERE $id = id AND $id_usuario = id_usuario  ";
            $this->qr = self::exeSQL($this->sql);
        }
        

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
        public function verificarSalvos($id_usuario){
            $this->sql = "SELECT * FROM tb_salvos WHERE id_usuario = $id_usuario;";
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

        public function getCursosPorUsuarios($id_usuario){
            $this->sql = "SELECT * FROM tb_cursando WHERE id_usuario = $id_usuario ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSemanasPorCurso($id_curso){
            $this->sql = "SELECT * FROM tb_semanas WHERE id_curso = $id_curso ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSemana($id){
            $this->sql = "SELECT * FROM tb_semanas WHERE id = $id ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSemanaPorCurso($id_curso){
            $this->sql = "SELECT * FROM tb_semanas WHERE id_curso = $id_curso ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getSemanaPorSemanas($id_curso, $semana){
            $this->sql = "SELECT * FROM tb_semanas WHERE id_curso = $id_curso AND semana = $semana ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getQuestionarios($id_semana, $id_curso){
            $this->sql = "SELECT * FROM tb_questionarios WHERE id_semana = $id_semana AND id_curso = $id_curso;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getQuestionariosPorSemanas($id_curso, $semanas ){
            $this->sql = "SELECT * FROM tb_questionarios WHERE semana = $semanas AND id_curso = $id_curso;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getCursando($id_curso, $id_usuario){
            $this->sql = "SELECT * FROM tb_cursando WHERE id_curso = $id_curso AND id_usuario = $id_usuario ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        public function getCursos($id_curso){
            $this->sql = "SELECT * FROM tb_curso WHERE id = $id_curso ;";
            $this->qr = self::exeSQL($this->sql);
    
            $listaresp = array();
    
            while($row = @mysqli_fetch_assoc($this->qr)){
                array_push($listaresp, $row);
            }
            
            return $listaresp;
        }
        
      
    }

        

?>