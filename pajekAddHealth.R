##################################################################
# pajekAddHealth.R
# Michael Metcalf Bishop, bishop@uchicago.edu
# Original Authors: Amy Knopf & Martina Morris, U. of Washington
# Data Source: The Longitudinal Study of Adolescent Health, pajek .paj social networks 
# Purpose: Import / convert pajek files into R "network" objects 
# Acknowledgements: Amy and Martina gave me this code.
#		Please submit/push suggestions for improvements and I'll add your name here.
##################################################################

library(statnet)
library(network)

help(read.paj)

comm1 <- read.paj("J:/Data/AddHealth-Public/Network Structure/Data/comm1.paj")

summary(comm1)

comm1

is.network(comm1)

test <- as.network(comm1)

test <- as.edgelist(comm1)

class(comm1)

names(comm1)

length(comm1$networks)

paj <- comm1

comm1 <- paj$networks[[1]]

is.network(comm1)

summary(comm1)

names(paj)

comm1 <- paj$networks[[1]]

names(paj$partitions)

node.sex <- paj$partitions$comm1_sex

node.sex

summary(comm1)

node.sex <- paj$partitions$comm1_sex

set.network.attribute(comm1,attrname="sex",node.sex)

summary(comm1)

is.numeric(node.sex)

comm1 <- paj$networks[[1]]

summary(comm1)

is.network(paj$networks[[1]])

(paj$networks[[1]])

paj <- read.paj("R:/Data/AddHealth-Public/Network Structure/Data/comm1.paj")

summary(paj$networks[[1]])

comm1 <- paj$networks[[1]]

summary(comm1)

node.sex <- paj$partitions$comm1_sex

is.vector(node.sex)

length(node.sex)

set.vertex.attribute(comm1,attrname="sex",value=node.sex)

summary(comm1)
