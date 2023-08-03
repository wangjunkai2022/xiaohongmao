package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes5.dex */
public class FixedPointCombMultiplier extends AbstractECMultiplier {
    @Override // org.bouncycastle.math.ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        int combSize;
        ECCurve curve = eCPoint.getCurve();
        if (bigInteger.bitLength() <= FixedPointUtil.getCombSize(curve)) {
            FixedPointPreCompInfo precompute = FixedPointUtil.precompute(eCPoint);
            ECLookupTable lookupTable = precompute.getLookupTable();
            int width = precompute.getWidth();
            int i4 = ((combSize + width) - 1) / width;
            ECPoint infinity = curve.getInfinity();
            int i10 = width * i4;
            int[] fromBigInteger = Nat.fromBigInteger(i10, bigInteger);
            int i11 = i10 - 1;
            for (int i12 = 0; i12 < i4; i12++) {
                int i13 = 0;
                for (int i14 = i11 - i12; i14 >= 0; i14 -= i4) {
                    int i15 = fromBigInteger[i14 >>> 5] >>> (i14 & 31);
                    i13 = ((i13 ^ (i15 >>> 1)) << 1) ^ i15;
                }
                infinity = infinity.twicePlus(lookupTable.lookup(i13));
            }
            return infinity.add(precompute.getOffset());
        }
        throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
    }
}
