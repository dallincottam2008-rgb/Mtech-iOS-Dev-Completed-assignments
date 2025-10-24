//
//  SpaceshipScreen.swift
//  State Spaceship (aka Stateship)
//
//  Created by Jane Madsen on 9/29/25.
//

import SwiftUI
import Observation



struct SpaceshipScreen: View {
    @Bindable var shipComputer: ShipComputer
    
    var body: some View {
        Form {
            Section("Helm Station") {
                HelmStation()
            }
            
            Section("Weapons Station") {
                WeaponsStation()
            }
            
            Section("Shield Station") {
                ShieldStation()
            }
            
            Section("Engine Station") {
                EngineStation()
            }
            
            
        }
        .padding()
        .environment(shipComputer)
    }
}

struct HelmStation: View {
    @Environment(ShipComputer.self) var shipComputer
    @State private var inChair: Bool = true
    
    var body: some View {
        HStack {
            @Bindable var shipComputer = shipComputer
            
            CrewChair(crewMember: .dog, inChair: $inChair)
            
            TextField("Heading", text: $shipComputer.heading)
                .disabled(!inChair)
        }
    }
}

struct WeaponsStation: View {
    @Environment(ShipComputer.self) var shipComputer
    @State private var toggleWeapons = true
    @State private var inChair: Bool = true
    @State private var fired = false
    
    var body: some View {
        HStack {
            @Bindable var shipComputer = shipComputer
            
            CrewChair(crewMember: .cat, inChair: $inChair)
            
            VStack {
                Toggle("Weapons Power: \(shipComputer.availablePower)", isOn: $toggleWeapons)
                    .onChange(of: fired) {
                        if toggleWeapons {
                            shipComputer.availablePower += 2
                            fired = false
                        } else {
                            shipComputer.availablePower -= 2
                            fired = false
                        }
                        
                        if shipComputer.availablePower > 10 {
                            toggleWeapons = false
                        }
                        
                        if shipComputer.availablePower <= 0 {
                            toggleWeapons = true
                        }
                    }
//                    .disabled(!inChair)
                
                
                Button("Fire!") {
                    fired = true
                    print("PEW!")
                }
//                .disabled(!inChair)
            }
        }
    }
}

struct ShieldStation: View {
    @Environment(ShipComputer.self) var shipComputer
    @State var powerUsed = 0
    @State private var inChair: Bool = true
    
    var body: some View {
        HStack {
            
            CrewChair(crewMember: .lizard, inChair: $inChair)
//            
            Stepper("Shield Power: \(powerUsed)", value: $powerUsed, in: 0...10)
//                .disabled(!inChair)
                .onChange(of: powerUsed) { oldValue, newValue in
                    let difference = newValue - oldValue
                    
                    shipComputer.availablePower -= difference
                    
                    if shipComputer.availablePower < 0 {
                        powerUsed = oldValue
                    }
                }
        }
    }
}

struct EngineStation: View {
    @Environment(ShipComputer.self) var shipComputer
    @State var enginePowerUsed = 0
    @State var inChair: Bool = false
    
    var body: some View {
        HStack {
            
            CrewChair(crewMember: .hare, inChair: $inChair)
            
            Stepper("Engine Power: \(enginePowerUsed)", value: $enginePowerUsed, in: 0...10)
                .onChange(of: enginePowerUsed) { oldValue, newValue in
                    let difference = newValue - oldValue
                    
                    shipComputer.availablePower -= difference
                    
                    if shipComputer.availablePower < 0 {
                        enginePowerUsed = oldValue
                    }
                }
                .disabled(!inChair)
        }
    }
}

struct CrewChair: View {
    var crewMember: Crew = .cat
    @Binding var inChair: Bool
    
    var body: some View {
        Button {
            inChair.toggle()
        } label: {
            if inChair {
                crewMember.icon
            } else {
                Image(systemName: "person.slash")
            }
        }
        .padding(5)
        .background {
            Circle()
                .foregroundStyle(.gray)
        }
    }
}

enum Crew: String {
    case dog
    case cat
    case lizard
    case hare
    
    var icon: Image {
        switch self {
        case .dog:
            Image(systemName: "dog")
        case .cat:
            Image(systemName: "cat")
        case .lizard:
            Image(systemName: "lizard")
        case .hare:
            Image(systemName: "hare")
        }
    }
}

#Preview {
    SpaceshipScreen(shipComputer: ShipComputer())
}



