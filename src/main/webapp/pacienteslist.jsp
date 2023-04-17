<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I-M-C</title>
</head>
<body>
	<h1>Lista de Pacientes</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Documento</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
            <th>Género</th>
            <th>Fecha de Nacimiento</th>
            <th>Teléfono</th>
            <th>Dirección</th>
            <th>Peso</th>
            <th>Estatura</th>
            <th>IMC</th>
            <th>Estado</th>
            <th>Acciones</th>
        </tr>
        <c:forEach items="${pacientes}" var="paciente">
            <tr>
                <td>${paciente.id}</td>
                <td>${paciente.documento}</td>
                <td>${paciente.nombre}</td>
                <td>${paciente.apellido}</td>
                <td>${paciente.email}</td>
                <td>${paciente.genero}</td>
                <td>${paciente.fechanacimiento}</td>
                <td>${paciente.telefono}</td>
                <td>${paciente.direccion}</td>
                <td>${paciente.peso}</td>
                <td>${paciente.estatura}</td>
                <td>${paciente.peso.divide(paciente.estatura.multiply(paciente.estatura), 2, RoundingMode.HALF_UP)}</td>
                <td>
                    <c:choose>
                        <c:when test="${paciente.peso.divide(paciente.estatura.multiply(paciente.estatura), 2, RoundingMode.HALF_UP) < 18.5}">
                            BAJO PESO
                        </c:when>
                        <c:when test="${paciente.peso.divide(paciente.estatura.multiply(paciente.estatura), 2, RoundingMode.HALF_UP) >= 18.5 && paciente.peso.divide(paciente.estatura.multiply(paciente.estatura), 2, RoundingMode.HALF_UP) < 25}">
                            NORMAL
                        </c:when>
                        <c:otherwise>
                            SOBREPESO
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <a href="paciente?id=${paciente.id}&action=view">Ver</a>
                    <a href="paciente?id=${paciente.id}&action=edit">Editar</a>
                    <a href="paciente?id=${paciente.id}&action=delete">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="paciente?action=add">Registrar Paciente</a>
</body>
</html>