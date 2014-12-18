\name{getTargets}
\alias{getTargets}


\title{Obtain all possible genotypes that match a certain target
configuration}

\description{This convenience function finds all genotypes that match a
  certain target configuration. It is used only if the target
  configuration contains heterozygous states, but order (e.g., A/B or
  B/A) does not matter.}

\usage{
getTargets(target.geno)
}
\arguments{

  \item{target.geno}{Three (three-marker genotypes) or two (two-marker
  genotypes) character string specifying the target
  configuration. Homozygousity for parent A allele is indicated as
  \code{A}, homozygousity for parent B allele as \code{B},
  heterozygousity (A/B or B/A) as \code{H}.}

}
 \value{A character vector with all genotypes matching the target
 configuration. The format complies with the output format of
 \code{branchProbabilities} (\code{gamete1-gamete2}, e.g., \code{"AAB-AAA"})}

\author{
Frank Technow
}

\examples{

getTargets("AHB")

}

