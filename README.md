# stg-federal-funds-dashboard

This dashboard is a draft that is undergoing active development. It should not be shared or used for analysis. The GitHub repository for the most recent published version of the dashboard can be found [here](https://github.com/Chi-Trust/Recovery-Funds-Dashboard).

For more information about the dashboard, please contact [Aimee Ramirez](mailto:aramirez@cct.org) (The Chicago Community Trust) and [Karolina Ramos](mailto:kramos@urban.org) (Urban Institute).

## Instructions for Updating the Dashboard
- All updates to the dashboard should be made on the `stg-federal-funds-dashboard` repository. 
- Before making any updates, make sure to `git pull` the most recent version of the staging dashboard from GitHub.
- To update the staging dashboard data:
  - Edit the `data/cct_dashboard_data.csv` file and push the edits to this repository. 
  - Let Alena or Manu know that the changes have been pushed, and they will update the staging dashboard with the new data.
- To update the staging dashboard:
  - Edit the relevant file(s) corresponding to the page(s) of the dashboard you want to edit (`index.Rmd`, `recovery-funds.Rmd`, `infrastructure-funds.Rmd`, 
  `glossary.Rmd`, or `FAQ.Rmd`).
  - In the command line from the root directory of this repository, run `RScript render.R` to render the pages of the dashboard. 
  - Push the updated `.Rmd` file(s) and **all of the `.html` files** to GitHub
- To update production dashboard:
  - Send the [staging dashboard link](https://chi-trust.github.io/stg-federal-funds-dashboard/) to Aimee at the Trust and Alena and Karolina at Urban for review and approval.
  - Once representatives from both organizations approve, Alena or Manu will copy all of the `.Rmd` and `.html` files from the staging repository to the production repository. 
  - Alena or Manu will push the files to the production GitHub, which will automatically update the production dashboard link to reflect the changes. Only Alena and Manu have write permissions on the production repository. 
