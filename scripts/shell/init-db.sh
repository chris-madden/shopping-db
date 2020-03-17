#!/bin/bash

# Build the shopping DB
psql -d shopping chris -f shopping-db.sql