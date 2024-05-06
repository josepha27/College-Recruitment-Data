use petgraph::Graph;
use csv::Reader;
use serde::Deserialize;

#[derive(Debug, Deserialize)]
struct Record {
    sl_no: u32,
    gender: String,
    ssc_p: f32,
    ssc_b: String,
    hsc_p: f32,
    hsc_b: String,
    hsc_s: String,
    degree_p: f32,
    degree_t: String,
    workex: String,
    etest_p: f32,
    specialisation: String,
    mba_p: f32,
    status: String,
    salary: f32,

}

pub fn create_graph() -> Graph<u32, u32> {
    let mut graph = Graph::<u32, u32>::new();
    let mut rdr = Reader::from_path("Placement_Data_Full_Class.csv").unwrap();

    for result in rdr.deserialize() {
        let record: Record = result.unwrap();
        let node = graph.add_node(record.sl_no);
        
    }

    graph
}
