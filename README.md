# Get the latest news on your terminal

This is a simple bash script which fetches the latest international news headlines and corresponding URL's from [Reuters](https://uk.reuters.com/).

To get started:
* Right click [here](https://raw.githubusercontent.com/imrankhan17/terminal-news/master/news.sh) and save the file.
* Or, enter `git clone https://github.com/imrankhan17/terminal-news.git` in your terminal.

Then, simply run `./news.sh`.

To create a shortcut that works anywhere within your file system, add the following line to your `.bash_profile`:
`alias news="/absolute/path/to/file/terminal_news/news.sh"`

Limit results with the `-n` flag e.g. `news -n 3` will return the top 3 headlines and URL's.