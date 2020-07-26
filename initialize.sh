#!/usr/bin/env bash
mongorestore -u admin -p underground --authenticationDatabase admin --db wmspoc /dump/wmspoc
