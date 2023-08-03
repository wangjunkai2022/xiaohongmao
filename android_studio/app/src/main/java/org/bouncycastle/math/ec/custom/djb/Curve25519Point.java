package org.bouncycastle.math.ec.custom.djb;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes5.dex */
public class Curve25519Point extends ECPoint.AbstractFp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f91423x;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f91424y;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.zs[0];
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) eCPoint.getXCoord();
        Curve25519FieldElement curve25519FieldElement5 = (Curve25519FieldElement) eCPoint.getYCoord();
        Curve25519FieldElement curve25519FieldElement6 = (Curve25519FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat256.createExt();
        int[] create = Nat256.create();
        int[] create2 = Nat256.create();
        int[] create3 = Nat256.create();
        boolean isOne = curve25519FieldElement3.isOne();
        if (isOne) {
            iArr = curve25519FieldElement4.f91428x;
            iArr2 = curve25519FieldElement5.f91428x;
        } else {
            Curve25519Field.square(curve25519FieldElement3.f91428x, create2);
            Curve25519Field.multiply(create2, curve25519FieldElement4.f91428x, create);
            Curve25519Field.multiply(create2, curve25519FieldElement3.f91428x, create2);
            Curve25519Field.multiply(create2, curve25519FieldElement5.f91428x, create2);
            iArr = create;
            iArr2 = create2;
        }
        boolean isOne2 = curve25519FieldElement6.isOne();
        if (isOne2) {
            iArr3 = curve25519FieldElement.f91428x;
            iArr4 = curve25519FieldElement2.f91428x;
        } else {
            Curve25519Field.square(curve25519FieldElement6.f91428x, create3);
            Curve25519Field.multiply(create3, curve25519FieldElement.f91428x, createExt);
            Curve25519Field.multiply(create3, curve25519FieldElement6.f91428x, create3);
            Curve25519Field.multiply(create3, curve25519FieldElement2.f91428x, create3);
            iArr3 = createExt;
            iArr4 = create3;
        }
        int[] create4 = Nat256.create();
        Curve25519Field.subtract(iArr3, iArr, create4);
        Curve25519Field.subtract(iArr4, iArr2, create);
        if (Nat256.isZero(create4)) {
            return Nat256.isZero(create) ? twice() : curve.getInfinity();
        }
        int[] create5 = Nat256.create();
        Curve25519Field.square(create4, create5);
        int[] create6 = Nat256.create();
        Curve25519Field.multiply(create5, create4, create6);
        Curve25519Field.multiply(create5, iArr3, create2);
        Curve25519Field.negate(create6, create6);
        Nat256.mul(iArr4, create6, createExt);
        Curve25519Field.reduce27(Nat256.addBothTo(create2, create2, create6), create6);
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(create3);
        Curve25519Field.square(create, curve25519FieldElement7.f91428x);
        int[] iArr5 = curve25519FieldElement7.f91428x;
        Curve25519Field.subtract(iArr5, create6, iArr5);
        Curve25519FieldElement curve25519FieldElement8 = new Curve25519FieldElement(create6);
        Curve25519Field.subtract(create2, curve25519FieldElement7.f91428x, curve25519FieldElement8.f91428x);
        Curve25519Field.multiplyAddToExt(curve25519FieldElement8.f91428x, create, createExt);
        Curve25519Field.reduce(createExt, curve25519FieldElement8.f91428x);
        Curve25519FieldElement curve25519FieldElement9 = new Curve25519FieldElement(create4);
        if (!isOne) {
            int[] iArr6 = curve25519FieldElement9.f91428x;
            Curve25519Field.multiply(iArr6, curve25519FieldElement3.f91428x, iArr6);
        }
        if (!isOne2) {
            int[] iArr7 = curve25519FieldElement9.f91428x;
            Curve25519Field.multiply(iArr7, curve25519FieldElement6.f91428x, iArr7);
        }
        return new Curve25519Point(curve, curve25519FieldElement7, curve25519FieldElement8, new ECFieldElement[]{curve25519FieldElement9, calculateJacobianModifiedW(curve25519FieldElement9, (isOne && isOne2) ? null : null)});
    }

    protected Curve25519FieldElement calculateJacobianModifiedW(Curve25519FieldElement curve25519FieldElement, int[] iArr) {
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) getCurve().getA();
        if (curve25519FieldElement.isOne()) {
            return curve25519FieldElement2;
        }
        Curve25519FieldElement curve25519FieldElement3 = new Curve25519FieldElement();
        if (iArr == null) {
            iArr = curve25519FieldElement3.f91428x;
            Curve25519Field.square(curve25519FieldElement.f91428x, iArr);
        }
        Curve25519Field.square(iArr, curve25519FieldElement3.f91428x);
        int[] iArr2 = curve25519FieldElement3.f91428x;
        Curve25519Field.multiply(iArr2, curve25519FieldElement2.f91428x, iArr2);
        return curve25519FieldElement3;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    protected ECPoint detach() {
        return new Curve25519Point(null, getAffineXCoord(), getAffineYCoord());
    }

    protected Curve25519FieldElement getJacobianModifiedW() {
        ECFieldElement[] eCFieldElementArr = this.zs;
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) eCFieldElementArr[1];
        if (curve25519FieldElement == null) {
            Curve25519FieldElement calculateJacobianModifiedW = calculateJacobianModifiedW((Curve25519FieldElement) eCFieldElementArr[0], null);
            eCFieldElementArr[1] = calculateJacobianModifiedW;
            return calculateJacobianModifiedW;
        }
        return curve25519FieldElement;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECFieldElement getZCoord(int i4) {
        return i4 == 1 ? getJacobianModifiedW() : super.getZCoord(i4);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new Curve25519Point(getCurve(), this.f91423x, this.f91424y.negate(), this.zs);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f91424y.isZero()) ? this : twiceJacobianModified(false).add(this);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        return this.f91424y.isZero() ? getCurve().getInfinity() : twiceJacobianModified(true);
    }

    protected Curve25519Point twiceJacobianModified(boolean z9) {
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f91423x;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f91424y;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.zs[0];
        Curve25519FieldElement jacobianModifiedW = getJacobianModifiedW();
        int[] create = Nat256.create();
        Curve25519Field.square(curve25519FieldElement.f91428x, create);
        Curve25519Field.reduce27(Nat256.addBothTo(create, create, create) + Nat256.addTo(jacobianModifiedW.f91428x, create), create);
        int[] create2 = Nat256.create();
        Curve25519Field.twice(curve25519FieldElement2.f91428x, create2);
        int[] create3 = Nat256.create();
        Curve25519Field.multiply(create2, curve25519FieldElement2.f91428x, create3);
        int[] create4 = Nat256.create();
        Curve25519Field.multiply(create3, curve25519FieldElement.f91428x, create4);
        Curve25519Field.twice(create4, create4);
        int[] create5 = Nat256.create();
        Curve25519Field.square(create3, create5);
        Curve25519Field.twice(create5, create5);
        Curve25519FieldElement curve25519FieldElement4 = new Curve25519FieldElement(create3);
        Curve25519Field.square(create, curve25519FieldElement4.f91428x);
        int[] iArr = curve25519FieldElement4.f91428x;
        Curve25519Field.subtract(iArr, create4, iArr);
        int[] iArr2 = curve25519FieldElement4.f91428x;
        Curve25519Field.subtract(iArr2, create4, iArr2);
        Curve25519FieldElement curve25519FieldElement5 = new Curve25519FieldElement(create4);
        Curve25519Field.subtract(create4, curve25519FieldElement4.f91428x, curve25519FieldElement5.f91428x);
        int[] iArr3 = curve25519FieldElement5.f91428x;
        Curve25519Field.multiply(iArr3, create, iArr3);
        int[] iArr4 = curve25519FieldElement5.f91428x;
        Curve25519Field.subtract(iArr4, create5, iArr4);
        Curve25519FieldElement curve25519FieldElement6 = new Curve25519FieldElement(create2);
        if (!Nat256.isOne(curve25519FieldElement3.f91428x)) {
            int[] iArr5 = curve25519FieldElement6.f91428x;
            Curve25519Field.multiply(iArr5, curve25519FieldElement3.f91428x, iArr5);
        }
        Curve25519FieldElement curve25519FieldElement7 = null;
        if (z9) {
            curve25519FieldElement7 = new Curve25519FieldElement(create5);
            int[] iArr6 = curve25519FieldElement7.f91428x;
            Curve25519Field.multiply(iArr6, jacobianModifiedW.f91428x, iArr6);
            int[] iArr7 = curve25519FieldElement7.f91428x;
            Curve25519Field.twice(iArr7, iArr7);
        }
        return new Curve25519Point(getCurve(), curve25519FieldElement4, curve25519FieldElement5, new ECFieldElement[]{curve25519FieldElement6, curve25519FieldElement7});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f91424y.isZero() ? eCPoint : twiceJacobianModified(false).add(eCPoint);
    }
}
