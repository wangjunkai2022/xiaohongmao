package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class SecP521R1Curve extends ECCurve.AbstractFp {
    private static final int SECP521R1_DEFAULT_COORDS = 2;
    protected SecP521R1Point infinity;

    /* renamed from: q  reason: collision with root package name */
    public static final BigInteger f91452q = SecP521R1FieldElement.Q;
    private static final ECFieldElement[] SECP521R1_AFFINE_ZS = {new SecP521R1FieldElement(ECConstants.ONE)};

    public SecP521R1Curve() {
        super(f91452q);
        this.infinity = new SecP521R1Point(this, null, null);
        this.f91410a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f91411b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
        this.order = new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP521R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final int[] iArr = new int[i10 * 17 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat.copy(17, ((SecP521R1FieldElement) eCPoint.getRawXCoord()).f91453x, 0, iArr, i11);
            int i13 = i11 + 17;
            Nat.copy(17, ((SecP521R1FieldElement) eCPoint.getRawYCoord()).f91453x, 0, iArr, i13);
            i11 = i13 + 17;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP521R1Curve.1
            private ECPoint createPoint(int[] iArr2, int[] iArr3) {
                return SecP521R1Curve.this.createRawPoint(new SecP521R1FieldElement(iArr2), new SecP521R1FieldElement(iArr3), SecP521R1Curve.SECP521R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                int[] create = Nat.create(17);
                int[] create2 = Nat.create(17);
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    int i17 = ((i16 ^ i14) - 1) >> 31;
                    for (int i18 = 0; i18 < 17; i18++) {
                        int i19 = create[i18];
                        int[] iArr2 = iArr;
                        create[i18] = i19 ^ (iArr2[i15 + i18] & i17);
                        create2[i18] = create2[i18] ^ (iArr2[(i15 + 17) + i18] & i17);
                    }
                    i15 += 34;
                }
                return createPoint(create, create2);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                int[] create = Nat.create(17);
                int[] create2 = Nat.create(17);
                int i15 = i14 * 17 * 2;
                for (int i16 = 0; i16 < 17; i16++) {
                    int i17 = create[i16];
                    int[] iArr2 = iArr;
                    create[i16] = i17 ^ iArr2[i15 + i16];
                    create2[i16] = create2[i16] ^ iArr2[(i15 + 17) + i16];
                }
                return createPoint(create, create2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP521R1Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP521R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP521R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f91452q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f91452q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] create = Nat.create(17);
        SecP521R1Field.random(secureRandom, create);
        return new SecP521R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] create = Nat.create(17);
        SecP521R1Field.randomMult(secureRandom, create);
        return new SecP521R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 2;
    }
}
