package org.bouncycastle.math.ec;

/* loaded from: classes5.dex */
public class SimpleLookupTable extends AbstractECLookupTable {
    private final ECPoint[] points;

    public SimpleLookupTable(ECPoint[] eCPointArr, int i4, int i10) {
        this.points = copy(eCPointArr, i4, i10);
    }

    private static ECPoint[] copy(ECPoint[] eCPointArr, int i4, int i10) {
        ECPoint[] eCPointArr2 = new ECPoint[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            eCPointArr2[i11] = eCPointArr[i4 + i11];
        }
        return eCPointArr2;
    }

    @Override // org.bouncycastle.math.ec.ECLookupTable
    public int getSize() {
        return this.points.length;
    }

    @Override // org.bouncycastle.math.ec.ECLookupTable
    public ECPoint lookup(int i4) {
        throw new UnsupportedOperationException("Constant-time lookup not supported");
    }

    @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
    public ECPoint lookupVar(int i4) {
        return this.points[i4];
    }
}
