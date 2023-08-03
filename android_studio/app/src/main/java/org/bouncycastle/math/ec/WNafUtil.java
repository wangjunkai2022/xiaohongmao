package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public abstract class WNafUtil {
    private static final int[] DEFAULT_WINDOW_SIZE_CUTOFFS = {13, 41, 121, 337, 897, 2305};
    private static final byte[] EMPTY_BYTES = new byte[0];
    private static final int[] EMPTY_INTS = new int[0];
    private static final ECPoint[] EMPTY_POINTS = new ECPoint[0];
    private static final int MAX_WIDTH = 16;
    public static final String PRECOMP_NAME = "bc_wnaf";

    public static void configureBasepoint(ECPoint eCPoint) {
        ECCurve curve = eCPoint.getCurve();
        if (curve == null) {
            return;
        }
        BigInteger order = curve.getOrder();
        final int min = Math.min(16, getWindowSize(order == null ? curve.getFieldSize() + 1 : order.bitLength()) + 3);
        curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.1
            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                WNafPreCompInfo wNafPreCompInfo = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                if (wNafPreCompInfo != null && wNafPreCompInfo.getConfWidth() == min) {
                    wNafPreCompInfo.setPromotionCountdown(0);
                    return wNafPreCompInfo;
                }
                WNafPreCompInfo wNafPreCompInfo2 = new WNafPreCompInfo();
                wNafPreCompInfo2.setPromotionCountdown(0);
                wNafPreCompInfo2.setConfWidth(min);
                if (wNafPreCompInfo != null) {
                    wNafPreCompInfo2.setPreComp(wNafPreCompInfo.getPreComp());
                    wNafPreCompInfo2.setPreCompNeg(wNafPreCompInfo.getPreCompNeg());
                    wNafPreCompInfo2.setTwice(wNafPreCompInfo.getTwice());
                    wNafPreCompInfo2.setWidth(wNafPreCompInfo.getWidth());
                }
                return wNafPreCompInfo2;
            }
        });
    }

    public static int[] generateCompactNaf(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) == 0) {
            if (bigInteger.signum() == 0) {
                return EMPTY_INTS;
            }
            BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
            int bitLength = add.bitLength();
            int i4 = bitLength >> 1;
            int[] iArr = new int[i4];
            BigInteger xor = add.xor(bigInteger);
            int i10 = bitLength - 1;
            int i11 = 0;
            int i12 = 0;
            int i13 = 1;
            while (i13 < i10) {
                if (xor.testBit(i13)) {
                    iArr[i11] = i12 | ((bigInteger.testBit(i13) ? -1 : 1) << 16);
                    i13++;
                    i11++;
                    i12 = 1;
                } else {
                    i12++;
                }
                i13++;
            }
            int i14 = i11 + 1;
            iArr[i11] = 65536 | i12;
            return i4 > i14 ? trim(iArr, i14) : iArr;
        }
        throw new IllegalArgumentException("'k' must have bitlength < 2^16");
    }

    public static int[] generateCompactWindowNaf(int i4, BigInteger bigInteger) {
        if (i4 == 2) {
            return generateCompactNaf(bigInteger);
        }
        if (i4 < 2 || i4 > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        }
        if ((bigInteger.bitLength() >>> 16) == 0) {
            if (bigInteger.signum() == 0) {
                return EMPTY_INTS;
            }
            int bitLength = (bigInteger.bitLength() / i4) + 1;
            int[] iArr = new int[bitLength];
            int i10 = 1 << i4;
            int i11 = i10 - 1;
            int i12 = i10 >>> 1;
            int i13 = 0;
            int i14 = 0;
            boolean z9 = false;
            while (i13 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i13) == z9) {
                    i13++;
                } else {
                    bigInteger = bigInteger.shiftRight(i13);
                    int intValue = bigInteger.intValue() & i11;
                    if (z9) {
                        intValue++;
                    }
                    z9 = (intValue & i12) != 0;
                    if (z9) {
                        intValue -= i10;
                    }
                    if (i14 > 0) {
                        i13--;
                    }
                    iArr[i14] = i13 | (intValue << 16);
                    i13 = i4;
                    i14++;
                }
            }
            return bitLength > i14 ? trim(iArr, i14) : iArr;
        }
        throw new IllegalArgumentException("'k' must have bitlength < 2^16");
    }

    public static byte[] generateJSF(BigInteger bigInteger, BigInteger bigInteger2) {
        int max = Math.max(bigInteger.bitLength(), bigInteger2.bitLength()) + 1;
        byte[] bArr = new byte[max];
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if ((i4 | i10) == 0 && bigInteger.bitLength() <= i11 && bigInteger2.bitLength() <= i11) {
                break;
            }
            int intValue = ((bigInteger.intValue() >>> i11) + i4) & 7;
            int intValue2 = ((bigInteger2.intValue() >>> i11) + i10) & 7;
            int i13 = intValue & 1;
            if (i13 != 0) {
                i13 -= intValue & 2;
                if (intValue + i13 == 4 && (intValue2 & 3) == 2) {
                    i13 = -i13;
                }
            }
            int i14 = intValue2 & 1;
            if (i14 != 0) {
                i14 -= intValue2 & 2;
                if (intValue2 + i14 == 4 && (intValue & 3) == 2) {
                    i14 = -i14;
                }
            }
            if ((i4 << 1) == i13 + 1) {
                i4 ^= 1;
            }
            if ((i10 << 1) == i14 + 1) {
                i10 ^= 1;
            }
            i11++;
            if (i11 == 30) {
                bigInteger = bigInteger.shiftRight(30);
                bigInteger2 = bigInteger2.shiftRight(30);
                i11 = 0;
            }
            bArr[i12] = (byte) ((i13 << 4) | (i14 & 15));
            i12++;
        }
        return max > i12 ? trim(bArr, i12) : bArr;
    }

    public static byte[] generateNaf(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
        int bitLength = add.bitLength() - 1;
        byte[] bArr = new byte[bitLength];
        BigInteger xor = add.xor(bigInteger);
        int i4 = 1;
        while (i4 < bitLength) {
            if (xor.testBit(i4)) {
                bArr[i4 - 1] = (byte) (bigInteger.testBit(i4) ? -1 : 1);
                i4++;
            }
            i4++;
        }
        bArr[bitLength - 1] = 1;
        return bArr;
    }

    public static byte[] generateWindowNaf(int i4, BigInteger bigInteger) {
        if (i4 == 2) {
            return generateNaf(bigInteger);
        }
        if (i4 < 2 || i4 > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        }
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        int bitLength = bigInteger.bitLength() + 1;
        byte[] bArr = new byte[bitLength];
        int i10 = 1 << i4;
        int i11 = i10 - 1;
        int i12 = i10 >>> 1;
        int i13 = 0;
        int i14 = 0;
        boolean z9 = false;
        while (i13 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(i13) == z9) {
                i13++;
            } else {
                bigInteger = bigInteger.shiftRight(i13);
                int intValue = bigInteger.intValue() & i11;
                if (z9) {
                    intValue++;
                }
                z9 = (intValue & i12) != 0;
                if (z9) {
                    intValue -= i10;
                }
                if (i14 > 0) {
                    i13--;
                }
                int i15 = i14 + i13;
                bArr[i15] = (byte) intValue;
                i14 = i15 + 1;
                i13 = i4;
            }
        }
        return bitLength > i14 ? trim(bArr, i14) : bArr;
    }

    public static int getNafWeight(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static WNafPreCompInfo getWNafPreCompInfo(ECPoint eCPoint) {
        return getWNafPreCompInfo(eCPoint.getCurve().getPreCompInfo(eCPoint, PRECOMP_NAME));
    }

    public static WNafPreCompInfo getWNafPreCompInfo(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof WNafPreCompInfo) {
            return (WNafPreCompInfo) preCompInfo;
        }
        return null;
    }

    public static int getWindowSize(int i4) {
        return getWindowSize(i4, DEFAULT_WINDOW_SIZE_CUTOFFS, 16);
    }

    public static int getWindowSize(int i4, int i10) {
        return getWindowSize(i4, DEFAULT_WINDOW_SIZE_CUTOFFS, i10);
    }

    public static int getWindowSize(int i4, int[] iArr) {
        return getWindowSize(i4, iArr, 16);
    }

    public static int getWindowSize(int i4, int[] iArr, int i10) {
        int i11 = 0;
        while (i11 < iArr.length && i4 >= iArr[i11]) {
            i11++;
        }
        return Math.max(2, Math.min(i10, i11 + 2));
    }

    public static WNafPreCompInfo precompute(final ECPoint eCPoint, final int i4, final boolean z9) {
        final ECCurve curve = eCPoint.getCurve();
        return (WNafPreCompInfo) curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.2
            private boolean checkExisting(WNafPreCompInfo wNafPreCompInfo, int i10, int i11, boolean z10) {
                return wNafPreCompInfo != null && wNafPreCompInfo.getWidth() >= Math.max(wNafPreCompInfo.getConfWidth(), i10) && checkTable(wNafPreCompInfo.getPreComp(), i11) && (!z10 || checkTable(wNafPreCompInfo.getPreCompNeg(), i11));
            }

            private boolean checkTable(ECPoint[] eCPointArr, int i10) {
                return eCPointArr != null && eCPointArr.length >= i10;
            }

            /* JADX WARN: Removed duplicated region for block: B:47:0x00f2 A[LOOP:0: B:46:0x00f0->B:47:0x00f2, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:58:0x0117 A[LOOP:1: B:57:0x0115->B:58:0x0117, LOOP_END] */
            @Override // org.bouncycastle.math.ec.PreCompCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public org.bouncycastle.math.ec.PreCompInfo precompute(org.bouncycastle.math.ec.PreCompInfo r14) {
                /*
                    Method dump skipped, instructions count: 303
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.math.ec.WNafUtil.AnonymousClass2.precompute(org.bouncycastle.math.ec.PreCompInfo):org.bouncycastle.math.ec.PreCompInfo");
            }
        });
    }

    public static WNafPreCompInfo precomputeWithPointMap(ECPoint eCPoint, final ECPointMap eCPointMap, final WNafPreCompInfo wNafPreCompInfo, final boolean z9) {
        return (WNafPreCompInfo) eCPoint.getCurve().precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.3
            private boolean checkExisting(WNafPreCompInfo wNafPreCompInfo2, int i4, int i10, boolean z10) {
                return wNafPreCompInfo2 != null && wNafPreCompInfo2.getWidth() >= i4 && checkTable(wNafPreCompInfo2.getPreComp(), i10) && (!z10 || checkTable(wNafPreCompInfo2.getPreCompNeg(), i10));
            }

            private boolean checkTable(ECPoint[] eCPointArr, int i4) {
                return eCPointArr != null && eCPointArr.length >= i4;
            }

            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                WNafPreCompInfo wNafPreCompInfo2 = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                int width = WNafPreCompInfo.this.getWidth();
                if (checkExisting(wNafPreCompInfo2, width, WNafPreCompInfo.this.getPreComp().length, z9)) {
                    wNafPreCompInfo2.decrementPromotionCountdown();
                    return wNafPreCompInfo2;
                }
                WNafPreCompInfo wNafPreCompInfo3 = new WNafPreCompInfo();
                wNafPreCompInfo3.setPromotionCountdown(WNafPreCompInfo.this.getPromotionCountdown());
                ECPoint twice = WNafPreCompInfo.this.getTwice();
                if (twice != null) {
                    wNafPreCompInfo3.setTwice(eCPointMap.map(twice));
                }
                ECPoint[] preComp = WNafPreCompInfo.this.getPreComp();
                int length = preComp.length;
                ECPoint[] eCPointArr = new ECPoint[length];
                for (int i4 = 0; i4 < preComp.length; i4++) {
                    eCPointArr[i4] = eCPointMap.map(preComp[i4]);
                }
                wNafPreCompInfo3.setPreComp(eCPointArr);
                wNafPreCompInfo3.setWidth(width);
                if (z9) {
                    ECPoint[] eCPointArr2 = new ECPoint[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        eCPointArr2[i10] = eCPointArr[i10].negate();
                    }
                    wNafPreCompInfo3.setPreCompNeg(eCPointArr2);
                }
                return wNafPreCompInfo3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ECPoint[] resizeTable(ECPoint[] eCPointArr, int i4) {
        ECPoint[] eCPointArr2 = new ECPoint[i4];
        System.arraycopy(eCPointArr, 0, eCPointArr2, 0, eCPointArr.length);
        return eCPointArr2;
    }

    private static byte[] trim(byte[] bArr, int i4) {
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        return bArr2;
    }

    private static int[] trim(int[] iArr, int i4) {
        int[] iArr2 = new int[i4];
        System.arraycopy(iArr, 0, iArr2, 0, i4);
        return iArr2;
    }
}
