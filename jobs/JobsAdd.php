<?php

namespace jobs;

class JobsAdd{
    
     public static function create($title, $previewContent, $content) {
        
        $query = "INSERT INTO monster.job_ad_employer(title, preview_content, content) "
                . "VALUES('{$title}', '{$previewContent}', '{$content}')";
                
        \db\Database::getInstance()->query($query);
        
        return \db\Database::getInstance()->lastInsertedId();
    }
}
