//
//  StepRow.swift
//  ZJobs
//
//  Created by Viktor Draganov on 9.05.22.
//

import SwiftUI

struct StepRow: View {
    var step: Step
    
    var body: some View {
        Text(step.description)
        
    }
}

struct StepRow_Previews: PreviewProvider {
    static var previews: some View {
        StepRow(step: Step.sampleStepData)
    }
}
