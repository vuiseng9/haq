# Download pretrained mobilenetv2 for google drive
mv ~/mobilenetv2-150.pth.tar pretrained/imagenet/

# Pre-optimized models
# Follow instruction to create tree below, do checkout folder on MIT server
checkpoints/
├── mobilenetv2
│   └── qmobilenetv2_0.6_71.23.pth.tar
├── mobilenetv3
│   └── mobilenetv3small-f3be529c.pth
└── resnet50
    ├── resnet50_0.1_75.48.pth.tar
    └── resnet50_42_75.84.pth.tar

# Imagenet dataset linking
cd data
ln -sv /data/dataset/imagenet/ilsvrc2012/torchvision/ imagenet

# Create subset of train and val set, it refers to pre-determined 100 classes
python lib/utils/make_data.py

