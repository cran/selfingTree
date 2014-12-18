\name{selfingTree-package}
\alias{selfingTree-package}
\alias{selfingTree}
\docType{package}
\title{
  Genotype Probabilities in Intermediate Generations of Inbreeding Through Selfing
}

\description{ A probability tree allows to compute probabilities of
complex events, such as genotype probabilities in intermediate
generations of inbreeding through recurrent self-fertilization
(selfing). This package implements functionality to compute probability
trees for two- and three-marker genotypes in the F2 to F7 selfing
generations. The conditional probabilities are derived automatically and
in symbolic form. The package also provides functionality to extract and
evaluate the relevant probabilities.

Copyright (c) 2014, Pioneer Hi-Bred International, Inc.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:
Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

    Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in
    the documentation and/or other materials provided with the
    distribution.

    Neither the name of Pioneer Hi-Bred International, Inc. nor the
    names of its contributors may be used to endorse or promote
    products derived from this software without specific prior written
    permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

\details{
\tabular{ll}{
Package: \tab selfingTree\cr
Type: \tab Package\cr
Version: \tab 0.2\cr
Date: \tab 2014-12-18\cr
LazyData: \tab yes\cr
Depends: \tab foreach\cr
}

Function \code{buildSelfingTree} generates the probability trees for
two- and three-marker genotypes. This is done by recursively calling
functions \code{genSubtree.2M} (two-marker genotypes) or
\code{genSubtree.3M} (three-marker genotypes). The core functionality of
deriving the symbolic conditional haplotype probabilities is implemented
in functions \code{haploProb.2M} and \code{haploProb.3M}. The function
\code{nodeProbabilities} is used to symbolically multiply the
conditional probabilities along all branches and uses function
\code{extractProbs} to extract the conditional probabilities from the
trees. Finally function \code{evalProb} symbolically sums the marginal
probabilities of relevant nodes and evaluates them with user specified
values for the recombination frequencies. The function \code{getTargets}
can be used to identify relevant events given a target genotype.}

\author{Frank Technow

  at Pioneer Hi-Bred International, Inc., Breeding Technologies, Johnson/IA, USA.

  Maintainer: Frank Technow \email{ Frank.Technow@pioneer.com }
}

\keyword{package}
\keyword{tree}

