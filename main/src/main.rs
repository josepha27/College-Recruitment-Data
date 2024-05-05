mod graph_creation;
mod graph_analysis;

fn main() {
    let graph = graph_creation::create_graph();
    graph_analysis::compute_centrality(&graph);
    let average_distance = graph_analysis::compute_average_distance(&graph);
    println!("Average distance: {}", average_distance);
}