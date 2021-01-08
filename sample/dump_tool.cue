package kube

import (
	"encoding/yaml"
	"tool/cli"
)

objects: [ for v in objectSets for x in v {x} ]

objectSets: [
	pod,
]

command: dump: {
	task: print: cli.Print & {
		text: yaml.MarshalStream(objects)
	}
}
