All: 
	@echo "run command"
	awk -f biostats.awk biostats.csv

clean:
	rm *.o
