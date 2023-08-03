package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class SecP128R1Curve extends ECCurve.AbstractFp {
    private static final int SECP128R1_DEFAULT_COORDS = 2;
    protected SecP128R1Point infinity;

    /* renamed from: q  reason: collision with root package name */
    public static final BigInteger f91431q = SecP128R1FieldElement.Q;
    private static final ECFieldElement[] SECP128R1_AFFINE_ZS = {new SecP128R1FieldElement(ECConstants.ONE)};

    public SecP128R1Curve() {
        super(f91431q);
        this.infinity = new SecP128R1Point(this, null, null);
        this.f91410a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f91411b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("E87579C11079F43DD824993C2CEE5ED3")));
        this.order = new BigInteger(1, Hex.decodeStrict("FFFFFFFE0000000075A30D1B9038A115"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP128R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int i4, final int i10) {
        final int[] iArr = new int[i10 * 4 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            ECPoint eCPoint = eCPointArr[i4 + i12];
            Nat128.copy(((SecP128R1FieldElement) eCPoint.getRawXCoord()).f91432x, 0, iArr, i11);
            int i13 = i11 + 4;
            Nat128.copy(((SecP128R1FieldElement) eCPoint.getRawYCoord()).f91432x, 0, iArr, i13);
            i11 = i13 + 4;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP128R1Curve.1
            private ECPoint createPoint(int[] iArr2, int[] iArr3) {
                return SecP128R1Curve.this.createRawPoint(new SecP128R1FieldElement(iArr2), new SecP128R1FieldElement(iArr3), SecP128R1Curve.SECP128R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return i10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int i14) {
                int[] create = Nat128.create();
                int[] create2 = Nat128.create();
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    int i17 = ((i16 ^ i14) - 1) >> 31;
                    for (int i18 = 0; i18 < 4; i18++) {
                        int i19 = create[i18];
                        int[] iArr2 = iArr;
                        create[i18] = i19 ^ (iArr2[i15 + i18] & i17);
                        create2[i18] = create2[i18] ^ (iArr2[(i15 + 4) + i18] & i17);
                    }
                    i15 += 8;
                }
                return createPoint(create, create2);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int i14) {
                int[] create = Nat128.create();
                int[] create2 = Nat128.create();
                int i15 = i14 * 4 * 2;
                for (int i16 = 0; i16 < 4; i16++) {
                    int[] iArr2 = iArr;
                    create[i16] = iArr2[i15 + i16];
                    create2[i16] = iArr2[i15 + 4 + i16];
                }
                return createPoint(create, create2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP128R1Point(this, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP128R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP128R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f91431q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f91431q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] create = Nat128.create();
        SecP128R1Field.random(secureRandom, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] create = Nat128.create();
        SecP128R1Field.randomMult(secureRandom, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int i4) {
        return i4 == 2;
    }
}
