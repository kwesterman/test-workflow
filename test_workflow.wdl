workflow test_wf {

	File A
	#File B
	File C

	call test_task {
		input:
			A = A,
			C = C
	}
}

task test_task {

	File A
	#File B
	File C

	command {
		echo ${A}
		echo ${C}
	}

	runtime {
		docker: "ubuntu"
	}
}
