# prion-state-model
Models prion switching using state models

Prions can be induced and eliminated. This model is simple with few parameters to ensure that it can be fit to the data.

The most basic states are soluble (S) and aggregated (A), which are the basis of the two state model. 

If we assume Michaelis-Menten kinetics when the two states interconvert, we have as many parameters as the four state model. This is is the two state model with Michealis-Menten kinetics.

We may add the transiently aggregated state (TA) to the two state model, which is reversible aggregation of the soluble species, which could irreversibly be converted into the aggregated state. This is the three state model.

Similarly, if a transiently soluble (TS) state is added, it yields the four state model.

To minimize the number of variables, first order kinetics is assumed in all steps.
