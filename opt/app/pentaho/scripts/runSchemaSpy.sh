#!/bin/bash
# Copyright 2015 Acumen Solutions, Inc.
# This script runs schema script
# Arguments
# %1 = Username
# %2 = Password + security token
# %3 = url
# %4 = object

java -cp ../schemaSpy/schemaSpy_5.0.0.jar\:../schemaSpy/force-metadata-jdbc-driver-2.2.jar net.sourceforge.schemaspy.Main -t force -u $1 -p $2 -norows -nohtml -o ../schema -db SCHEMA -connprops standard\\=false\;custom\\=false\;url\\=$3\;excludes\\=\;includes\\=$4;

#java -cp ../schemaSpy/schemaSpy_5.0.0.jar\:../schemaSpy/force-metadata-jdbc-driver-2.2.jar net.sourceforge.schemaspy.Main -t force -u jarrett.goldfedder\@cfpb.gov.ses.dev1 -p Me1inda\$12TQIkxRZo3dD9ZAr7PsUCnrEH -norows -nohtml -o ../schema -db SCHEMA -connprops standard\\=false\;custom\\=false\;url\\=https://cfpb2--dev1.cs32.my.salesforce.com/services/Soap/u/33.0\;includes\\=CONTACT;