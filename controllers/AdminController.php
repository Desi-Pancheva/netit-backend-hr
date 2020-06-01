<?php

namespace controllers;

class AdminController {
    
    public function index(){

        if(\user\User::isNotLoged()){
            return redirect('index');
        }
        
        if(\user\User::isRegular()){
            return redirect('index');
        }
        

        if(isset($_GET['action']) && $_GET['action'] == 'logout'){
            return $this->logout();
        }
        
        if(isset($_POST['post_tokken']) && $_POST['post_tokken'] == 1){
            return $this->createJobsAdd();
        }
    }    
    
    
    private function createJobsAdd() {
        $jobAddTitle = $_POST['post_title'];
        $jobAddPreview = $_POST['preview_content'];
        $jobAddContent = $_POST['post_content'];
        
        $postId = \jobs\JobsAdd::create( $jobAddTitle, $jobAddPreview,$jobAddContent);
        if($postId){
            \Session\Session::setFlashMessage('create_job_add', 'Успешно създадена обява!');
        }
    }
    
    private function logout() {
        \user\User::logout(); 
        return redirect('index');
        
    }
}
