default:
	rm -f obj/demo
	gprbuild --target=arm-eabi --RTS=../../../ravenscar-sfp-rm46
	(cd obj; arm-eabi-objdump -d demo >demo.lst; arm-eabi-objdump -s demo >demo.dmp; cp demo demo.out; nm -an demo >demo.nm)
