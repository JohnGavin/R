# TODO: Add comment
# 
# Author: jbg
###############################################################################
# http://www.r-bloggers.com/make-your-ggplots-shareable-collaborative-and-with-d3/

library("ggplot2")
ggiris <- qplot(Petal.Width, Sepal.Length, data = iris, color = Species)
print(ggiris)

# The following two commands remove any previously installed H2O packages for R.

installPackage <- function(x = "h2o", 
	remove = FALSE,
	repos = "http://s3.amazonaws.com/h2o-release/h2o/rel-kahan/5/R"
)
{	stopifnot(length(x) == 1)
	xPackage <- paste("package:", x, sep = "")
	if (xPackage %in% search()) detach(xPackage, unload=TRUE)
	# TODO: only remove the package if we have successfully downloaded its replacment?
	if (x %in% rownames(installed.packages())) remove.packages(x)
	# Next, download, install and initialize the package.
	install.packages(x, repos=c(repos, getOption("repos")))
}
installPackage(x = "devtools")

# Let's make it in Plotly. Install:
		
library("devtools")
install_github("plotly", "ropensci")
		
		library("plotly")
		## Loading required package: RCurl
		## Loading required package: bitops
		## Loading required package: RJSONIO
Sign up online, use our public keys below, or sign up like this:		
		signup("new_username", "your_email@domain.com")
		That should have responded with your new key. Use that to create a plotly interface object, or use ours:
		
		py <- plotly("RgraphingAPI", "ektgzomjbx")
		It just works.
		
		py$ggplotly(ggiris)
