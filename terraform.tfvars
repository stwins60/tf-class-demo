
environment = "dev"
bucket_names = {
    "demo-tf-2023-1" = {
      obj_create_resource = false
      bucket_name = "demo-tf-2023-1"
      # region = "us-east-1"
      obj_key = "/python/app.py"
      obj_source = "./python/app.py"
    },
  "demo-pipeline-test-23" = {
    obj_create_resource = false
    bucket_name = "demo-pipeline-test-23"
    # region = "us-east-2"
    obj_key    = "/python/main.py"
    obj_source = "./python/main.py"
  }
}
