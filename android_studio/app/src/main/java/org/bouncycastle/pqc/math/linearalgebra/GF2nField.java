package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

/* loaded from: classes5.dex */
public abstract class GF2nField {
    protected GF2Polynomial fieldPolynomial;
    protected java.util.Vector fields;
    protected int mDegree;
    protected java.util.Vector matrices;
    protected final SecureRandom random;

    /* JADX INFO: Access modifiers changed from: protected */
    public GF2nField(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void computeCOBMatrix(GF2nField gF2nField);

    protected abstract void computeFieldPolynomial();

    public final GF2nElement convert(GF2nElement gF2nElement, GF2nField gF2nField) throws RuntimeException {
        if (gF2nField == this || this.fieldPolynomial.equals(gF2nField.fieldPolynomial)) {
            return (GF2nElement) gF2nElement.clone();
        }
        if (this.mDegree == gF2nField.mDegree) {
            int indexOf = this.fields.indexOf(gF2nField);
            if (indexOf == -1) {
                computeCOBMatrix(gF2nField);
                indexOf = this.fields.indexOf(gF2nField);
            }
            GF2Polynomial[] gF2PolynomialArr = (GF2Polynomial[]) this.matrices.elementAt(indexOf);
            GF2nElement gF2nElement2 = (GF2nElement) gF2nElement.clone();
            if (gF2nElement2 instanceof GF2nONBElement) {
                ((GF2nONBElement) gF2nElement2).reverseOrder();
            }
            GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree, gF2nElement2.toFlexiBigInt());
            gF2Polynomial.expandN(this.mDegree);
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree);
            for (int i4 = 0; i4 < this.mDegree; i4++) {
                if (gF2Polynomial.vectorMult(gF2PolynomialArr[i4])) {
                    gF2Polynomial2.setBit((this.mDegree - 1) - i4);
                }
            }
            if (gF2nField instanceof GF2nPolynomialField) {
                return new GF2nPolynomialElement((GF2nPolynomialField) gF2nField, gF2Polynomial2);
            }
            if (gF2nField instanceof GF2nONBField) {
                GF2nONBElement gF2nONBElement = new GF2nONBElement((GF2nONBField) gF2nField, gF2Polynomial2.toFlexiBigInt());
                gF2nONBElement.reverseOrder();
                return gF2nONBElement;
            }
            throw new RuntimeException("GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!");
        }
        throw new RuntimeException("GF2nField.convert: B1 has a different degree and thus cannot be coverted to!");
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nField)) {
            return false;
        }
        GF2nField gF2nField = (GF2nField) obj;
        if (gF2nField.mDegree == this.mDegree && this.fieldPolynomial.equals(gF2nField.fieldPolynomial)) {
            if (!(this instanceof GF2nPolynomialField) || (gF2nField instanceof GF2nPolynomialField)) {
                return !(this instanceof GF2nONBField) || (gF2nField instanceof GF2nONBField);
            }
            return false;
        }
        return false;
    }

    public final int getDegree() {
        return this.mDegree;
    }

    public final GF2Polynomial getFieldPolynomial() {
        if (this.fieldPolynomial == null) {
            computeFieldPolynomial();
        }
        return new GF2Polynomial(this.fieldPolynomial);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial);

    public int hashCode() {
        return this.mDegree + this.fieldPolynomial.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final GF2Polynomial[] invertMatrix(GF2Polynomial[] gF2PolynomialArr) {
        GF2Polynomial[] gF2PolynomialArr2 = new GF2Polynomial[gF2PolynomialArr.length];
        GF2Polynomial[] gF2PolynomialArr3 = new GF2Polynomial[gF2PolynomialArr.length];
        int i4 = 0;
        for (int i10 = 0; i10 < this.mDegree; i10++) {
            gF2PolynomialArr2[i10] = new GF2Polynomial(gF2PolynomialArr[i10]);
            gF2PolynomialArr3[i10] = new GF2Polynomial(this.mDegree);
            gF2PolynomialArr3[i10].setBit((this.mDegree - 1) - i10);
        }
        while (true) {
            int i11 = this.mDegree;
            if (i4 >= i11 - 1) {
                for (int i12 = i11 - 1; i12 > 0; i12--) {
                    for (int i13 = i12 - 1; i13 >= 0; i13--) {
                        if (gF2PolynomialArr2[i13].testBit((this.mDegree - 1) - i12)) {
                            gF2PolynomialArr2[i13].addToThis(gF2PolynomialArr2[i12]);
                            gF2PolynomialArr3[i13].addToThis(gF2PolynomialArr3[i12]);
                        }
                    }
                }
                return gF2PolynomialArr3;
            }
            int i14 = i4;
            while (true) {
                int i15 = this.mDegree;
                if (i14 >= i15 || gF2PolynomialArr2[i14].testBit((i15 - 1) - i4)) {
                    break;
                }
                i14++;
            }
            if (i14 >= this.mDegree) {
                throw new RuntimeException("GF2nField.invertMatrix: Matrix cannot be inverted!");
            }
            if (i4 != i14) {
                GF2Polynomial gF2Polynomial = gF2PolynomialArr2[i4];
                gF2PolynomialArr2[i4] = gF2PolynomialArr2[i14];
                gF2PolynomialArr2[i14] = gF2Polynomial;
                GF2Polynomial gF2Polynomial2 = gF2PolynomialArr3[i4];
                gF2PolynomialArr3[i4] = gF2PolynomialArr3[i14];
                gF2PolynomialArr3[i14] = gF2Polynomial2;
            }
            int i16 = i4 + 1;
            int i17 = i16;
            while (true) {
                int i18 = this.mDegree;
                if (i17 < i18) {
                    if (gF2PolynomialArr2[i17].testBit((i18 - 1) - i4)) {
                        gF2PolynomialArr2[i17].addToThis(gF2PolynomialArr2[i4]);
                        gF2PolynomialArr3[i17].addToThis(gF2PolynomialArr3[i4]);
                    }
                    i17++;
                }
            }
            i4 = i16;
        }
    }
}
