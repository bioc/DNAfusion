% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DNAfusion_functions.R
\name{EML4_ALK_detection}
\alias{EML4_ALK_detection}
\title{Detection of ALK and EML4 breakpoint}
\usage{
EML4_ALK_detection(file, genome = "hg38", mates = 2)
}
\arguments{
\item{file}{The name of the file which the data are to be read from.}

\item{genome}{\verb{Character string} representing the reference genome.
Can be either "hg38" or "hg19". Default="hg38".}

\item{mates}{\code{Interger}, the minimum number ALK-EML4 mate pairs
needed to be detected in order to call a variant. Default=2.}
}
\value{
A \code{GAlignments} object with soft-clipped reads representing
ALK-EML4 and EML4-ALK is returned. If no ALK-EML4 or EML4-ALK is detected
the \code{GAlignments}is empty.
}
\description{
This function identifies the genomic position in ALK and EML4
where the breakpoint has happened.
This function looks for ALK-EML4 and EML4-ALK mate pair reads
in the BAM file.
}
\examples{
H3122_bam <- system.file("extdata",
"H3122_EML4.bam",
package="DNAfusion")
HCC827_bam <-  system.file("extdata",
"HCC827_EML4.bam",
package="DNAfusion")

EML4_ALK_detection(file=H3122_bam,
                    genome="hg38",
                    mates=2)
EML4_ALK_detection(file=HCC827_bam,
                    genome="hg38",
                    mates=2)
}
