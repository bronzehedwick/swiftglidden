# Swift Glidden site codebase

## How to make updates

1. [Update git](#update-git)
3. [Start the server](#start-the-server)
3. [Make changes](#make-changes)
4. [Add and commit](#add-and-commit)
5. [Make the internet](#make-the-internet)
6. [Stop the server](#stop-the-server)

### Update git <a name="update-git"></a>
First, we want to make sure our local machine is syncronized with any changes
others may have made.

Open the GitHub app and click the **Sync** button.

Or, in a terminal, navigate to the `swiftglidden` directory and run:

    git pull origin master

All further terminal commands assume you are in the `swiftglidden` directory.

### Start the server <a name="start-the-server"></a>
Our codebase comes with a built-in development server, which enables us to
preview our changes before they go live on our local machine.

To start the development server, run the following command:

    make serve

The server should now be running. You can access it by visiting
`http://localhost:1313` in your browser.

If the page cannot be accessed, there was likely an error. Inspect the
`hugo.log` file to debug, by running:

    tail hugo.log

### Make changes <a name="make-changes"></a>
Once your server is running, go ahead and make the changes you want to make!
Save the files when you're done editing. As soon as you press save, the
development server will reload the site with your changes.

### Add and commit <a name="add-and-commit"></a>
Once you're happy with the changes, you need to add and commit them in git.
Adding *stages* the changes, which means, get them ready to commit. *Commit*
saves the changes in the git history, and preserves them with a message.

Open the GitHub app, and click to add the files you want to change. Then, use
the bottom left pane to describe your change, and then press **Commit**.

Or, in a terminal, run:

    git add [path/to/file]

Where `[path/to/file]` is the path to the file you want to add. You can run `git
add` multiple times to add everything you want.

Or, if you just want to add everyting, run:

    git add .

Now that everything is added, commit with:

    git commit -m "My sweet commit message"

Where `My sweet commit message` is your sweet commit message.

### Make the internet <a name="make-the-internet"></a>
Now we can push the git change both to GitHub and to the server that hosts the
website. We can do this all in one command:

    make web

### Stop the server <a name="stop-the-server"></a>
Once you're done, it's nice to clean up. Stop your development server by
running:

    make stop

## Learning resources
- [Interactive git tutorial](https://www.codecademy.com/courses/learn-git/lessons/git-workflow/exercises/hello-git)
- [Git concepts documentation](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [HTML tutorial](https://www.codecademy.com/courses/learn-html-elements/lessons/intro-to-html/exercises/intro?course_redirect=learn-html)
- [Hugo documentation](https://gohugo.io)
- [Simple progamming editor](https://macromates.com/)
