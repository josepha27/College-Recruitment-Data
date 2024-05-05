use csv::Reader;
use kmeans::{kmeans, KMeans};
use ndarray::Array2;
pub mod clustering {
    pub fn perform_kmeans_clustering(file_path: &str) {
        // Read the CSV file
        let mut reader = Reader::from_path(file_path).unwrap();

        // Create a Vec to store the data
        let mut data = Vec::new();

        // Iterate over the records
        for result in reader.records() {
            let record = result.unwrap();

            // Get the etest_p and status from the record
            let etest_p: f64 = record.get(10).unwrap().parse().unwrap();
            let status: f64 = if record.get(14).unwrap() == "Placed" { 1.0 } else { 0.0 };

            // Add the data to the Vec
            data.push([etest_p, status]);
        }

        // Convert the Vec to an Array2
        let data = Array2::from_shape_vec((data.len(), 2), data.into_iter().flatten().collect()).unwrap();

        // Create a KMeans instance with 2 clusters (Placed and Not Placed)
        let model = KMeans::new(2);

        // Fit the model
        let model = model.fit(&data, Default::default()).unwrap();

        // Get the cluster labels
        let labels = model.predict(&data);

        // Print the labels
        for (i, label) in labels.iter().enumerate() {
            println!("Data point {}: Cluster {}", i, label);
        }
    }
}