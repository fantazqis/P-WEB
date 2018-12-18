<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
        
  ///table name
  protected $table = 'event';
  //Primary key
  public $primaryKey = 'id';
  //timestamp
  public $timestamp = true;
}
