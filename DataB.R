dfB <- eventReactive(c(input$selectRegion_1), { 
  project <- "https://data.world/cannata/tophatsuperstore" 
  data.world::set_config(cfg_env("DW_API")) 
  paramQuery <- data.world::qry_sql(
    "   
    select region, sales
    from superstore s
    where region in (?, ?, ?, ?)
    order by region
    ")
  paramQuery$params <- c(input$selectRegion_1[1], input$selectRegion_1[2], input$selectRegion_1[3], input$selectRegion_1[4])
  data.world::query(paramQuery, dataset = project)
})

dfB1 <- eventReactive(c(input$selectRegion_1, input$yDataMin__4_, input$yDataMax__4_), { 
  if( ! is.na(input$yDataMin__4_) & ! is.na(input$yDataMax__4_)) {
    dfB() %>% dplyr::filter(between(sales, input$yDataMin__4_, input$yDataMax__4_))
  }
  else {
    dfB()
  }
})
