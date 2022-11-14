ktc.tb<-function(x.bar, s=-1, sigma=-1, n, alpha){
	if(sigma > -1){
	    ep<-sigma/sqrt(n)*qnorm(1-alpha/2)
	    cd<-x.bar-ep
	    ct<-x.bar+ep
	}else{
		if(n>30){
		  ep<-s/sqrt(n)*qnorm(1-alpha/2)
		  cd<-x.bar-ep
		  ct<-x.bar+ep
		}else{
			eps<-s/sqrt(n)*qt(1-alpha/2,n-1)
			cd<-x.bar-eps;
			ct<-x.bar+eps;
		}
	}
	cat('Khoang tin cay',100*(1-alpha),'% cho ky vong mu la:\n')
	round(c(lower=cd, upper=ct),2);
}
#Kiem tra
n <- 35
x <- rnorm(n,10,5)
alpha<-0.05;
x.bar <- mean(x); s <- sd(x);
ktc.tb(x.bar, s, n=n, alpha=alpha)
ktc.tb(x.bar, sigma = 5, n=n, alpha=alpha)