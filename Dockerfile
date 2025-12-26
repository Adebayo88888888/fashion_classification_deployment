FROM public.ecr.aws/lambda/python:3.13

RUN pip install onnxruntime keras-image-helper numpy

# Create the models directory and copy the file into it
RUN mkdir -p models
COPY models/clothing-model-new.onnx clothing-model-new.onnx
COPY lambda_function.py ./

CMD ["lambda_function.lambda_handler"]

