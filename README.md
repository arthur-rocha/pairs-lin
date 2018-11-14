# pairs-lin
Pairs plot in R with lin's coefficient

## Usage
pairs.lin(data, hist.col = "grey", cex.text = 2)

- data: a data.frame object or matrix with each column as a variable
- hist.col: the color of histogram
- cex.text: text size for the upper matrix plot (lin's coefficient)

## Dependences:
`DescTools`

## Example
set.seed(444)
df = data.frame(x = rnorm(100),
                y = x*2,
                z = x+0.01)
                    
pairs.lin(data = df, hist.col = "skyblue", cex.text = 1.2) 
