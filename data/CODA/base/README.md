# CODA
CODA is the world's first real-world self-driving corner case dataset of 1500 scenes (frames) containing nearly 6K corner cases.
CODA is split into a validation set of 1000 images and a test set of 500 images.
The validation set contains 4008 objects of 27 object categories, whereas the test set contains 1929 objects of 34 object categories, including 7 categories absent in the test set.
Currently, only the validation set is released.

## Validation set
Corner case annotations are stored in `val/corner_case.json` in COCO-compatible format.
Out of the 1000 scenes of the validation set, 717 are taken from ONCE, 89 are taken from nuScenes, and 194 are taken from KITTI.
Due to license issues, for nuScenes and KITTI, only corner case annotations and the correponding sample indices/tokens of the original datasets are provided (`val/kitti_indices.json` and `val/nuscenes_sample_tokens.json`).
For ONCE, in addition to corner case annotations, we also provide the front-view images captured by the camera named `cam03`.
The images taken from ONCE are named in the format of `[sequence_id]_[frame_id].jpg`, for example, `000001_1616005007200.jpg`.
The two identifiers (`sequence_id` and `frame_id`) can be used to extract other data (e.g., lidar point clouds) from the ONCE dataset if needed.