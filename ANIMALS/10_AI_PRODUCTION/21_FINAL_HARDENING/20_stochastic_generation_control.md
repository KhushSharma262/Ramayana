# STOCHASTIC GENERATION CONTROL

AI generation is probabilistic.

Therefore:

Every generation receives a generation_id.

Where supported, record:
- seed
- sampler
- model version
- settings
- references
- reference weights
- prompt version
- negative prompt version
- preprocessing
- postprocessing

A different seed is a new generation.

A different model is a new generation.

A changed reference set is a new generation.

A changed prompt is a new generation.

A changed major processing stage is a new generation.

No stochastic output may silently replace an approved asset.
