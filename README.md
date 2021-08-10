# LLP-Experiments
Emerging jets at Long Lived Particle Experiments

## Current LLP Detectors Implemented

Within [Detector_sims](Detector_sims/) you'll find detector simulations written in `Mathematica` notebooks:
- [AL3X.nb](AL3X.nb) AL3X is a set of cyclindrical detectors at the ALICE experiment IP. Specs based on https://arxiv.org/abs/1811.01995
- [ANUBIS.nb](ANUBIS.nb) ANUBIS is a transverse cyclindrical detector proposed at ATLAS or CMS. Specs based on https://arxiv.org/abs/1909.13022
- [CODEXB.nb](CODEXB.nb) CODEXb is a transverse box detector proposed near the LHCb IP. Specs based on https://arxiv.org/abs/1911.00481
- [FASER.nb](FASER.nb) FASER is a highly forward cyclindrical detector planed at the ATLAS IP. Specs based on https://arxiv.org/abs/1901.04468
- [FORMOSA.nb](FORMOSA.nb) FORMOSA is a forward box detector using a LHC IP. Specs based on https://arxiv.org/abs/2010.07941
- [MATHUSLA.nb](MATHUSLA.nb) MATHUSLA is a large transverse box detector above the ATLAS IP. Specs based on https://arxiv.org/abs/1901.04040
- [SHIP.nb](SHIP.nb) SHIP is a fixed target oblate cyclindrical detector using the SPSS IP. Specs based on https://arxiv.org/abs/2009.06003

## t-channel production
Within [Feynrules](Feynrules/) you'll find A t-channel production model file used for proper forward scattering where the dark and visible sectors interact through a new scalar bi-fundamental.

The bi-fundamentals are denoted with su11, su12, su21, su22..., where u etc explicitly specifies the QCD flavour index and the numbers are the explicit dark non-Abelian group indices. Similarly, the dark quarks are labeled as qv11, qv12, qv21, qv22.



## Pythia Example

- With the proper MAKE script
```
make EJListOut
```
- Run the script using model file `model_script_X.dat`
```
./EJListOut model_script_X.dat 
```
## References

If you use this code, please cite our paper:

```
Soon to come
```
