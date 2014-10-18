![Screenshot of a Set template with dummy data.](https://ind.ie/assets/images/set/hello-badge-4.png)

Set Hello Badge Example: Dummy Data (Part 4 of 4)
===

In the previous instalments, we used the [Set template engine](https://ind.ie/set) ([Git it now!](https://source.ind.ie/project/set/tree/master)) to create a sheet of name badges for attendees and speakers. We covered how to set the text and attributes of elements, how to repeat elements, and how to conditionally display elements.

In this, the final example in the series, we’re going to add some dummy data to our template so that it contains all the elements present in the rendered output. This will allow us to style the template even if we don’t have access to the server.

Usage
---

1. Clone the repository.
2. Run ```npm install``` to install the dependencies.
2. Run ```npm start``` to start the server.

Once the server is running, go to ```http://localhost:3000``` to see the example and ```http://localhost:3000/hello-badge.html``` to see the template source.

Read the notes below to find out how it works and take a peek at the source code.

How it works
---

Templates in Set are pure HTML 5. Set uses ```data-``` attributes to populate templates either on the server or on the client (or both).

One of those attributes, ```data-set-dummy``` is used to mark up dummy elements that will not be included in the final render of the template. You can use dummy elements to add mock data to your templates so that you can keep evolving the design of the template without requiring constant access to (a possibly-ever-changing and unstable) server-side implementation.

You can also use dummy data to tests for edge cases e.g., word‐wrap on very long names, etc.

The template
---

We’ve modified the template to add dummy data to help us style the speaker notice as well as the perforations and scissors icon between badges without requiring access to the rendered output.

```html
<ul>
	<li data-set-repeat='person people'>
		<a data-set-attribute='href person.homepage'>
			<p>
				Hello, my name is <span data-set-text='person.name'>Inigo Montoya</span>
				<span data-set-if='person.isSpeaker'>Speaker</span>
			</p>
		</a>
	</li>
	<li data-set-dummy>
		<a data-set-attribute='href person.homepage'>
			<p>
				Hello, my name is <span data-set-text='person.name'>Joe</span>
				<span data-set-if='person.isSpeaker' style='display:none'>Speaker</span>
			</p>
		</a>
	</li>
	<li data-set-dummy>
		<a data-set-attribute='href person.homepage'>
			<p>
				Hello, my name is <span data-set-text='person.name'>Sarah</span>
				<span data-set-if='person.isSpeaker'>Speaker</span>
			</p>
		</a>
	</li>
</ul>
```

You can see the updated template by visiting ```http://localhost:3000/hello-badge.html``` after you run the server for this example.

The server
---

Nothing has changed on the server.

That’s it!

Set empowers you to design in the browser using pure HTML 5 templates. Evolve your design and stylesheets independent of the server and in parallel with the development work taking place on back‐end.

And that brings us to the end of our introductory four‐part series.

Continue learning about Set on [the Set web site](https://ind.ie/set) and ([Git it now!](https://source.ind.ie/project/set/tree/master)) to give it a spin.


Table of Contents
---

* Part 1: [Text and Attribute](https://source.ind.ie/project/set-hello-badge-1-text-and-attribute/tree/master)
* Part 2: [Repetition](https://source.ind.ie/project/set-hello-badge-2-repetition/tree/master)
* Part 3: [Conditionals](https://source.ind.ie/project/set-hello-badge-3-conditionals/tree/master)
* Part 4: Dummy Data

This is just a very simple example. [Check out the Set web site](https://ind.ie/set) for more complicated ones.