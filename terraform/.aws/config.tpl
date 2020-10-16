[profile default]
region = eu-central-1

[profile Aplazame]
region = eu-central-1

[profile AplazameProd]
role_arn = arn:aws:iam::554620132321:role/AplazameProd${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameStaging]
role_arn = arn:aws:iam::607842286676:role/AplazameStaging${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameDev]
role_arn = arn:aws:iam::962405273365:role/AplazameDev${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameSharedServices]
role_arn = arn:aws:iam::666356151544:role/AplazameSharedServices${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameDataProd]
role_arn = arn:aws:iam::808207195014:role/AplazameDataProd${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameDataDev]
role_arn = arn:aws:iam::302835715972:role/AplazameDataDev${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameLab]
role_arn = arn:aws:iam::858652523650:role/AplazameLab${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1

[profile AplazameTest]
role_arn = arn:aws:iam::428017099665:role/AplazameTest${AWS_ROLE}
source_profile = Aplazame
region = eu-central-1
