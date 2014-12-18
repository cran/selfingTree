\name{buildSelfingTree}
\alias{buildSelfingTree}


\title{Builds the probability tree}

\description{This function builds the probability tree for recurrent
  selfing.}


\usage{
buildSelfingTree(genF,generation,gam1,gam2)
}

\arguments{

  \item{genF}{A function that generates a sub-tree of all possible
  genotypes given a parental genotype, either \code{genSubtree.2M} or
  \code{genSubtree.3M}.}

\item{generation}{Integer giving the selfing generation to which the
  tree will be build. Values can range from 2 to 7, e.g., the F2
  generation build by default and the highest possible generation is
  currently the F7.}

  \item{gam1,gam2}{Three (three marker genotypes) or two (two marker
  genotypes) character string with the configuration of gametes one and
  two of the parental F1 genotype.}
}


\value{A recursive data type in the form of a nested \code{list}. Each
  element is a \code{list} with three elements. Element \code{[[1]]}
  holds the genotype configuration as "gam1-gam2" (e.g.,
  \code{"ABA-BAB"}), element \code{[[2]]} the symbolic formula
  representing the probability of observing this genotype given the
  parental genotype and element \code{[[3]]} is again a list containing
  the sub-tree rooted at this genotype.}

\author{
  Frank Technow
}

\examples{

## F2 and F3 genotypes
F.2M <- buildSelfingTree(genSubtree.2M,3,"AA","BB")

## F2 and F3 genotypes
F.3M <- buildSelfingTree(genSubtree.3M,3,"AAA","BBB")

}


