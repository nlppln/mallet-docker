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
  use-pipe-from:
    type: File?
    inputBinding:
      prefix: --use-pipe-from
  preserve-case:
    type: boolean?
    inputBinding:
      prefix: --preserve-case
  replacement-files:
    type: File[]?
    inputBinding:
      prefix: --replacement-files
  deletion-files:
    type: File[]?
    inputBinding:
      prefix: --deletion-files
  remove-stopwords:
    type: boolean?
    inputBinding:
      prefix: --remove-stopwords
  stoplist-file:
    type: File?
    inputBinding:
      prefix: --stoplist-file
  extra-stopwords:
    type: File?
    inputBinding:
      prefix: --extra-stopwords
  stop-pattern-file:
    type: File?
    inputBinding:
      prefix: --stop-pattern-file
  skip-header:
    type: boolean?
    inputBinding:
      prefix: --skip-header
  skip-html:
    type: boolean?
    inputBinding:
      prefix: --skip-html
  binary-features:
    type: boolean?
    inputBinding:
      prefix: --binary-features
  gram-sizes:
    type: int[]?
    inputBinding:
      prefix: --gram-sizes
  keep-sequence:
    type: boolean?
    inputBinding:
      prefix: --keep-sequence
  keep-sequence-bigrams:
    type: boolean?
    inputBinding:
      prefix: --keep-sequence-bigrams
  save-text-in-source:
    type: boolean?
    inputBinding:
      prefix: --save-text-in-source
  encoding:
    type: string?
    inputBinding:
      prefix: --encoding
  token-regex:
    type: string?
    inputBinding:
      prefix: --token-regex
  print-output:
    type: boolean?
    inputBinding:
      prefix: --print-output

outputs:
  corpus:
    type: File
    outputBinding:
      glob: $(inputs.output)
