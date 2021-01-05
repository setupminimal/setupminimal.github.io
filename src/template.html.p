<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/typesetter.css">
    <title>◊(if (eq? (select 'h1 doc) "") here (select 'h1 doc)) | Setupminimal</title>
  </head>
  <body>
    <nav>
      You're reading ◊|here|. This site was last regenerated on ◊(get-date).
      <ul>
      <li><a href="/index.html">Home</a></li>
      <li><a href="/blog.html">Blog</a></li>
      <li><a href="/resume.html">Resumé</a></li>
      <li><a href="/fiction.html">Fiction</a></li>
      </ul>
    </nav>
    ◊(if (list? (cadr doc))
         (to-html doc)
         (cdr doc))
  </body>
</html>
