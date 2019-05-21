# Ruby on Rails

![rails](https://cdn-images-1.medium.com/max/1200/1*iIiiKaJKg8k9aRU8iWxCxA.jpeg)

### Learning Objectives

- Revisit the MVC (Model - View - Controller) architecture
- Distinguish between Express and Rails
- Dive into the distiction between "convention over configuration" 
- Explore the file structure of a Rails app
- Build a Rails app

## What is Ruby on Rails?

Rails is an **MVC framework** for the Ruby language. That means it performs a lot of the same functionality as Express: It provides a way for the database to talk to the browser, and controls what happens in the middle.

### Express vs Rails

Let's take a look at the main differences between Express and Rails.

###### Ruby on Rails

| Pros               | Cons               |
|:------------------ |:------------------ |
| Large development community with great documentation           | Heavier and more demanding of resources which can lead to slower response times |
| It's relatively quick to build things because of all the built in generators            | Harder to scale so not the best choice for super interactive websites      |
| Readability – in theory you can open up anyone’s Rails project and easily find your way around      | Too much magic happening under the hood      |

###### Express

| Pros               | Cons               |
|:------------------ |:------------------ |
| Lightweight and great for building larger projects that will need to scale           | It can be harder to figure out where things are happening |
| Made for handling asynchronous requests            | Express requires more lines of code than the same action in Rails      |


### Rails Philosophy

##### Don't Repeat Yourself

According to the [Rails Guides](https://guides.rubyonrails.org/getting_started.html), "every piece of knowledge must have a single, unambiguous, authoritative representation within a system." By not writing the same information over and over again, our code is more maintainable, more extensible, and less buggy.

For example, in Rails, with ActiveRecord (an ORM similar to Sequelize), once a model is specified, you don’t need to specify database column names –they’re determined from the model.

##### Convention over Configuration

Many other frameworks, like Express, give you a lot of flexibility. You can put folders wherever you want, create your own naming conventions, come up with your own best practices; however, Rails is different.

In Rails, we adopt a philosophy of *convention over configuration*. This means that there is a standard *rails way* of doing things - how your file structrue should be organized, how things should be named. This has many added benefits:

1. Once you learn the Rails way, you no longer have to think about how to organize your application code. This frees up all of your decision making time and energy to work on actual feature development.
2. Rails has been around for a **long** time. The "Rails way" is the result of over a decade of careful consideration and refactoring by thousands of people. The result is an extremely cohesive framework which prioritizes efficiency and developer happiness. Once you get the hang of it, you'll begin to appreciate how elegent Rails actually is.

##### The 'Rails Way' is the Right Way

Don't try to go against the grain in Rails. Follow the conventions, and things will just work. Go against them, and you will hate your life.

##### Is That a Metaphor? -- Rails Restaurant

![](https://media.giphy.com/media/l41lQKzFg8T8p7oas/giphy.gif)

The _client_ is a customer eating in the restaurant, _Rails_ is the kitchen, the _request_ is the food ordered, the _router_ is the waiter, the _controller_ is a chef, the _model_ is a recipe, the _database_ is the giant walk-in refrigerator with ingredients, the _view_ is plating the dish to look pretty, the _response_ with a file is a waiter finally serving the dish to the customer.

## Your new Bible

One of the amazing things about Rails is that the community is **SUPERB** when it comes to documentation.

The [Ruby on Rails Guides](http://guides.rubyonrails.org/) is the defacto resource for all those getting into Rails, as well as seasoned pros. It is extensive, comprehensive, and easy to read. I highly recommend you read it all the way through, and continue to consult it as you progress through your Rails journey.

The [Getting Started Guide](http://guides.rubyonrails.org/getting_started.html) can't be beat. If you do the whole thing and take your time, Rails should start to become very intuitive for you.

# Our first Rails app

### Get the latest version of rails

Before we create our first Rails app, we are going to make sure that we have the latest version of the Rails gem. Run:

```
gem update rails
```
You might have to use sudo:
```
sudo gem update rails
```
If you don't have Rails already installed, run:
```
gem install rails
```
and you will get the latest automatically.

### Generating an application

To generate a Rails application, use the `rails` command and pass it the `new` argument and the name of the application you want to generate: `my_rails_app`. This sets us up with our skeleton Rails app. There are a lot of options that you can provide with the `rails new` command. Try `rails new --help` to take a look at them all.

```
$ rails new my_rails_app
```

Now if we change directory into`my_rails_app ` and type:

```
$ rails server

// you should see the following in Terminal
=> Booting Puma
=> Rails 5.2.3 application starting in development
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.1 (ruby 2.6.3-p62), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop

```
The Rails server will start up and we can visit the application welcome page at `localhost:3000`. You should now see the _Yay! You're on Rails!_ page. Check out all those happy people!

![](https://edgeguides.rubyonrails.org/images/getting_started/rails_welcome.png)

Now run ```bundle install``` and restart your Rails server.

### Rails File Structure

Open up the new rails application. You'll see a file structure that looks something like this:

```md
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── config
│   │   │   └── manifest.js
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   ├── cable.js
│   │   │   └── channels
│   │   └── stylesheets
│   │       └── application.css
│   ├── channels
│   │   └── application_cable
│   │       ├── channel.rb
│   │       └── connection.rb
│   ├── controllers
│   │   ├── application_controller.rb
│   │   └── concerns
│   ├── helpers
│   │   └── application_helper.rb
│   ├── jobs
│   │   └── application_job.rb
│   ├── mailers
│   │   └── application_mailer.rb
│   ├── models
│   │   ├── application_record.rb
│   │   └── concerns
│   └── views
│       └── layouts
│           ├── application.html.erb
│           ├── mailer.html.erb
│           └── mailer.text.erb
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   ├── spring
│   ├── update
│   └── yarn
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── application_controller_renderer.rb
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   └── en.yml
│   ├── puma.rb
│   ├── routes.rb
│   ├── secrets.yml
│   └── spring.rb
├── config.ru
├── db
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
├── package.json
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── apple-touch-icon-precomposed.png
│   ├── apple-touch-icon.png
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── application_system_test_case.rb
│   ├── controllers
│   ├── fixtures
│   │   └── files
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   ├── system
│   └── test_helper.rb
├── tmp
│   └── cache
│       └── assets
└── vendor
```

Fortunately, for the applications we build in this class, we'll only need to edit a few of these files (see below).

```md
.
├── Gemfile
├── app
│   ├── controllers
│   │   ├── application_controller.rb
│   │   └── we're going to add more files here
│   ├── models
│   │   └── application_record.rb (we won't touch this file today)
│   └── views
│       └── layouts
│           └── application.html.erb
│       └── we're going to add more files here
├── config
│   └── routes.rb
└── db
    └── seeds.rb
    └── eventually there will be more files here
```

That looks much more manageable, doesn't it?

> Note: This doesn't mean you can delete all the extra files, of course. You know that, right? Just making sure.

## Routing in Rails (20 mins)

The router is the doorman of your application.

The Router is basically just a matching service. It looks at the HTTP verb (GET, POST, PUT, DELETE) and the URL that is being requested and matches it with the appropriate controller action to run. If it can't find the route, it will throw an error.

As a reminder, MVC is a pattern defining a web app in three parts:

* **M**odels, holding all the business logic
* **V**iews, rendering the database content as a readable format
* **C**ontrollers, linking views and models

```

                                          -----> Model <----> DB
                                         |         |
            response        request      |         |
   Browser <-------- router -------> controller <--
                             GET         ^
                             PUT         |
                             POST         -----> view <----> html/images/css/js
                             DELETE

```

Let's try to visit a new page in our app. Type `localhost:3000/welcome` into your browser's url bar. What error do you see?

In Rails, we need to define the routes of our application in our routes file. Edit you `config/routes.rb` file to look like this:

```ruby
Rails.application.routes.draw do
  get "/welcome", to: "welcome#index"
end
```

This tells our Rails app that we are defining a GET route named `/welcome`. If we go to terminal and type:

```
$ rails routes
```

we will see a list of all of the routes that are defined in our `config/routes.rb` file.

| Prefix       | Verb         | URI Pattern       | Controller#Action  |
|:------------ |:------------ |:------------------|:------------------ |
| welcome      | GET          | /welcome(.:format)| welcome#index

Now go back to the browser and refresh the page. You should see a different error. This error is telling us that we do not have a `WelcomeController` class definied in our app.

```
Routing Error: uninitialized constant WelcomeController
```

This is coming from the second argument we provide to the `get` method in our routes file. The first argument is the name of the route (`/welcome`) and the second argument (`to: 'welcome#index'`) is indicating **where** we want requests that are sent to that route to go. In Rails, the router does not do anything with the requests, it only passes them to the controllers. The controllers then handle the requests and send the responses back to the client.

## Controllers

The controllers in a Rails application handle the requests and send responses. Controllers consist of `actions` - public instance methods that are called by the framework when a request comes in matching the actions route.

In our app, we have stated that requests to the **GET** `/welcome` route should be handled by the WelcomeController, specifically the `index` action within the WelcomeController. So let's create one!

- Add a file called `welcome_controller.rb` to the `app/controllers` directory.
- Edit your `welcome_controller.rb` file to look like this:

```ruby
class WelcomeController < ApplicationController
  def index
    # says we want to send back plain text
    render plain: "Welcome to Unit 4, Jeopardy!"
  end
end
```

Now when your refresh the page you should see the `Welcome to Unit 4, Jeopardy!` text.

### More actions

We have a simple `get` route in our app that works super well! But if we're trying to build a CRUD app, we need to do more, right? 

- How might we declare other HTTP verbs in our routes?

### Resource Routing

Collections of similar objects in Rails are referred to as _resources_. Resource routing allows you to quickly declare **all** of the common routes for a given controller. Instead of declaring separate routes for your _index_, _show_, _new_, _edit_, _create_, _update_ and _destroy_ actions, a resourceful route declares them in a single line of code.

Add the following to the `config/routes.rb`:

```ruby
resources :boardgames
```

Then run `rails routes` again. What do you notice?

| Prefix         | Verb     | URI Pattern                   | Controller#Action     |
|:------------   |:-------- |:------------------------------|:--------------------- |
| boardgames     | GET      | /boardgames(.:format)         | boardgames#index      |
|                | POST     | /boardgames(.:format)         | boardgames#create     |
| new_boardgame  | GET      | /boardgames/new(.:format)     | boardgames#new        |
| edit_boardgame | GET      | /boardgames/:id/edit(.:format)| boardgames#edit       |
| boardgame      | GET      | /boardgames/:id(.:format)     | boardgames#show       |
|                | PATCH    | /boardgames/:id(.:format)     | boardgames#update     |
|                | PUT      | /boardgames/:id(.:format)     | boardgames#update     |
|                | DELETE   | /boardgames/:id(.:format)     | boardgames#destroy    |

### 🚀 WE DO: More Controllers

For this code-along, we're going to add another controller.

So far, our boardgame application has:
- A `welcome` route that displays the text `Welcome to Unit 4, Jeopardy!`
- A `welcome_controller.rb` file
- Boardgames resources

Together, we will:

- Create a boardgames_controller
- When we hit the `/boardgames` endpoint, send back the text "boardgames are cool"
- When we hit the `/boardgames/:boardgame` endpoint, send back the text "[boardgame] is the best game ever"
- Hint: We're going to have to get the boardgame from the [`params` object](http://guides.rubyonrails.org/action_controller_overview.html#parameters)

For this lecture, we're only concerned about the `/boardgames` and `/boardgames/:boardgame` endpoints; those are going to be the methods `index` and `show`. 

We can set this up in our route by saying:

```rb
resources :boardgames, only: [:index, :show]
```

We'll get to `new`, `create`, `edit`, `update`, and `destroy` later.

## Views

The Controller is responsible for handling requests in Rails, though it normally hands off any heavy code to the Model. However, when it's time to send a response back to the user, the Controller hands things off to the View.

- First we'll start with the `index` action in our WelcomeController. Remove the render line (your index method will be empty).
- Visit `localhost:3000/welcome` in your browser. What error do you see?
- In your `app/views` directory, create a `welcome` folder. Inside of that create an `index.html.erb` file. Fill it with the following HTML:

```html
<h1>Welcome to the Boardgames app!</h1>
```
Now refresh your browser. What happened?

#### WTF?! I didn't render anything in my controller action! How did that work?

Another prime example of 'convention over configuration'! We have a WelcomeController with an `index` action defined in `app/controllers`. We have a `app/views/welcome/` directory. In there we have an `index.html.erb`. This is how Rails likes things.

If you don't call render in your controller action, it will call it for you automagically. It doesn't need you to tell it where the view template is if you put it where it expects and name it after your controller action. It just works.

Of course, if you wanted to render a different template, you could do it explicitly in your controller action. ie:

```ruby
def index
  render :something_else
end
```

would render the `app/views/welcome/something_else.html.erb` template.

#### Why don't we have to include an html boilerplate in our templates?

Good question! Rails renders your templates in `layouts`. Checkout `app/views/layouts/application.html.erb`. If you add something here, it will be rendered on every page. The templates themselves are rendered through the `yield` in the body tag.

### Side Note

You don't have to render ERB templates in your routes! You can send back json data.

In the index method of `welcome_controller.rb`, add this line:

```rb
render json: { hello: "world" }
```

Cool, right? Sort of like `res.json`.

### 🚀 WE DO: The Return of the Clowns

Add the remaining views for the `boardgames` controller actions. To make the `boardgame` available, you are going to have to set it to an instance variable in your controller action.

Then in your template, you will have access to that instance variable.

### Route Helpers

Another thing about Rails is that it provides you with `url helper methods` so that you don't have to remember every route in your app. Add the following line to your `app/views/welcome/index.html.erb` template:

```html
<%= link_to "Boardgames", boardgames_path %>
```
There are two magics going on here -

1. `link_to` is a method available in Rails views that creates anchor tags. The first argument is the text that will be displayed in the link. The second is the `href` for the link.
2. `boardgames_path` is a `url helper` method that returns the about path, or rather, the path that will resolve to the boardgame route defined in our routes controller.



