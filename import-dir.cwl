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
  usePipeFrom:
    type: File?
    inputBinding:
      prefix: --use-pipe-from
  preserveCase:
    type: boolean?
    inputBinding:
      prefix: --preserve-case
  replacementFiles:
    type: File[]?
    inputBinding:
      prefix: --replacement-files
  deletionFiles:
    type: File[]?
    inputBinding:
      prefix: --deletion-files
  removeStopwords:
    type: boolean?
    inputBinding:
      prefix: --remove-stopwords
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
  skipHeader:
    type: boolean?
    inputBinding:
      prefix: --skip-header
  skipHtml:
    type: boolean?
    inputBinding:
      prefix: --skip-html
  binaryFeatures:
    type: boolean?
    inputBinding:
      prefix: --binary-features
  gramSizes:
    type: int[]?
    inputBinding:
      prefix: --gram-sizes
  keepSequence:
    type: boolean?
    inputBinding:
      prefix: --keep-sequence
  keepSequenceBigrams:
    type: boolean?
    inputBinding:
      prefix: --keep-sequence-bigrams
  saveTextInSource:
    type: boolean?
    inputBinding:
      prefix: --save-text-in-source
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
