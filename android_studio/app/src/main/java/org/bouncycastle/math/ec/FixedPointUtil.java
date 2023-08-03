package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public class FixedPointUtil {
    public static final String PRECOMP_NAME = "bc_fixed_point";

    public static int getCombSize(ECCurve eCCurve) {
        BigInteger order = eCCurve.getOrder();
        return order == null ? eCCurve.getFieldSize() + 1 : order.bitLength();
    }

    public static FixedPointPreCompInfo getFixedPointPreCompInfo(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof FixedPointPreCompInfo) {
            return (FixedPointPreCompInfo) preCompInfo;
        }
        return null;
    }

    public static FixedPointPreCompInfo precompute(final ECPoint eCPoint) {
        final ECCurve curve = eCPoint.getCurve();
        return (FixedPointPreCompInfo) curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.FixedPointUtil.1
            private boolean checkExisting(FixedPointPreCompInfo fixedPointPreCompInfo, int i4) {
                return fixedPointPreCompInfo != null && checkTable(fixedPointPreCompInfo.getLookupTable(), i4);
            }

            private boolean checkTable(ECLookupTable eCLookupTable, int i4) {
                return eCLookupTable != null && eCLookupTable.getSize() >= i4;
            }

            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                FixedPointPreCompInfo fixedPointPreCompInfo = preCompInfo instanceof FixedPointPreCompInfo ? (FixedPointPreCompInfo) preCompInfo : null;
                int combSize = FixedPointUtil.getCombSize(ECCurve.this);
                int i4 = combSize > 250 ? 6 : 5;
                int i10 = 1 << i4;
                if (checkExisting(fixedPointPreCompInfo, i10)) {
                    return fixedPointPreCompInfo;
                }
                int i11 = ((combSize + i4) - 1) / i4;
                ECPoint[] eCPointArr = new ECPoint[i4 + 1];
                eCPointArr[0] = eCPoint;
                for (int i12 = 1; i12 < i4; i12++) {
                    eCPointArr[i12] = eCPointArr[i12 - 1].timesPow2(i11);
                }
                eCPointArr[i4] = eCPointArr[0].subtract(eCPointArr[1]);
                ECCurve.this.normalizeAll(eCPointArr);
                ECPoint[] eCPointArr2 = new ECPoint[i10];
                eCPointArr2[0] = eCPointArr[0];
                for (int i13 = i4 - 1; i13 >= 0; i13--) {
                    ECPoint eCPoint2 = eCPointArr[i13];
                    int i14 = 1 << i13;
                    for (int i15 = i14; i15 < i10; i15 += i14 << 1) {
                        eCPointArr2[i15] = eCPointArr2[i15 - i14].add(eCPoint2);
                    }
                }
                ECCurve.this.normalizeAll(eCPointArr2);
                FixedPointPreCompInfo fixedPointPreCompInfo2 = new FixedPointPreCompInfo();
                fixedPointPreCompInfo2.setLookupTable(ECCurve.this.createCacheSafeLookupTable(eCPointArr2, 0, i10));
                fixedPointPreCompInfo2.setOffset(eCPointArr[i4]);
                fixedPointPreCompInfo2.setWidth(i4);
                return fixedPointPreCompInfo2;
            }
        });
    }
}
