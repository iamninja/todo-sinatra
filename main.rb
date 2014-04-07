require 'sinatra'
require 'slim'

get '/' do
	slim :index
end

__END__

@@layout
doctype html
html
	head
		meta charset="utf-8"
		title To Do App
		link rel="stylesheet" media="screen, projection" href="assets/styles/style.css"
		/[if lt IE 9] 
      		script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"
    body
    	h1 To Do App
    	== yield


@@index
h2 My Tasks
ul.tasks
	li This is a task		