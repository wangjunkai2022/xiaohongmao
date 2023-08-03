package org.bouncycastle.asn1.x509;

import java.util.Vector;

/* loaded from: classes4.dex */
public class GeneralNamesBuilder {
    private Vector names = new Vector();

    public GeneralNamesBuilder addName(GeneralName generalName) {
        this.names.addElement(generalName);
        return this;
    }

    public GeneralNamesBuilder addNames(GeneralNames generalNames) {
        GeneralName[] names = generalNames.getNames();
        for (int i4 = 0; i4 != names.length; i4++) {
            this.names.addElement(names[i4]);
        }
        return this;
    }

    public GeneralNames build() {
        int size = this.names.size();
        GeneralName[] generalNameArr = new GeneralName[size];
        for (int i4 = 0; i4 != size; i4++) {
            generalNameArr[i4] = (GeneralName) this.names.elementAt(i4);
        }
        return new GeneralNames(generalNameArr);
    }
}
