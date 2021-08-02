# LLP-Experiments
Emerging jets at Long Lived Particle Experiments

This repository contains holds ATLAS triggering objects necessary for making sense of signal efficiencies of emerging jet Monte Carloevents, usually generated from `MadGraph` or `PYTHIA`. See [2103.08620](https://arxiv.org/abs/2103.08620) and [1502.05409
](https://arxiv.org/abs/1502.05409
) for further details on both the triggering stategies and dark showering models. Note that `PYTHIA` (> 8.226) includes the Hidden Valley module used for simulating dark showers. The objects are compiled alongside the `PYTHIA` makefile with `Root6`, `FASTJET3` plugin flags included. 
## Current Implementation:

 * Single & Multijet Triggers: let clustering using `FASTJET3`.
 * Lepton & Photon Triggers: isolation algorithm for tight and loose lepton candidates.
 * HT Triggers: seeded from single/multijet lower level trigger.
 * MET Trigger: both Topo-cluster style & Jet style methods.

## Current LLP Detectors Implemented

Within [Detector_sims](Detector_sims/) you'll find detector simulations written in `Mathematica` notebooks:
- [AL3X.nb](AL3X.nb) AL3X is a set of cyclindrical detectors at the ALICE experiment IP. Dimensions and specs based on https://arxiv.org/abs/1811.01995
- [ANUBIS.nb](ANUBIS.nb) ANUBIS is a transverse cyclindrical detector proposed at ATLAS or CMS. Dimensions and specs based on https://arxiv.org/abs/1909.13022
- [CODEXB.nb](CODEXB.nb) CODEXb is a transverse box detector proposed near the LHCb IP. Dimensions and specs based on https://arxiv.org/abs/1911.00481
- [FASE.nb](FASER.nb) FASER is a highly forward cyclindrical detector planed to be construced using the ATLAS IP. Dimensions and specs based on https://arxiv.org/abs/1901.04468
- [FORMOSA.nb](FORMOSA.nb) FORMOSA is a forward box detector using a LHC IP. Dimensions and specs based on https://arxiv.org/abs/2010.07941
- [MATHUSLA.nb](MATHUSLA.nb) MATHUSLA is a large transverse box detector placed above the ATLAS IP. Dimensions and specs based on https://arxiv.org/abs/1901.04040
- [SHIP.nb](SHIP.nb) SHIP is a fixed target oblate cyclindrical detector using the SPSS IP. Dimensions and specs based on https://arxiv.org/abs/2009.06003
- 
## Pythia Example

- With the proper MAKE script
```
make efftemp
```
- Run the example triggering script using model file `model_script_X.dat`
```
./efftemp model_script_X.dat 
```
## References

If you use this code, please cite our paper:

```
@article{Linthorne:2021oiz,
    author = "Linthorne, Dylan and Stolarski, Daniel",
    title = "{Triggering on Emerging Jets}",
    eprint = "2103.08620",
    archivePrefix = "arXiv",
    primaryClass = "hep-ph",
    month = "3",
    year = "2021"
}
```
