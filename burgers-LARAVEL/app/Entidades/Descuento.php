<?php

namespace App\Entidades;
use DB;
use Illuminate\Database\Eloquent\Model;

class Descuento extends Model
{
    protected $table = 'descuentos';
    public $timestamps = false;

    protected $fillable = [
        'iddescuento', 'nombre', 'descripcion', 'imagen'
    ];

    protected $hidden = [

    ];

    public function obtenerTodos()
    {
        $sql = "SELECT
                    iddescuento,
                    nombre,
                    descripcion,
                    imagen
                FROM descuentos 
                ORDER BY iddescuento";
        $lstRetorno = DB::select($sql);
        return $lstRetorno;
    }

    public function obtenerPorId($iddescuento)
    {
        $sql = "SELECT
                  iddescuento,
                  nombre,
                  descripcion,
                  imagen            
                FROM descuentos WHERE iddescuento = $iddescuento";
        $lstRetorno = DB::select($sql);

        if (count($lstRetorno) > 0) {
            $this->iddescuento = $lstRetorno[0]->iddescuento;
            $this->nombre = $lstRetorno[0]->nombre;
            $this->descripcion = $lstRetorno[0]->descripcion;
            $this->imagen = $lstRetorno[0]->imagen;
            return $this;
        }
        return null;
    }

    public function guardar() {
        $sql = "UPDATE descuentos SET
                    nombre='$this->nombre',
                    descripcion='$this->descripcion',
                    imagen='$this->imagen'
                WHERE iddescuento=?";
        $affected = DB::update($sql, [$this->iddescuento]);
    }

    public function eliminar()
    {
        $sql = "DELETE FROM descuentos WHERE
            iddescuento=?";
        $affected = DB::delete($sql, [$this->iddescuento]);
    }

    public function insertar()
    {
        $sql = "INSERT INTO descuentos (
                    nombre,
                    descripcion,
                    imagen
                ) VALUES (?, ?,?);";
        $result = DB::insert($sql, [
            $this->nombre,
            $this->descripcion,
            $this->imagen
        ]);
        return $this->iddescuento = DB::getPdo()->lastInsertId();
    }

   
    public function obtenerFiltrado()
    {
        $request = $_REQUEST;
        $columns = array(
            0 => 'nombre',
            1 => 'descripcion',
            2 => 'imagen ',
       
        );
        $sql = "SELECT DISTINCT
                    iddescuento,
                    nombre,
                    descripcion,
                    imagen
                    FROM descuentos
              
                ";

        //Realiza el filtrado
        if (!empty($request['search']['value'])) {
            $sql .= " AND ( nombre LIKE '%" . $request['search']['value'] . "%' ";
            $sql .= " OR descripcion LIKE '%" . $request['search']['value'] . "%' )"; 
              $sql .= " OR imagen LIKE '%" . $request['search']['value'] . "%' ";
           
        }
        $sql .= " ORDER BY " . $columns[$request['order'][0]['column']] . "   " . $request['order'][0]['dir'];

        $lstRetorno = DB::select($sql);

        return $lstRetorno;

   }

    public function cargarDesdeRequest($request) {
    $this->iddescuento = $request->input('id') != "0" ? $request->input('id') : $this->iddescuento;
    $this->nombre = $request->input('txtNombre');
    $this->descripcion = $request->input('txtDescripcion');
    }
}


?>