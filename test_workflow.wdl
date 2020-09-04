workflow test_wf {

	File A
	File B

	call test_task {
		input:
			A = A,
			B = B
	}
}

task test_task {

	File A
	File B

	command {
		echo ${A}
		echo ${B}
	}

	runtime {
		docker: "ubuntu"
	}
}
