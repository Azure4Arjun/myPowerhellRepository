# myRepository
In this folder you will find snipits of powershell for Rubrik code I am using regulary for my demo's and show the possibilities with Rubrik Automation using powershell  and Rubrik SDK.
(Most scripts will use the MAC credential file, if you use windows based OS, change the path of the credential file in the script to your location where the file is located)

Rubrik create credential file - 
creates encrypted XML authentication file that can be used for authentication against rubrik cluster.

Rubrik Authentication - 
script to login into rubrik cluster using authentication file on a windows based machine

Rubrik Authentication 4 Mac- 
script to login into rubrik cluster using authentication file on a MAC laptop

Rubrik SQL commandd-
v1 - live mount & Show & unmount latest recovery point to SQL server

Rubrik VMware - 
v1 - Live mount & show & unmount latest recovery point from VM defined in parameters

Rubrik unprotected -
show all machines / servers that are not part of a SLA domain and export it to screen or CSV file

Forward & Forward SQL - 
These are scripts used for the Forward presentations. Forward.ps1 are basic rubrik sdk command examples.
Forward_SQL_DBCC.ps1 performs a SQL livemount, wait until it is running and will run a SQL DBCC check. once done the livemount will be removed again.
(Note: Thanks to Josh Stenhouse for parts of this script (to connect to SQL and run a query) )

createCredentials - 
Create encrypted credential files for Rubrik, Vmware and GuestOS, which can be used in the scripts to authenticate without displaying passwords

RubrikVolume_Livemount.ps1 - 
Mount a volume from RBS based backup (physcial or physical) to physical server (or virtual server) adn made visible under the target server c:\Rubrik-mounts\ 


