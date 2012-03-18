minFactors=4 # minimum number of factors
numberCount=0 # number of numbers matching criteria

for iter in range(1,999999):
    factorList = list(factor(iter))
    numFactors = len(factorList)
    if numFactors >= minFactors:
        print "%d has %d factors, %r" % (iter, numFactors, factorList)
        numberCount = numberCount + 1	

print "%d numbers <= 999999, with number of factors >= %d" % (numberCount, minFactors)
