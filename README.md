# mallet-docker

**Please note that the Dockerfile is an example and should still be adapted to
the current use case.** Carefully check installed software, script names and
Python versions, etc.

After making the required changes to mallet.cwl, the
Dockerfile, and adding necessary additional files, build the Docker container
by doing:
```bash
docker build -t nlppln/mallet-docker .
```

To test your cwl command line tool, type:
```bash
cwltool mallet.cwl.cwl <inputs>
```

---

Docker container and [CWL specification](http://www.commonwl.org/) to use [mallet](http://mallet.cs.umass.edu/).

To be able to use this tool in nlppln, do:

```python
from nlppln import WorkflowGenerator

with WorkflowGenerator() as wf:
	wf.load(step_file='https://raw.githubusercontent.com/nlppln/mallet-docker/master/mallet.cwl')

	# add workflow inputs
	# add data processing steps

	out_file = wf.mallet.cwl(<inp=inp>)

	# add more processing tools
	# add workflow outputs
	# save workflow to file
```
