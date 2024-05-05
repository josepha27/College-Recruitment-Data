use petgraph::visit::{Dfs, IntoNodeIdentifiers};
use petgraph::Graph;

pub fn compute_average_distance(graph: &Graph<u32, u32>) -> f64 {
    let mut total_distance = 0;
    let mut count = 0;

    for node in graph.node_identifiers() {
        let mut dfs = Dfs::new(&graph, node);
        while let Some(nx) = dfs.next(&graph) {
            total_distance += graph.find_edge(node, nx).unwrap();
            count += 1;
        }
    }

    total_distance as f64 / count as f64
}