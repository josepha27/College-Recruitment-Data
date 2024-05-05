mod graph_creation;
mod centrality;
mod average_distance;

fn main() {
    let graph = graph_creation::create_graph();
    centrality::compute_centrality(&graph);
    let average_distance = average_distance::compute_average_distance(&graph);
    println!("Average distance: {}", average_distance);
}