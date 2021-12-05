module main
import os
import strconv
import strings

fn main() {
    lines := os.read_lines("input")?
    mut cols := []int{len: lines[0].len, cap: lines[0].len, init: 0}
    for line in lines {
        for i in 0 .. line.len {
            rl := line.runes()
            cols[i] += strconv.atoi(rl[i].str())?
        }
    }
    mut gammastr := strings.new_builder(12)
    mut epsilonstr := strings.new_builder(12)
    for num in cols {
        if num >= 500 {
            gammastr.write_rune(`1`)
            epsilonstr.write_rune(`0`)
        } else {
            gammastr.write_rune(`0`)
            epsilonstr.write_rune(`1`)
        }
    }
    gamma := strconv.parse_int(gammastr.str(), 2, 32)?
    epsilon := strconv.parse_int(epsilonstr.str(), 2, 32)?
    println("${gamma * epsilon}")
}
