package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat320;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class SecT283R1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT283R1_AFFINE_ZS = {new SecT283FieldElement(ECConstants.ONE)};
    private static final int SECT283R1_DEFAULT_COORDS = 6;
    protected SecT283R1Point infinity;

    public SecT283R1Curve() {
        super(283, 5, 7, 12);
        this.infinity = new SecT283R1Point(this, null, null);
        this.f91410a = fromBigInteger(BigInteger.valueOf(1L));
        this.f91411b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5")));
        this.order = new BigInteger(1, Hex.decodeStrict("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT283R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final long[] jArr = new long[i10 * 5 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat320.copy64(((SecT283FieldElement) eCPoint.getRawXCoord()).f91460x, 0, jArr, i11);
            int i13 = i11 + 5;
            Nat320.copy64(((SecT283FieldElement) eCPoint.getRawYCoord()).f91460x, 0, jArr, i13);
            i11 = i13 + 5;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT283R1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT283R1Curve.this.createRawPoint(new SecT283FieldElement(jArr2), new SecT283FieldElement(jArr3), SecT283R1Curve.SECT283R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                long[] create64 = Nat320.create64();
                long[] create642 = Nat320.create64();
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    long j4 = ((i16 ^ i14) - 1) >> 31;
                    for (int i17 = 0; i17 < 5; i17++) {
                        long j10 = create64[i17];
                        long[] jArr2 = jArr;
                        create64[i17] = j10 ^ (jArr2[i15 + i17] & j4);
                        create642[i17] = create642[i17] ^ (jArr2[(i15 + 5) + i17] & j4);
                    }
                    i15 += 10;
                }
                return createPoint(create64, create642);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                long[] create64 = Nat320.create64();
                long[] create642 = Nat320.create64();
                int i15 = i14 * 5 * 2;
                for (int i16 = 0; i16 < 5; i16++) {
                    long[] jArr2 = jArr;
                    create64[i16] = jArr2[i15 + i16];
                    create642[i16] = jArr2[i15 + 5 + i16];
                }
                return createPoint(create64, create642);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT283R1Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT283R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT283FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 283;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 5;
    }

    public int getK2() {
        return 7;
    }

    public int getK3() {
        return 12;
    }

    public int getM() {
        return 283;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return false;
    }

    public boolean isTrinomial() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 6;
    }
}
