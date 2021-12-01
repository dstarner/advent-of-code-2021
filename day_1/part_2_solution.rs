use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;

// This is some _not great_ code, but its the first lines of Rust that
// I have _EVER_ written. I tried to infer as much as possible, so I'm
// excited to see how much better this gets through the month.
fn main() {
    let f = File::open("input.txt").expect("Error opening file");
    let reader = BufReader::new(f);

    let values = reader.lines().map(|value| {
        value.expect("Expected line")
            .parse::<i32>()
            .expect("Error parsing integer")
    }).collect::<Vec<i32>>();
    
    let mut total_increases = 0;

    for (pos, _) in values.iter().enumerate() {
        if pos < 3 {
            continue;
        }
        let last_measure = values[pos-3] + values[pos-2] + values[pos -1];
        let cur_measure = values[pos-2] + values[pos -1] + values[pos];

        if cur_measure > last_measure {
            total_increases += 1;
        }
    }

    println!("{:?}", total_increases)
}