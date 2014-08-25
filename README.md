Hercules
========


Getting Started
===============
1. Make sure you have your data in the [OMOP CDM v4 format](http://omop.org/cdm).

2. Make sure that you have Java installed. If you don't have Java already intalled on your computed (on most computers it already is installed), go to [java.com](http://java.com) to get the latest version.

3. If you're using Windows, make sure you install [RTools](http://cran.r-project.org/bin/windows/Rtools/).

4. in R, use the following commands to install Hercules:

  ```r
  install.packages("devtools")
  library(devtools)
  install_github("ohdsi/DatabaseConnector")
  install_github("ohdsi/SqlRender")
  install_github("ohdsi/Hercules")
  ```
  
5. Todo....

License
=======
Hercules is licensed under Apache License 2.0
