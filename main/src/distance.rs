// Import necessary crates
use csv::Reader;
use ndarray::{Array2, Array1};
use ndarray_stats::DeviationExt;
use std::error::Error;

// Define the module
pub mod distance {

    // Define a public function to calculate average distance
    pub fn calculate_average_distance(file_path: &str) -> Result<(), Box<dyn Error>> {
        // Read the CSV file
        let mut reader = Reader::from_path(file_path)?;

        // Create a Vec to store the data
        let mut data = Vec::new();

        // Iterate over the records
        for result in reader.records() {
            let record = result?;

            // Get the etest_p and mba_p from the record
            let etest_p: f64 = record.get(10).unwrap().parse()?;
            let mba_p: f64 = record.get(13).unwrap().parse()?;

            // Add the data to the Vec
            data.push([etest_p, mba_p]);
        }

        // Convert the Vec to an Array2
        let data = Array2::from_shape_vec((data.len(), 2), data.into_iter().flatten().collect()).unwrap();

        // Calculate the pairwise distances
        let mut distances = Array1::zeros((data.len() * (data.len() - 1)) / 2);
        for (i, row_a) in data.outer_iter().enumerate() {
            for (j, row_b) in data.outer_iter().enumerate() {
                if i < j {
                    distances[((i * (data.len() - 1)) + j) / 2] = row_a.l2_dist(&row_b)?;
                }
            }
        }

        // Calculate the average distance
        let average_distance = distances.mean().unwrap();

        // Print the average distance
        println!("Average distance: {}", average_distance);

        Ok(())
    }
}