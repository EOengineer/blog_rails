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
<h5>App generation and dependency management</h5>
<p>Rails provides a generator that can be used to quickly bootstrap a development ready application. The generator accepts some optional arguments that allow the user to specify some configuration at the time of app generation.  In this case we want to create our blog app, and we would like to specify a postgresql database be configured to persist our application data. </p>
<br>
<p>To use the generator, run the following command:</p>
<code>Rails new Blog --database=postgresql</code>
<p>We now have an application that is a few short commands away from being development-ready. Those commands will be explained now as we complete the configuration steps:</p>
<p>We install the bundler gem</p>
<code>gem install bundler</code>
<p>We move into the apps root directory:</p>
<code>cd blog</code>
<p>Then we bundle our dependencies:</p>
<code>bundle install</code>
</section>

<section>
<h5>Persisting data with a database</h5>
<p>In order for us to store the information we will be putting together to create our blog posts, we are going to need to use some sort of data store.  For the purposes of this tutorial, we will be using a popular open source relational database called Postgresql.  To easily install a an OSX compatible database and client, visit http://postgresapp.com/ and click the download button. After installation is complete, launch the Postgres app in OSX Applications.</p>
<p>From here we need to create our blog database.  While still in the root directory of the app, run:</p>
<code>rake db:create && rake db:migrate</code>
<p>This will create the applications database locally using the sensible default configuration that was generated in the /config/database.yml file.</p>
<p>Now to start the rails server, run:</p>
<code>rails s</code>
<p>visiting http://localhost:3000 should now show the rails welcome page.  My next post will deal with creating our blog class, as well as writing the schema migration and seeding the database.</p>
</section>"

Post.create({
  title: "Generate A Rails App",
  slug: "generate-rails-app",
  body: body
  })
