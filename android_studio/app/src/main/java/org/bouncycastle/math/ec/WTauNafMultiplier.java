package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes5.dex */
public class WTauNafMultiplier extends AbstractECMultiplier {
    static final String PRECOMP_NAME = "bc_wtnaf";

    private static ECPoint.AbstractF2m multiplyFromWTnaf(final ECPoint.AbstractF2m abstractF2m, byte[] bArr) {
        ECCurve.AbstractF2m abstractF2m2 = (ECCurve.AbstractF2m) abstractF2m.getCurve();
        final byte byteValue = abstractF2m2.getA().toBigInteger().byteValue();
        ECPoint.AbstractF2m[] preComp = ((WTauNafPreCompInfo) abstractF2m2.precompute(abstractF2m, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WTauNafMultiplier.1
            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                if (preCompInfo instanceof WTauNafPreCompInfo) {
                    return preCompInfo;
                }
                WTauNafPreCompInfo wTauNafPreCompInfo = new WTauNafPreCompInfo();
                wTauNafPreCompInfo.setPreComp(Tnaf.getPreComp(ECPoint.AbstractF2m.this, byteValue));
                return wTauNafPreCompInfo;
            }
        })).getPreComp();
        ECPoint.AbstractF2m[] abstractF2mArr = new ECPoint.AbstractF2m[preComp.length];
        for (int i4 = 0; i4 < preComp.length; i4++) {
            abstractF2mArr[i4] = (ECPoint.AbstractF2m) preComp[i4].negate();
        }
        ECPoint.AbstractF2m abstractF2m3 = (ECPoint.AbstractF2m) abstractF2m.getCurve().getInfinity();
        int i10 = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i10++;
            byte b10 = bArr[length];
            if (b10 != 0) {
                abstractF2m3 = (ECPoint.AbstractF2m) abstractF2m3.tauPow(i10).add(b10 > 0 ? preComp[b10 >>> 1] : abstractF2mArr[(-b10) >>> 1]);
                i10 = 0;
            }
        }
        return i10 > 0 ? abstractF2m3.tauPow(i10) : abstractF2m3;
    }

    private ECPoint.AbstractF2m multiplyWTnaf(ECPoint.AbstractF2m abstractF2m, ZTauElement zTauElement, byte b10, byte b11) {
        ZTauElement[] zTauElementArr = b10 == 0 ? Tnaf.alpha0 : Tnaf.alpha1;
        return multiplyFromWTnaf(abstractF2m, Tnaf.tauAdicWNaf(b11, zTauElement, (byte) 4, BigInteger.valueOf(16L), Tnaf.getTw(b11, 4), zTauElementArr));
    }

    @Override // org.bouncycastle.math.ec.AbstractECMultiplier
    protected ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        if (eCPoint instanceof ECPoint.AbstractF2m) {
            ECPoint.AbstractF2m abstractF2m = (ECPoint.AbstractF2m) eCPoint;
            ECCurve.AbstractF2m abstractF2m2 = (ECCurve.AbstractF2m) abstractF2m.getCurve();
            int fieldSize = abstractF2m2.getFieldSize();
            byte byteValue = abstractF2m2.getA().toBigInteger().byteValue();
            byte mu = Tnaf.getMu(byteValue);
            return multiplyWTnaf(abstractF2m, Tnaf.partModReduction(bigInteger, fieldSize, byteValue, abstractF2m2.getSi(), mu, (byte) 10), byteValue, mu);
        }
        throw new IllegalArgumentException("Only ECPoint.AbstractF2m can be used in WTauNafMultiplier");
    }
}
