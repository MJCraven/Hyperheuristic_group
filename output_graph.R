# Pass max gens

data <- read.table("gencosts.txt", header=FALSE, sep=",")
data <- as.numeric(data)

num_gen <- data[1]
gens <- 1:num_gen
costs <- data[2:(num_gen+1)]

pdf(paste0("plot.pdf",sep=""), onefile=T, paper="A4r")

plot(gens, costs, type="n", xlab="Generations", ylab="Exponent Cost", main=paste0("Cost-Generation Plot (", num_gen, " Generations)"))
lines(gens, costs, col="blue", lwd=1)

# Then output pdf
dev.off()

# [GAP] Now rename plot.pdf to whatever we need to rename it to!
