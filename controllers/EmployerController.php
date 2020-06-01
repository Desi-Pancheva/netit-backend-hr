<?php
namespace controllers;

class EmployerController {
    
    
    public function index() {
                
        if(isset($_POST) && isset($_POST['post_tokken'])) {
            
            $username   = $_POST['username'];
            $email      = $_POST['email'];

            // NB : store the password in secure way ???
            $password   = $_POST['password'];            
            
            if(\user\User::registration_employer($username, $email, $password)) {
                echo "Success registration";
            }
        }
    }
}