\name{haploProb}
\alias{haploProb.2M}
\alias{haploProb.3M}

\title{Probability of observing the target haplotype given the parental genotype.}

\description{These functions derive the symbolic formula for the
  probability of observing the target haplotype given the parental
  genotype.}

\usage{
haploProb.2M(gam1,gam2,target) ## two-marker genotypes
haploProb.3M(gam1,gam2,target) ## three-marker genotypes
}

\arguments{

  \item{gam1,gam2}{Three (three-marker genotypes) or two (two-marker
  genotypes) character string with the configuration of gamete one and
  two of the parental genotype.}

\item{target}{Three (three-marker genotypes) or two (two-marker
  genotypes) character string with the configuration of the target
  haplotype.}

}

\value{A character string with the symbolic formula. For three-marker
 genotypes, \code{x} is the recombination frequency between markers 1
 and 2 and \code{y} that between markers 2 and 3. For two-marker
 genotypes, \code{z} is the recombination frequency between markers 1 and
 2.}

\author{
Frank Technow
}

\details{The idea behind the algorithm is to conceptually "recode" the
alleles of the parental genotype into "target" and "non-target",
where "target" is relative to the target haplotype. Then the rules are
determined that would rearrange the gametes of the parental genotype into a
"target-target-target" haplotype. These rearrangement rules are then
translated into the symbolic formula.}


\examples{
haploProb.2M("AA","BB","AB")
haploProb.3M("AAA","BBB","ABA")
}


