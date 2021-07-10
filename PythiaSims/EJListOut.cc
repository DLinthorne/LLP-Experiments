// Headers and Namespaces.
#include <iostream>
#include <fstream>
#include "Pythia8/Pythia.h"

using namespace Pythia8;
using namespace std;

// Let Pythia8:: be implicit.
int main(int argc, char* argv[]){

	//initialize pythia object
	Pythia pythia;

	//read from a file with pythia Flags,Parms,settings, etc. Most of 
	// the Hidden Valley settings are implicit and contained in the script.
	//pythia.readFile("ModB.dat");
	pythia.readFile("ModA.dat");

	int nEvent = pythia.mode("Main:numberOfEvents");

	pythia.init();

  ofstream Outputfile;
  Outputfile.open ("EJ8_1500_Test.dat");
  //Outputfile.open ("final_nodetector3.dat");
	Outputfile << "{";
	// start event loop 
  int ev_pass = 0;
	for (int iEvent = 0; iEvent < nEvent; ++iEvent) {
		if (!pythia.next()) continue;
    ev_pass++;
    if(ev_pass == 1) Outputfile << "{";
    else Outputfile << ",{";

    // start particle loop
    int particle_pass = 0;
		for (int i = 0; i < pythia.event.size(); ++i) {
      if((pythia.event[i].id() == 4900211) ||
		    (pythia.event[i].id() == 4900111) ){
        particle_pass++;
        if(particle_pass == 1) Outputfile << "{";
        else Outputfile << ",{";

        double theta =   pythia.event[i].theta();      
        double phi =   pythia.event[i].phi();      
        
        double px = pythia.event[i].px();
        double py = pythia.event[i].py();
        double pz = pythia.event[i].pz();
        double m = pythia.event[i].m();

        double boost = sqrt( pow2(px) + pow2(py) + pow2(pz))/m;

        Outputfile << theta <<","<< phi <<"," << boost;
        Outputfile << "}";
      }
    } 
    Outputfile << "}";
	}
  Outputfile << "}";
}
