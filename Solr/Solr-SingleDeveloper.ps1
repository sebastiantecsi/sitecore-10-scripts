Install-SitecoreConfiguration -Path ".\Solr-SingleDeveloper.json" -SolrPort "8983" -SolrInstallRoot "c:\\solr" -SolrVersion "8.1.1"
# The Prefix that will be used on SOLR, Website and Database instances.
$Prefix = "Demo"
# The root folder with the license file and WDP files.
$SCInstallRoot = "C:\ResourceFiles"
# Install Solr Single Developer
$SolrSingleDeveloperParams = @{
	Path = "$SCInstallRoot\Solr-SingleDeveloper.json"
  SolrInstallRoot = "c:\Solution\SolR840\SolR840-$Prefix"
	SolrServicePrefix = $Prefix
	SolrPort = "9999"
	SolrDomain = "localhost"
}

Push-Location $SCInstallRoot

#Install-SitecoreConfiguration @SolrSingleDeveloperParams *>&1 | Tee-Object Solr-SingleDeveloper.log

# Uncomment the below line and comment out the above if you want to remove the XP0 SingleDeveloper Config
Uninstall-SitecoreConfiguration @SolrSingleDeveloperParams *>&1 | Tee-Object Solr-SingleDeveloper.log-Uninstall.log

Pop-Location
