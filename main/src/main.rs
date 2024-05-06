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