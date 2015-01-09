
################################################################################### Plot Response to Nf3
R2<-R[which(R$X1=="Nf3"),]
G<-as.matrix(table(R2$X2,R2$Date))
G2<-G
for(i in 1:dim(G)[2])
G2[,i]<-G[,i]/sum(G[,i])

mG<-c()
for(i in 1:20){
mG[i]<-mean(G2[i,])
}

G3<-G2[order(mG, decreasing=T),]

G4<-G3


for(y in 1:43){
G4[,y]<-rev(cumsum(rev(G3[,y])))
}

pdf(width=8, height=6, "ResponseToNf3All.pdf")
 plot(G4[2,]~c(1971:2013),type="l", ylim=c(0,1),xlim=c(1975,2013),xlab="Date", ylab="Frequency of Opening Move",xaxt="n")
 axis(1, at=1975:2013)
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[1,]) , rev((G4[2,])))) , col = '#fb8072'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[2,]) , rev((G4[3,])))) , col = '#8dd3c7'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[3,]) , rev((G4[4,])))) , col = '#b3de69'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[4,]) , rev((G4[5,])))) , col = '#fdb462'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[5,]) , rev((G4[6,])))) , col = '#ffffb3'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[6,]) , rev((G4[20,])))) , col = '#bebada'  , border = "black")

text(2006,.78,"Nf6" )
text(2006,.4,"d5" )
text(2006,.2,"c5" )
text(1975,.13,"g6"  ) 
text(1990,.078,"f5"  )
text(2006,.03,"Other" )

 
###################################################################################### Plot Stronger Players
R3<-R2[which(R2$EloW>=2600),]
G<-as.matrix(table(R3$X2,R3$Date))
G2<-G
for(i in 1:dim(G)[2])
G2[,i]<-G[,i]/sum(G[,i])

G3<-G2[order(mG, decreasing=T),]

G4<-G3

for(y in 1:43){
G4[,y]<-rev(cumsum(rev(G3[,y])))
}

 plot(G4[2,]~c(1971:2013),type="l", ylim=c(0,1),xlim=c(1982,2013),xlab="Date", ylab="Frequency of Opening Move",xaxt="n")
 axis(1, at=1982:2013)
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[1,]) , rev((G4[2,])))) , col = '#fb8072'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[2,]) , rev((G4[3,])))) , col = '#8dd3c7'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[3,]) , rev((G4[4,])))) , col = '#b3de69'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[4,]) , rev((G4[5,])))) , col = '#fdb462'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[5,]) , rev((G4[6,])))) , col = '#ffffb3'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[6,]) , rev((G4[20,])))) , col = '#bebada'  , border = "black")
windows()

###################################################################################### Plot Weaker Players
R3<-R2[which(R2$EloW>=2100),]
G<-as.matrix(table(R3$X2,R3$Date))
G2<-G
for(i in 1:dim(G)[2])
G2[,i]<-G[,i]/sum(G[,i])

G3<-G2[order(mG, decreasing=T),]

G4<-G3

for(y in 1:43){
G4[,y]<-rev(cumsum(rev(G3[,y])))
}

 plot(G4[2,]~c(1971:2013),type="l", ylim=c(0,1),xlim=c(1982,2013),xlab="Date", ylab="Frequency of Opening Move",xaxt="n")
 axis(1, at=1982:2013)
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[1,]) , rev((G4[2,])))) , col = '#fb8072'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[2,]) , rev((G4[3,])))) , col = '#8dd3c7'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[3,]) , rev((G4[4,])))) , col = '#b3de69'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[4,]) , rev((G4[5,])))) , col = '#fdb462'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[5,]) , rev((G4[6,])))) , col = '#ffffb3'  , border = "black")
polygon(c(c(1971:2013), rev(c(1971:2013))), c(c((G4[6,]) , rev((G4[20,])))) , col = '#bebada'  , border = "black")