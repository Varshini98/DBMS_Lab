select advertisement.producttype, user1.name1 from user1
inner join advertisement on advertisement.emailid=user1.emailid
where producttype='laptop';