<!doctype HTML>
<html>
<head>
<title>Crea Un Nuevo Post</title>
</head>
<body>
%if (username != None):
Bienvenido {{username}}        <a href="/logout">Salir</a> | <a href="/">Blog</a><p>
%end
<form action="/newpost" method="POST">
{{errors}}
<h2>Titulo</h2>
<input type="text" name="subject" size="120" value="{{subject}}"><br>
<h2>Contenido<h2>
<textarea name="body" cols="120" rows="20">{{body}}</textarea><br>
<h2>Tags</h2>
separados por coma<br>
<input type="text" name="tags" size="120" value="{{tags}}"><br>
<p>
<input type="submit" value="Submit">

</body>
</html>

