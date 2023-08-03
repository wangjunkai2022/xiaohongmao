package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class SecT233R1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT233R1_AFFINE_ZS = {new SecT233FieldElement(ECConstants.ONE)};
    private static final int SECT233R1_DEFAULT_COORDS = 6;
    protected SecT233R1Point infinity;

    public SecT233R1Curve() {
        super(233, 74, 0, 0);
        this.infinity = new SecT233R1Point(this, null, null);
        this.f91410a = fromBigInteger(BigInteger.valueOf(1L));
        this.f91411b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD")));
        this.order = new BigInteger(1, Hex.decodeStrict("01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT233R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final long[] jArr = new long[i10 * 4 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat256.copy64(((SecT233FieldElement) eCPoint.getRawXCoord()).f91458x, 0, jArr, i11);
            int i13 = i11 + 4;
            Nat256.copy64(((SecT233FieldElement) eCPoint.getRawYCoord()).f91458x, 0, jArr, i13);
            i11 = i13 + 4;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT233R1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT233R1Curve.this.createRawPoint(new SecT233FieldElement(jArr2), new SecT233FieldElement(jArr3), SecT233R1Curve.SECT233R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                long[] create64 = Nat256.create64();
                long[] create642 = Nat256.create64();
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    long j4 = ((i16 ^ i14) - 1) >> 31;
                    for (int i17 = 0; i17 < 4; i17++) {
                        long j10 = create64[i17];
                        long[] jArr2 = jArr;
                        create64[i17] = j10 ^ (jArr2[i15 + i17] & j4);
                        create642[i17] = create642[i17] ^ (jArr2[(i15 + 4) + i17] & j4);
                    }
                    i15 += 8;
                }
                return createPoint(create64, create642);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                long[] create64 = Nat256.create64();
                long[] create642 = Nat256.create64();
                int i15 = i14 * 4 * 2;
                for (int i16 = 0; i16 < 4; i16++) {
                    long[] jArr2 = jArr;
                    create64[i16] = jArr2[i15 + i16];
                    create642[i16] = jArr2[i15 + 4 + i16];
                }
                return createPoint(create64, create642);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT233R1Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT233R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT233FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 233;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 74;
    }

    public int getK2() {
        return 0;
    }

    public int getK3() {
        return 0;
    }

    public int getM() {
        return 233;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return false;
    }

    public boolean isTrinomial() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 6;
    }
}
