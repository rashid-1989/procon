main(i,n,a,b,c,d){long long x;scanf("%d%d%d%d%d",&n,&a,&b,&c,&d);for(x=a%d,i=1;printf("%lld\n",x),i<n;i++)x=(b*x+c)%d;exit(0);}