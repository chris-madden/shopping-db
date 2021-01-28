#!/bin/bash

# Build the shopping DB
psql -d shopping postgres -f shopping-db.sql