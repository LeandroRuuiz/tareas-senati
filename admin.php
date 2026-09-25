<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal administrador</title>
    <link rel="stylesheet" href="estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="fondo">

    <header class="fondo_header">
        <div class="contenedor3">
            <h1 class="titulo">PORTAL DEL ADMINISTRADOR</h1>
            <a href="index.html" class="btn btn-primary">VOLVER</a>
        </div>
    </header>

    <main class="contenedor">
        <?php
            $servidor = "localhost";
            $usuario = "root";
            $passwords = "";
            $bd = "postamedicaa";
            $conexion = new mysqli($servidor, $usuario, $passwords, $bd);
            // echo "conexion exitosa";
        ?>
        
        <h1>reservas de los pacientes</h1>
        
        <div class="contenedor2">
            <table>
                <tr>
                    <th>DNI</th>
                    <th>APELLIDOS Y NOMBRES</th>
                    <th>TELEFONO</th>
                    <th>FECHA</th>
                    <th>TURNO</th>
                    <th>HORA</th>
                    <th>ESPECIALIDAD</th>
                    <th>CONFIRMAR</th>
                </tr>
                <?php
                    $sql = "SELECT paciente.dni, paciente.apellidos, paciente.nombres, paciente.telefono, cita.fecha, cita.turno, cita.hora, especialidad.nombre_espe 
                            FROM cita 
                            INNER JOIN paciente ON cita.dni = paciente.dni 
                            INNER JOIN especialidad ON cita.idespe = especialidad.idespe";
                    $resultado = mysqli_query($conexion, $sql);

                    while($mostrar = mysqli_fetch_array($resultado)){
                ?>
                <tr>
                    <td><?php echo $mostrar['dni']; ?></td>
                    <td><?php echo $mostrar['apellidos']; ?> <?php echo $mostrar['nombres']; ?></td>
                    <td><?php echo $mostrar['telefono']; ?></td>
                    <td><?php echo $mostrar['fecha']; ?></td>
                    <td><?php echo $mostrar['turno']; ?></td>
                    <td><?php echo $mostrar['hora']; ?></td>
                    <td><?php echo $mostrar['nombre_espe']; ?></td>
                    <td>8</td>
                </tr>
                <?php
                    }
                ?>
            </table>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>