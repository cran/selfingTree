\name{evalProb}
\alias{evalProb}


\title{Evaluates the genotype probability}

\description{This function symbolically sums the marginal probabilities
of relevant nodes and evaluates them with user specified values for the
recombination frequencies.}

\usage{
evalProb(node.prob, x = 0, y = 0, z = 0, chunk.size = min(length(node.prob),75))
}
\arguments{

  \item{node.prob}{Character vector with symbolic marginal node
  probabilities, i.e., a (subset of) an element of the list returned by
  function \code{nodeProbabilities}.}
  \item{x,y,z}{Recombination frequencies. For three-marker genotypes,
  \code{x} is the recombination frequency between markers 1 and 2 and
  \code{y} that between markers 2 and 3. For two-marker genotypes,
  \code{z} is recombination frequency between markers 1 and 2.}
  \item{chunk.size}{\code{node.prob} is split into several parts of size
  equal to \code{chunk.size} and summation done within each chunk first
  and then across chunks.}
}

 \value{The genotype probability (\code{numeric}).}

\author{
Frank Technow
}

\examples{

evalProb(extractProbs(genSubtree.3M("BAA","AAB")),x = 0.123,y = 0.344)

}

