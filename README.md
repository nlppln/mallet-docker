# mallet-docker

Docker container and [CWL specification](http://www.commonwl.org/) to use [mallet](http://mallet.cs.umass.edu/).

Mallet has different sub-commands. Currently, this repository contains CWL specifications of `import-dir` and `train-topics`.

To be able to use these tools in nlppln, do:

```python
from nlppln import WorkflowGenerator

with WorkflowGenerator() as wf:
	wf.load(step_file='https://raw.githubusercontent.com/nlppln/mallet-docker/master/import-dir.cwl')
	wf.load(step_file='https://raw.githubusercontent.com/nlppln/mallet-docker/master/train-topics.cwl')

	# add workflow inputs
	# add data processing steps

	corpus = wf.import_dir(input=..., output=...)

	diagnostics-out, evaluator-out, inferencer-out, outputDocTopics-out, outputModel-out, outputState-out, outputTopicDocs-out, outputTopicKeys-out, topicWordWeights-out, wordTopicCounts-out, xmlTopicPhraseReport-out, xmlTopicReport-out = wf.train_topics(input=corpus, outputState=...)

	# add more processing tools
	# add workflow outputs
	# save workflow to file
```

`train-topics` has many outputs. These are null, unless the name of the output is set through the corresponding input.

Also, because we want to have unique names for inputs and outputs, the CWL output names differ from the names Mallet uses. For example, `outputState` (input name) corresponds to `outputState-out` (output name).

Because we want to capture names of output files from the input, the input and output names in the CWL specifications have been converted to camelcase (a '-' in an input name is interpreted as 'minus' instead of 'dash').  

## Regex for space separated tokens

If you want to use custom tokenization, you can save your texts with space separated tokens, and then use the command with `--token-regex \S+` (or `--tokenRegex \\S+` if yu use the CWL specification). `\S+` matches anything not whitespace.

For non-western scripts, such as Arabic, the suggested regex is `'[\p{L}\p{M}]+'`, which includes unicode letters and marks.
