package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class SecP160R1Curve extends ECCurve.AbstractFp {
    private static final int SECP160R1_DEFAULT_COORDS = 2;
    protected SecP160R1Point infinity;

    /* renamed from: q  reason: collision with root package name */
    public static final BigInteger f91434q = SecP160R1FieldElement.Q;
    private static final ECFieldElement[] SECP160R1_AFFINE_ZS = {new SecP160R1FieldElement(ECConstants.ONE)};

    public SecP160R1Curve() {
        super(f91434q);
        this.infinity = new SecP160R1Point(this, null, null);
        this.f91410a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC")));
        this.f91411b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45")));
        this.order = new BigInteger(1, Hex.decodeStrict("0100000000000000000001F4C8F927AED3CA752257"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP160R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final int[] iArr = new int[i10 * 5 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat160.copy(((SecP160R1FieldElement) eCPoint.getRawXCoord()).f91435x, 0, iArr, i11);
            int i13 = i11 + 5;
            Nat160.copy(((SecP160R1FieldElement) eCPoint.getRawYCoord()).f91435x, 0, iArr, i13);
            i11 = i13 + 5;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP160R1Curve.1
            private ECPoint createPoint(int[] iArr2, int[] iArr3) {
                return SecP160R1Curve.this.createRawPoint(new SecP160R1FieldElement(iArr2), new SecP160R1FieldElement(iArr3), SecP160R1Curve.SECP160R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                int[] create = Nat160.create();
                int[] create2 = Nat160.create();
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    int i17 = ((i16 ^ i14) - 1) >> 31;
                    for (int i18 = 0; i18 < 5; i18++) {
                        int i19 = create[i18];
                        int[] iArr2 = iArr;
                        create[i18] = i19 ^ (iArr2[i15 + i18] & i17);
                        create2[i18] = create2[i18] ^ (iArr2[(i15 + 5) + i18] & i17);
                    }
                    i15 += 10;
                }
                return createPoint(create, create2);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                int[] create = Nat160.create();
                int[] create2 = Nat160.create();
                int i15 = i14 * 5 * 2;
                for (int i16 = 0; i16 < 5; i16++) {
                    int[] iArr2 = iArr;
                    create[i16] = iArr2[i15 + i16];
                    create2[i16] = iArr2[i15 + 5 + i16];
                }
                return createPoint(create, create2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP160R1Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP160R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP160R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f91434q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f91434q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] create = Nat160.create();
        SecP160R1Field.random(secureRandom, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] create = Nat160.create();
        SecP160R1Field.randomMult(secureRandom, create);
        return new SecP160R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 2;
    }
}
