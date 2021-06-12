<?php

/**
 * Drug class
 */

class Drug extends Controller{


	function __construct($key){
		parent::__construct();
        $this->APIAuthCheck($key);
    }

    //API KEY Check
    private function APIAuthCheck($key){
        if($key !== $this->db->API_KEY){
            echo json_encode(array('Warning' => 'Un Authorization access put valid API KEY'));
            exit();
        }
    }

    //Get all drug from database
    public function allDrug(){
        $query = "SELECT * FROM tbl_drug ";
        $red = $this->db->select($query);
        if($red){
            $row   = mysqli_num_rows($red);
            if($row > 0){
                return $red;
            }
        }else{
            return false;
        }
    }

    //Get drug from database By it's ID
    public function drugById($id){
        $query = "SELECT * FROM tbl_drug WHERE id = '$id' ";
        $red = $this->db->select($query);
        if($red){
            $row   = mysqli_num_rows($red);
            if($row > 0){
                return $red;
            }
        }else{
            return false;
        }
    }

    //Get drug from database By it's name
    public function drugByName($name){
        $query = "SELECT * FROM tbl_drug WHERE drug_name = '$name' ";
        $red = $this->db->select($query);
        if($red){
            $row   = mysqli_num_rows($red);
            if($row > 0){
                return $red;
            }
        }else{
            return false;
        }
    }


     //Add drug into the database
    public function addDrug($data){
        $drug_name         = $this->fm->validation($data['drug_name']);
        $drug_use          = $this->fm->ent_validation($data['drug_use']);
        $indication        = $this->fm->ent_validation($data['indication']);
        $contraindication  = $this->fm->ent_validation($data['contraindication']);
        $dosage            = $this->fm->ent_validation($data['dosage']);
        $drug_usage        = $this->fm->ent_validation($data['drug_usage']);
        $precaution        = $this->fm->ent_validation($data['precaution']);
        $side_effect       = $this->fm->ent_validation($data['side_effect']);
        $warning           = $this->fm->ent_validation($data['warning']);
        $storage_condition = $this->fm->ent_validation($data['storage_condition']);

        
        $ex_drug = $this->drugByName($drug_name);
        if($ex_drug){
            $data['status'] = 'failed';
            $data['message'] = 'Drug already exits.';
            echo json_encode($data);
            exit();
        }
        $insert ="INSERT INTO  tbl_drug (
                    drug_name,
                    drug_use,
                    indication,
                    contraindication,
                    dosage,
                    drug_usage,
                    precaution,
                    side_effect,
                    warning,
                    storage_condition
                )
                VALUES (
                    '$drug_name',
                    '$drug_use',
                    '$indication',
                    '$contraindication',
                    '$dosage',
                    '$drug_usage',
                    '$precaution',
                    '$side_effect',
                    '$warning',
                    '$storage_condition'
                )";
        $run = $this->db->insert($insert);
        if($run== true){
            return true;
            exit();
        }else{
            return false;
            exit();
        }
    }

     //Update drug into the database
    public function updateDrug($data){
        $id                = $this->fm->validation($data['drug_id']);
        $drug_name         = $this->fm->validation($data['drug_name']);
        $drug_use          = $this->fm->ent_validation($data['drug_use']);
        $indication        = $this->fm->ent_validation($data['indication']);
        $contraindication  = $this->fm->ent_validation($data['contraindication']);
        $dosage            = $this->fm->ent_validation($data['dosage']);
        $drug_usage        = $this->fm->ent_validation($data['drug_usage']);
        $precaution        = $this->fm->ent_validation($data['precaution']);
        $side_effect       = $this->fm->ent_validation($data['side_effect']);
        $warning           = $this->fm->ent_validation($data['warning']);
        $storage_condition = $this->fm->ent_validation($data['storage_condition']);

        $ex_id = $this->drugById($id);
        $ex_id = mysqli_fetch_array($ex_id);
        if($ex_id['drug_name'] != $drug_name){
            $ex_drug = $this->drugByName($drug_name);
            if($ex_drug){
                $data['status'] = 'failed';
                $data['message'] = 'Drug already exits.';
                $data['editid'] = $id;
                echo json_encode($data);
                exit();
            }
        }

        $update ="UPDATE  tbl_drug 
                    SET
                      drug_name         = '$drug_name',
                      drug_use          = '$drug_use',
                      indication        = '$indication',
                      contraindication  = '$contraindication',
                      dosage            = '$dosage',
                      drug_usage        = '$drug_usage',
                      precaution        = '$precaution',
                      side_effect       = '$side_effect',
                      warning           = '$warning',
                      storage_condition = '$storage_condition'
                    WHERE id = '$id'
                    ";

        $run = $this->db->update($update);
        if($run== true){
            return true;
            exit();
        }else{
            return false;
            exit();
        }
    }

     //Delete drug into the database
    public function deleteDrug($data){
        $id = $this->fm->validation($data['id']);
        
        $delete ="DELETE FROM tbl_drug WHERE id = '$id' ";
        $run = $this->db->delete($delete);
        if($run== true){
            return true;
            exit();
        }else{
            return false;
            exit();
        }
    }









             

}