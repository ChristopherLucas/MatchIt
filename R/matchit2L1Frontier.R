matchit2L1Frontier <-
    function(treat, X, data, distance, discarded, is.full.mahalanobis,
             ...){
        if (!requireNamespace("MatchingFrontier", quietly = TRUE))
            stop("MatchingFrontier package is required. Please install it.")

        mahal.frontier <- MatchingFrontier::makeFrontier(data,
                                                         treat,
                                                         colnames(X),
                                                         QOI = 'SATT',
                                                         metric = 'L1',
                                                         ratio = 'fixed')
        msg <- "Before analyzing a sample on the matching frontier (e.g.,
with Zelig), you may wish to use the following functions:

[1] generateDataset(): export a data set that sits on the frontier.
[2] estimateEffects(): estimate the effect of the treatment along the
                       entire frontier.\n"
        cat(msg)
        
        return(mahal.frontier)
    }
