<!doctype HTML>
<html
<head>
<title>
Blog Post
</title>
</head>
<body>
%if (username != None):
Bienvenido {{username}}        <a href="/logout">Salir</a> | 
%end
<a href="/">Blog</a><br><br>

<h2>{{post['title']}}</h2>
Posteado {{post['date']}}<i> Por {{post['author']}}</i><br>
<hr>
{{!post['body']}}
<p>
<em>Tags</em>: 
%if ('tags' in post):
%for tag in post['tags'][0:1]:
<a href="/tag/{{tag}}">{{tag}}</a>
%for tag in post['tags'][1:]:
, <a href="/tag/{{tag}}">{{tag}}</a>
%end
%end
%end
<p>
Comentarios: 
<ul>
%if ('comments' in post):
%numComments = len(post['comments'])
%else:
%numComments = 0
%end
%for i in range(0, numComments):
Autor: {{post['comments'][i]['author']}}<br>
{{post['comments'][i]['body']}}<br>
<hr>
%end
<h3>Añadir Comentario</h3>
<form action="/newcomment" method="POST">
<input type="hidden" name="permalink", value="{{post['permalink']}}">
{{errors}}
<b>Nombre</b> (requerido)<br>
<input type="text" name="commentName" size="60" value="{{comment['name']}}"><br>
<b>Email</b> (opcional)<br>
<input type="text" name="commentEmail" size="60" value="{{comment['email']}}"><br>
<b>Comentario</b><br>
<textarea name="commentBody" cols="60" rows="10">{{comment['body']}}</textarea><br>
<input type="submit" value="Enviar">
</ul>
</body>
</html>


