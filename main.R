# Function to write prediction results into separate files
pml_write_files = function(x){
    n = length(x)
    for(i in 1:n){
        filename = paste0("problem_id_",i,".txt")
        write.table(x[i], file = filename, quote = FALSE,
                    row.names = FALSE, col.names = FALSE)
    }
}

# Extract predict result from project write-up report
prediction <- "B  A  B  A  A  E  D  B  A  A  B  C  B  A  E  E  A  B  B  B"
# Split into character array
pred_result <- strsplit(prediction, "  ")[[1]]

# Write to file
pml_write_files(pred_result)