<!DOCTYPE html>
<html>
<head>
<title>Blog Super</title>
</head>
<body>

%if (username != None):
Bienvenido {{username}}        <a href="/logout">Salir</a> | <a href="/newpost">Nueva Entrada</a><p>
%end

<h1>Blog Super</h1>

%for post in myposts:
<h2><a href="/post/{{post['permalink']}}">{{post['title']}}</a></h2>
Posteado {{post['post_date']}} <i>Por {{post['author']}}</i><br>
Comentarios: 
%if ('comments' in post):
%numComments = len(post['comments'])
%else:
%numComments = 0
%end
<a href="/post/{{post['permalink']}}">{{numComments}}</a>
<hr>
{{!post['body']}}
<p>
<p>
<em>Tags</em>: 
%if ('tags' in post):
%for tag in post['tags'][0:1]:
<a href="/tag/{{tag}}">{{tag}}</a>
%for tag in post['tags'][1:]:
, <a href="/tag/{{tag}}">{{tag}}</a>
%end
%end

<p>
%end
</body>
</html>


