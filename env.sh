docker run \
    --gpus all \
    --name long \
    --shm-size=10g \
    --ipc=host \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    -v /home/lucliu/projects/:/code/ \
    -e NCCL_P2P_LEVEL=NVL \
    -it nvcr.io/nvidia/pytorch:24.03-py3 
