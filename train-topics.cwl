#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [mallet, train-topics]

requirements:
  - class: DockerRequirement
    dockerPull: nlppln/mallet-docker

inputs:
  config:
    type: File?
    inputBinding:
      prefix: --config
  input:
    type: File?
    inputBinding:
      prefix: --input
  inputModel:
    type: File?
    inputBinding:
      prefix: --input-model
  inputState:
    type: File?
    inputBinding:
      prefix: --input-state
  outputModel:
    type: string?
    inputBinding:
      prefix: --output-model
  outputState:
    type: string?
    inputBinding:
      prefix: --output-state
  outputModelInterval:
    type: int?
    inputBinding:
      prefix: --output-model-interval
  inferencerFilename:
    type: string?
    inputBinding:
      prefix: --inferencer-filename
  evaluatorFilename:
    type: string?
    inputBinding:
      prefix: --evaluator-filename
  outputTopicKeys:
    type: string?
    inputBinding:
      prefix: --output-topic-keys
  numTopWords:
    type: int?
    inputBinding:
      prefix: --num-top-words
  showTopicsInterval:
    type: int?
    inputBinding:
      prefix: --show-topics-interval
  topicWordWeightsFile:
    type: string?
    inputBinding:
      prefix: --topic-word-weights-file
  wordTopicCountsFile:
    type: string?
    inputBinding:
      prefix: --word-topic-counts-file
  diagnosticsFile:
    type: string?
    inputBinding:
      prefix: --diagnostics-file
  xmlTopicReport:
    type: string?
    inputBinding:
      prefix: --xml-topic-report
  xmlTopicPhraseReport:
    type: string?
    inputBinding:
      prefix: --xml-topic-phrase-report
  outputTopicDocs:
    type: string?
    inputBinding:
      prefix: --output-topic-docs
  numTopDocs:
    type: int?
    inputBinding:
      prefix: --num-top-docs
  outputDocTopics:
    type: string?
    inputBinding:
      prefix: --output-doc-topics
  docTopicsThreshold:
    type: float?
    inputBinding:
      prefix: --doc-topics-threshold
  docTopicsMax:
    type: int?
    inputBinding:
      prefix: --doc-topics-max
  numTopics:
    type: int?
    inputBinding:
      prefix: --num-topics
  numThreads:
    type: int?
    inputBinding:
      prefix: --num-threads
  numIterations:
    type: int?
    inputBinding:
      prefix: --num-iterations
  numIcmIterations:
    type: int?
    inputBinding:
      prefix: --num-icm-iterations
  noInference:
    type: boolean?
    inputBinding:
      prefix: --no-inference
  randomSeed:
    type: int?
    inputBinding:
      prefix: --random-seed
  optimizeInterval:
    type: int?
    inputBinding:
      prefix: --optimize-interval
  optimizeBurnIn:
    type: int?
    inputBinding:
      prefix: --optimize-burn-in
  useSymmetricAlpha:
    type: boolean?
    default: false
    inputBinding:
      prefix: --use-symmetric-alpha
  alpha:
    type: float?
    inputBinding:
      prefix: --alpha
  beta:
    type: float?
    inputBinding:
      prefix: --beta

outputs:
  outputModel-out:
    type: File?
    outputBinding:
      glob: $(inputs.outputModel)
  outputState-out:
    type: File?
    outputBinding:
      glob: $(inputs.outputState)
  inferencer-out:
    type: File?
    outputBinding:
      glob: $(inputs.inferencerFilename)
  evaluator-out:
    type: File?
    outputBinding:
      glob: $(inputs.evaluatorFilename)
  outputTopicKeys-out:
    type: File?
    outputBinding:
      glob: $(inputs.outputTopicKeys)
  topicWordWeights-out:
    type: File?
    outputBinding:
      glob: $(inputs.topicWordWeightsFile)
  wordTopicCounts-out:
    type: File?
    outputBinding:
      glob: $(inputs.wordTopicCountsFile)
  diagnostics-out:
    type: File?
    outputBinding:
      glob: $(inputs.diagnosticsFile)
  xmlTopicReport-out:
    type: File?
    outputBinding:
      glob: $(inputs.xmlTopicReport)
  xmlTopicPhraseReport-out:
    type: File?
    outputBinding:
      glob: $(inputs.xmlTopicPhraseReport)
  outputTopicDocs-out:
    type: File?
    outputBinding:
      glob: $(inputs.outputTopicDocs)
  outputDocTopics-out:
    type: File?
    outputBinding:
      glob: $(inputs.outputDocTopics)
