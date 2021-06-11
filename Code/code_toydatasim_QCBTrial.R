#### SIMULATING EQTL DATA
set.seed(1218)
N = 200
maf = .35
snp = rbinom(n = N,size = 2,prob = maf)
age = signif(runif(n = N,min = 18,max = 75),3)
gene = 1.2*snp - .02*age + rnorm(n = N,mean = 0, sd = 8)
gene = as.numeric(scale(gene))
tib.eqtl = tibble::tibble(Gene = gene,
                          Age = age,
                          SNP = snp)
save(tib.eqtl,file = 'Code/sample_eqtl.RData')