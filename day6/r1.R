dat = read.csv(file.choose(), header=T)
attach(dat)
names(dat)

y = length(KHTN[KHTN > 5])
n = length(KHTN)

proptest.geq = function(f, n, p0, alpha) {
p=f/n
z0 = (p-p0)/sqrt(p0*(1-p0))*sqrt(n)
p.value = 1 - pnorm(z0)
return (p.value)
}


p.value = proptest.geq(y,n,p0=0.5,alpha=0.05)
ifelse(p.value<alpha,'Bac bo H0', 'Chua du co so de bac bo H0')

