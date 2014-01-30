VERSION='0.2.0'
pauper_up() {
	ssh -t tommy@turret.local 'cd /home/tommy/fastly/pauper-env; ./start.sh';
	cd /Users/tommy/Projects/fastly/pauper-env;
	pauper setup_osx;
}

pauper_install() {
	cd /Users/tommy/Projects/fastly/Pauper;
	sudo gem build pauper.gemspec;
	sudo gem install pauper-$VERSION.gem;
	ssh -t tommy@turret.local "cd /home/tommy/fastly/Pauper; sudo gem install pauper-$VERSION.gem";
}

