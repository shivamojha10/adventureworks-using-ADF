Using AWS S3, Azure Data Factory, Snowflake and PowerBI, we're making an end-to-end ELT pipeline.

For this implementation, we're using the Adventureworks dataset, provided by the Microsoft. It contains 7 CSVs, which are, in this project, are later transformed into 6 dimensions and 1 fact table.

Haven't loaded the JSONs for the datasets, but I can list the flow of data here.

S3 (7CSVs) -> Blob
Transformartion of datasets in Blob, using the Dataflow/Pipeline
Blob -> Snowflake
