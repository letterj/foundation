#! /user/env python
#
# Used to load a bunch of data into a table in PostgreSQL

import sys
import psycopg2
import psycopg2.extras
import json

region = sys.argv[1]
vol_type = sys.argv[2]

# region, vol_type, uploaded, hash, network_bytes, network_write, read, compress
conn = None

conn = psycopg2.connect(
    host = 'localhost',
    database = 'snapmetrics'
    )

try:
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    for line in sys.stdin:
        data = line[:-1].split('{')
        data[1] = "{" + data[1]

        row = json.loads(data[1])
        row['region'] = region
        row['vol_type'] = vol_type

        fields = ', '.join(row.keys())
        values = ', '.join(['%%(%s)s' % x for x in row])
        query = 'INSERT INTO bk_metrics (%s) VALUES (%s)' % (fields, values)
        cur.execute(query, row)
        conn.commit();


except psycopg2.DatabaseError, e:
    print 'Error %s' % e
    sys.exit(1)

cur.close()
conn.close()

print region, vol_type

