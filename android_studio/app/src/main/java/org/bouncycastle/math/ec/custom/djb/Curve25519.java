package org.bouncycastle.math.ec.custom.djb;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class Curve25519 extends ECCurve.AbstractFp {
    private static final ECFieldElement[] CURVE25519_AFFINE_ZS;
    private static final int CURVE25519_DEFAULT_COORDS = 4;
    private static final BigInteger C_a;
    private static final BigInteger C_b;

    /* renamed from: q  reason: collision with root package name */
    public static final BigInteger f91427q = Curve25519FieldElement.Q;
    protected Curve25519Point infinity;

    static {
        BigInteger bigInteger = new BigInteger(1, Hex.decodeStrict("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144"));
        C_a = bigInteger;
        C_b = new BigInteger(1, Hex.decodeStrict("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864"));
        CURVE25519_AFFINE_ZS = new ECFieldElement[]{new Curve25519FieldElement(ECConstants.ONE), new Curve25519FieldElement(bigInteger)};
    }

    public Curve25519() {
        super(f91427q);
        this.infinity = new Curve25519Point(this, null, null);
        this.f91410a = fromBigInteger(C_a);
        this.f91411b = fromBigInteger(C_b);
        this.order = new BigInteger(1, Hex.decodeStrict("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
        this.cofactor = BigInteger.valueOf(8L);
        this.coord = 4;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new Curve25519();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final int[] iArr = new int[i10 * 8 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat256.copy(((Curve25519FieldElement) eCPoint.getRawXCoord()).f91428x, 0, iArr, i11);
            int i13 = i11 + 8;
            Nat256.copy(((Curve25519FieldElement) eCPoint.getRawYCoord()).f91428x, 0, iArr, i13);
            i11 = i13 + 8;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.djb.Curve25519.1
            private ECPoint createPoint(int[] iArr2, int[] iArr3) {
                return Curve25519.this.createRawPoint(new Curve25519FieldElement(iArr2), new Curve25519FieldElement(iArr3), Curve25519.CURVE25519_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                int[] create = Nat256.create();
                int[] create2 = Nat256.create();
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    int i17 = ((i16 ^ i14) - 1) >> 31;
                    for (int i18 = 0; i18 < 8; i18++) {
                        int i19 = create[i18];
                        int[] iArr2 = iArr;
                        create[i18] = i19 ^ (iArr2[i15 + i18] & i17);
                        create2[i18] = create2[i18] ^ (iArr2[(i15 + 8) + i18] & i17);
                    }
                    i15 += 16;
                }
                return createPoint(create, create2);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                int[] create = Nat256.create();
                int[] create2 = Nat256.create();
                int i15 = i14 * 8 * 2;
                for (int i16 = 0; i16 < 8; i16++) {
                    int[] iArr2 = iArr;
                    create[i16] = iArr2[i15 + i16];
                    create2[i16] = iArr2[i15 + 8 + i16];
                }
                return createPoint(create, create2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new Curve25519Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new Curve25519Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new Curve25519FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f91427q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f91427q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] create = Nat256.create();
        Curve25519Field.random(secureRandom, create);
        return new Curve25519FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] create = Nat256.create();
        Curve25519Field.randomMult(secureRandom, create);
        return new Curve25519FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 4;
    }
}
