# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

body =
"<h1>How I create a new Rails application</h1>
<section>
<p>Rails provides a generator that quickly bootstraps a development ready application. In this case we want to create our blog app, and we would like to use a postgresql database to persist our application data. For convenience, an optional flag can be passed to specify the ActiveRecord adapter to be used upon application creation.</p>
<br>
<p>To use the generator, run the following command:</p>
<code>Rails new Blog --database=postgresql</code>
</section>"

Post.create({
  title: "Generate A Rails App",
  slug: "generate-rails-app",
  body: body
  })
