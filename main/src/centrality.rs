use petgraph::Graph;
use csv::Reader;
use std::collections::HashMap;

pub fn compute_centrality(graph: &Graph<u32, u32>) {
    // Compute centrality measures here
    let mut graph = Graph::<&str, &str>::new();
    let mut nodes = HashMap::new();
    let mut reader = Reader::from_path("Placement_Data_Full_Class.csv").unwrap();
    for result in reader.records() {
        let record = result.unwrap();
        let sl_no = record.get(0).unwrap();
        let degree_t = record.get(8).unwrap();
        let user_node = *nodes.entry(sl_no).or_insert_with(|| graph.add_node(sl_no));
        let degree_node = *nodes.entry(degree_t).or_insert_with(|| graph.add_node(degree_t));
        graph.add_edge(user_node, degree_node, "");
    }
    for node in graph.node_indices() {
        let degree = graph.neighbors(node).count();
        println!("Node: {:?}, Degree Centrality: {}", graph[node], degree);
    }
}