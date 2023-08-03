package org.bouncycastle.math.ec;

/* loaded from: classes5.dex */
public abstract class AbstractECLookupTable implements ECLookupTable {
    @Override // org.bouncycastle.math.ec.ECLookupTable
    public ECPoint lookupVar(int i4) {
        return lookup(i4);
    }
}
