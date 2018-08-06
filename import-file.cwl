#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [mallet, import-dir]

requirements:
  - class: DockerRequirement
    dockerPull: nlppln/mallet-docker

inputs:
  config:
    type: File?
    inputBinding:
      prefix: --config
  input:
    type: Directory[]
    inputBinding:
      prefix: --input
  output:
    type: string
    inputBinding:
      prefix: --output
  lineRegex:
    type: string?
    inputBinding:
      prefix: --line-regex
  label:
    type: int?
    inputBinding:
      prefix: --label
  name:
    type: int?
    inputBinding:
      prefix: --name
  data:
    type: int?
    inputBinding:
      prefix: --data
  usePipeFrom:
    type: File?
    inputBinding:
      prefix: --use-pipe-from
  keepSequence:
    type: boolean?
    inputBinding:
      prefix: --keep-sequence
  keepSequenceBigrams:
    type: boolean?
    inputBinding:
      prefix: --keep-sequence-bigrams
  labelAsFeatures:
    type: boolean?
    inputBinding:
      prefix: --label-as-features
  removeStopwords:
    type: boolean?
    inputBinding:
      prefix: --remove-stopwords
  replacementFiles:
    type: File[]?
    inputBinding:
      prefix: --replacement-files
  deletionFiles:
    type: File[]?
    inputBinding:
      prefix: --deletion-files
  stoplistFile:
    type: File?
    inputBinding:
      prefix: --stoplist-file
  extraStopwords:
    type: File?
    inputBinding:
      prefix: --extra-stopwords
  stopPatternFile:
    type: File?
    inputBinding:
      prefix: --stop-pattern-file
  preserveCase:
    type: boolean?
    inputBinding:
      prefix: --preserve-case
  encoding:
    type: string?
    inputBinding:
      prefix: --encoding
  tokenRegex:
    type: string?
    inputBinding:
      prefix: --token-regex
  printOutput:
    type: boolean?
    inputBinding:
      prefix: --print-output

outputs:
  corpus:
    type: File
    outputBinding:
      glob: $(inputs.output)
