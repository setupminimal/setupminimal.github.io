<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/typesetter.css">
    <title>◊(select 'h1 doc) | Setupminimal</title>
  </head>
  <body>
    <nav>
      You're reading ◊|here|. This site was last regenerated at ◊(get-date).
      <ul>
      <li><a href="/index.html">Home</a></li>
      <li><a href="/blog.html">Blog</a></li>
      <li><a href="/resume.html">Resumé</a></li>
      </ul>
    </nav>
    ◊(->html doc)
  </body>
</html>
