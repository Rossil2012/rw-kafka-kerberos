CREATE TABLE IF NOT EXISTS src_keytab (foo varchar)
WITH (
   connector='kafka',
   topic='test-topic',
   properties.bootstrap.server='broker:9093',
   scan.startup.mode='earliest',
   properties.sasl.mechanism='GSSAPI',
   properties.sasl.kerberos.service.name='kafka',
   properties.security.protocol='SASL_PLAINTEXT',
   properties.sasl.kerberos.principal='kafka/zookeeper@KERBEROS',
   properties.sasl.kerberos.keytab='/keytab/kafka_client1.keytab'
) FORMAT PLAIN ENCODE JSON;

SELECT * FROM src_keytab;
