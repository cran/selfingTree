\name{genSubtree}
\alias{genSubtree.2M}
\alias{genSubtree.3M}


\title{Generates a sub-tree}

\description{These functions generate sub-trees consisting of all
  genotypes (and their conditional probabilities) that can result after
  selfing the parental genotype.}

\usage{
genSubtree.2M(gam1,gam2) ## two-marker genotypes
genSubtree.3M(gam1,gam2) ## three-marker genotypes
}

\arguments{
  \item{gam1,gam2}{Three (three-marker genotypes) or two (two-marker
  genotypes) character string with the configuration of gamete one and two of
  the parental genotype.}
}

\value{A \code{list} with one element per possible genotype. Each
  element is itself a \code{list} with two elements. Element
  \code{[[1]]} holds the genotype configuration as "gam1-gam2" (e.g.,
  \code{"ABA-BAB"}), element \code{[[1]]} the symbolic formula
  representing the probability of observing this genotype given the
  parental genotype.}

\author{
  Frank Technow
}

\examples{
genSubtree.2M("AB","AA")
genSubtree.3M("ABA","AAA")
}


