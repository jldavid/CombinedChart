import Charts
import SwiftUI

struct ContentView: View {
    @State private var averageIsShown = false
    var body: some View {
        VStack {
            Chart {
                BarMark(x: .value("Type", "bird"),
                        y: .value("Population", 1))
                .opacity(0.5)

                BarMark(x: .value("Type", "dog"),
                        y: .value("Population", 2))
                .opacity(0.5)

                BarMark(x: .value("Type", "cat"),
                        y: .value("Population", 3))
                if averageIsShown {
                    RuleMark(y: .value("Average", 1.5))
                        .foregroundStyle(.gray)
                        .annotation(position: .bottom, alignment: .bottomLeading) {
                                Text("average 1.5")
                        }
                }
            }
            .aspectRatio(1, contentMode: .fit)
            
            Toggle(averageIsShown ? "show average" : "hide average",
                   isOn: $averageIsShown.animation())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
