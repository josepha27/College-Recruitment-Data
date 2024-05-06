mod graph_creation;
mod centrality;
mod average_distance;
mod clustering;
mod distance;
extern {
    fn sqrt<T>(f: T) -> T;
}

fn main() {
    let graph = graph_creation::create_graph();
    centrality::compute_centrality(&graph);
    let average_distance = average_distance::compute_average_distance(&graph);
    println!("Average distance: {}", average_distance);
    clustering::perform_kmeans_clustering("Placement_Data_Full_Class.csv");
    distance::calculate_average_distance("Placement_Data_Full_Class.csv").unwrap();
}

#[cfg(test)]
mod tests {
    use super::distance::calculate_average_distance;
    use std::fs::File;
    use std::io::Write;
    use std::error::Error;

    #[test]
    fn test_calculate_average_distance() -> Result<(), Box<dyn Error>> {
        // Create a temporary CSV file with test data
        let mut file = File::create("test.csv")?;
        file.write_all(b"sl_no,gender,ssc_p,ssc_b,hsc_p,hsc_b,hsc_s,degree_p,degree_t,workex,etest_p,specialisation,mba_p,status,salary\n1,M,67,Others,91,Others,Commerce,58,Sci&Tech,No,55,Mkt&HR,58.8,Placed,270000\n2,M,79.33,Central,78.33,Others,Science,77.48,Sci&Tech,Yes,86.5,Mkt&Fin,66.28,Placed,200000\n3,M,65,Central,68,Central,Arts,64,Comm&Mgmt,No,75,Mkt&Fin,57.8,Placed,250000\n4,M,56,Central,52,Central,Science,52,Sci&Tech,No,66,Mkt&HR,59.43,Not Placed,\n5,M,85.8,Central,73.6,Central,Commerce,73.3,Comm&Mgmt,No,96.8,Mkt&Fin,55.5,Placed,425000")?;

        // Call the function with the test data
        calculate_average_distance("test.csv")?;

        Ok(())
    }
}