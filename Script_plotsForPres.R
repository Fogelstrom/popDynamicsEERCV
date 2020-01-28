library(popbio)
data(grizzly)
View(grizzly)
with(grizzly, plot(N~year, las=1, type="b"))

data("whale")
View(whale)
n0 = c(10, 10, 10, 10)

whalesizes <- pop.projection(whale, n0)
N = t(whalesizes$stage.vectors)
matplot(0:19, N, type = "l")
legend('bottomright',legend = colnames(N), col = c("black", "red", "green", "blue"), lty = 1:4, lwd = 1 )
