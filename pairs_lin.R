library(DescTools)

pairs.lin = function(data,hist.col = "grey",cex.text = 2){
panel.hist <- function(x, ...)
{ usr <- par("usr"); on.exit(par(usr))
par(usr = c(usr[1:2], 0, 1.5) )
h <- hist(x, plot = FALSE)
breaks <- h$breaks; nB <- length(breaks)
y <- h$counts; y <- y/max(y)
rect(breaks[-nB], 0, breaks[-1], y, col= hist.col, ...,
     border = "white")
}
panel.blank <- function(x, y)
{ }
panel.lin <- function(x, y)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- CCC(x, y)$rho.c[1]
  r = round(r,digits = 3)
  
  text(0.5, 0.5, r, cex = cex.text)
}
par(pch = 19)
g = pairs(data, lower.panel=points, upper.panel=panel.lin,
          diag.panel=panel.hist)
  
return(g)
}
