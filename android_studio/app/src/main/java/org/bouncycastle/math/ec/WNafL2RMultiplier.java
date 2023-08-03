package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.util.Integers;

/* loaded from: classes5.dex */
public class WNafL2RMultiplier extends AbstractECMultiplier {
    @Override // org.bouncycastle.math.ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint eCPoint2;
        WNafPreCompInfo precompute = WNafUtil.precompute(eCPoint, WNafUtil.getWindowSize(bigInteger.bitLength()), true);
        ECPoint[] preComp = precompute.getPreComp();
        ECPoint[] preCompNeg = precompute.getPreCompNeg();
        int width = precompute.getWidth();
        int[] generateCompactWindowNaf = WNafUtil.generateCompactWindowNaf(width, bigInteger);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int length = generateCompactWindowNaf.length;
        if (length > 1) {
            length--;
            int i4 = generateCompactWindowNaf[length];
            int i10 = i4 >> 16;
            int i11 = i4 & 65535;
            int abs = Math.abs(i10);
            ECPoint[] eCPointArr = i10 < 0 ? preCompNeg : preComp;
            if ((abs << 2) < (1 << width)) {
                int numberOfLeadingZeros = 32 - Integers.numberOfLeadingZeros(abs);
                int i12 = width - numberOfLeadingZeros;
                eCPoint2 = eCPointArr[((1 << (width - 1)) - 1) >>> 1].add(eCPointArr[(((abs ^ (1 << (numberOfLeadingZeros - 1))) << i12) + 1) >>> 1]);
                i11 -= i12;
            } else {
                eCPoint2 = eCPointArr[abs >>> 1];
            }
            infinity = eCPoint2.timesPow2(i11);
        }
        while (length > 0) {
            length--;
            int i13 = generateCompactWindowNaf[length];
            int i14 = i13 >> 16;
            infinity = infinity.twicePlus((i14 < 0 ? preCompNeg : preComp)[Math.abs(i14) >>> 1]).timesPow2(i13 & 65535);
        }
        return infinity;
    }
}
