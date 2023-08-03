package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.WTauNafMultiplier;
import org.bouncycastle.math.raw.Nat448;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class SecT409K1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT409K1_AFFINE_ZS = {new SecT409FieldElement(ECConstants.ONE)};
    private static final int SECT409K1_DEFAULT_COORDS = 6;
    protected SecT409K1Point infinity;

    public SecT409K1Curve() {
        super(409, 87, 0, 0);
        this.infinity = new SecT409K1Point(this, null, null);
        this.f91410a = fromBigInteger(BigInteger.valueOf(0L));
        this.f91411b = fromBigInteger(BigInteger.valueOf(1L));
        this.order = new BigInteger(1, Hex.decodeStrict("7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"));
        this.cofactor = BigInteger.valueOf(4L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT409K1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final long[] jArr = new long[i10 * 7 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat448.copy64(((SecT409FieldElement) eCPoint.getRawXCoord()).f91461x, 0, jArr, i11);
            int i13 = i11 + 7;
            Nat448.copy64(((SecT409FieldElement) eCPoint.getRawYCoord()).f91461x, 0, jArr, i13);
            i11 = i13 + 7;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT409K1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT409K1Curve.this.createRawPoint(new SecT409FieldElement(jArr2), new SecT409FieldElement(jArr3), SecT409K1Curve.SECT409K1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                long[] create64 = Nat448.create64();
                long[] create642 = Nat448.create64();
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    long j4 = ((i16 ^ i14) - 1) >> 31;
                    for (int i17 = 0; i17 < 7; i17++) {
                        long j10 = create64[i17];
                        long[] jArr2 = jArr;
                        create64[i17] = j10 ^ (jArr2[i15 + i17] & j4);
                        create642[i17] = create642[i17] ^ (jArr2[(i15 + 7) + i17] & j4);
                    }
                    i15 += 14;
                }
                return createPoint(create64, create642);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                long[] create64 = Nat448.create64();
                long[] create642 = Nat448.create64();
                int i15 = i14 * 7 * 2;
                for (int i16 = 0; i16 < 7; i16++) {
                    long[] jArr2 = jArr;
                    create64[i16] = jArr2[i15 + i16];
                    create642[i16] = jArr2[i15 + 7 + i16];
                }
                return createPoint(create64, create642);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECMultiplier createDefaultMultiplier() {
        return new WTauNafMultiplier();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT409K1Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT409K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT409FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 409;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 87;
    }

    public int getK2() {
        return 0;
    }

    public int getK3() {
        return 0;
    }

    public int getM() {
        return 409;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return true;
    }

    public boolean isTrinomial() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 6;
    }
}
