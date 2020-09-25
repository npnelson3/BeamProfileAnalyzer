# BeamProfileAnalyzer
by Nick Nelson (<npnelson3@gmail.com>) and Ahtesham Khan

# Basic Features
This function analyzes 1D beam profiles. It will compute the left and right penumbra and half-widths at half-max. The outputs are the penumbra, half-widths at half-max and the field size. The function will normalize the dose data and compute the aforementioned quantities.

# Basic Usage
```matlab
[PenumbraL,PenumbraR,fwhmL,fwhmR,FieldSize] = BeamProfileAnalyzer(LateralData,DoseData)
```
