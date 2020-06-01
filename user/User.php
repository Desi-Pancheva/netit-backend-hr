<?php
namespace user;

class User {
    
    //public static $username = NULL;
    //public static $email = NULL;
   // public static $role = NULL;
    //public static $isLoged = false;
    
    public static function username() {
        return $_SESSION['user_reference']['username'];
    }
    
    public static function email() {
        return $_SESSION['user_reference']['email'];
    }
    
    public static function role() {
        return $_SESSION['user_reference']['role'];
    }
    
    public static function isLoged() {
        return isset($_SESSION['user_reference']);
    }
    
    public static function isNotLoged() {
        return !self::isLoged();
    }


    public static function isAdmin(){
         return (self::role() == 0);
    }
    
     public static function isRegular(){
         return self::role() > 0;
                
    }
    
    public static function set($userObject) {
       
       $_SESSION['user_reference'] = $userObject;
        
        
//        User::$username = $userObject['username'];
//        User::$email    = $userObject['email'];
//        User::$role     = $userObject['role'];
//        User::$isLoged  = true;
    }
    
    

    public static function login($email, $password) {
        
        if(User::isAvailable($email, $password)) {
            
            $queryResult = \db\Database::getInstance()->query("SELECT * FROM monster.users WHERE email = '{$email}' AND password = '{$password}'");
            return \db\Database::getInstance()->fetch();            
        }
        return false;
    }
        
    public static function isAvailable($email, $password) {
        
        \db\Database::getInstance()->query("SELECT COUNT(*) AS number_of_rows FROM monster.users WHERE email = '{$email}' AND password = '{$password}'");
        $collection = \db\Database::getInstance()->fetch();

        return ($collection['number_of_rows'] == 1);        
    }
    
    
    public static function registration_employ($username, $email, $password) {
        
        \db\Database::getInstance()->query("INSERT INTO monster.users(username, email, password, role) 
                        VALUES('{$username}', '{$email}', '{$password}', 1)");
                        
        if(\db\Database::getInstance()->lastInsertedId()) {
            return true;
        }
        
        return false;
    }
    
    public static function registration_employer($username, $email, $password) {
        
        \db\Database::getInstance()->query("INSERT INTO monster.users(username, email, password, role) 
                        VALUES('{$username}', '{$email}', '{$password}', 2)");
                        
        if(\db\Database::getInstance()->lastInsertedId()) {
            return true;
        }
        
        return false;
    }
    
    
    
   public static function logout() {
        session_destroy();
    }
    
}