
dfA <- eventReactive(c(input$selectCancer_1), { 
  project <- "https://data.world/brookslybrand/s18-edv-project-2-dataset" 
  data.world::set_config(cfg_env("DW_API")) 
  paramQuery <- data.world::qry_sql(
    paste("   
    select cancer_site, year, sex, incidence_and_survival_assumptions, total_costs, initial_year_after_diagnosis_cost, continuing_phase_cost, last_year_of_life_cost, annual_cost_percentage_increase
    from cancer_data
    where cancer_site in (",
          paste("\"", paste(input$selectCancer_1, collapse="\", \""), "\"", sep=""),
          ") order by cancer_site
    ")
  )
  data.world::query(paramQuery, dataset = project)
})