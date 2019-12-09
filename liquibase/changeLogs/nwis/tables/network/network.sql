create table if not exists ${NWIS_SCHEMA_NAME}.network
(network_id                              integer generated by default as identity (start with 1)
,network_code                            character varying (15)
,network_name                            character varying (255)
,primary key (network_id)
,constraint network_uk1 unique (network_code)
,constraint network_uk2 unique (network_name)
)