package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.field.PolynomialExtensionField;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class X9ECParameters extends ASN1Object implements X9ObjectIdentifiers {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private ECCurve curve;
    private X9FieldID fieldID;

    /* renamed from: g  reason: collision with root package name */
    private X9ECPoint f91157g;

    /* renamed from: h  reason: collision with root package name */
    private BigInteger f91158h;

    /* renamed from: n  reason: collision with root package name */
    private BigInteger f91159n;
    private byte[] seed;

    private X9ECParameters(ASN1Sequence aSN1Sequence) {
        if (!(aSN1Sequence.getObjectAt(0) instanceof ASN1Integer) || !((ASN1Integer) aSN1Sequence.getObjectAt(0)).hasValue(1)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        this.f91159n = ((ASN1Integer) aSN1Sequence.getObjectAt(4)).getValue();
        if (aSN1Sequence.size() == 6) {
            this.f91158h = ((ASN1Integer) aSN1Sequence.getObjectAt(5)).getValue();
        }
        X9Curve x9Curve = new X9Curve(X9FieldID.getInstance(aSN1Sequence.getObjectAt(1)), this.f91159n, this.f91158h, ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(2)));
        this.curve = x9Curve.getCurve();
        ASN1Encodable objectAt = aSN1Sequence.getObjectAt(3);
        if (objectAt instanceof X9ECPoint) {
            this.f91157g = (X9ECPoint) objectAt;
        } else {
            this.f91157g = new X9ECPoint(this.curve, (ASN1OctetString) objectAt);
        }
        this.seed = x9Curve.getSeed();
    }

    public X9ECParameters(ECCurve eCCurve, X9ECPoint x9ECPoint, BigInteger bigInteger) {
        this(eCCurve, x9ECPoint, bigInteger, null, null);
    }

    public X9ECParameters(ECCurve eCCurve, X9ECPoint x9ECPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, x9ECPoint, bigInteger, bigInteger2, null);
    }

    public X9ECParameters(ECCurve eCCurve, X9ECPoint x9ECPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        X9FieldID x9FieldID;
        this.curve = eCCurve;
        this.f91157g = x9ECPoint;
        this.f91159n = bigInteger;
        this.f91158h = bigInteger2;
        this.seed = Arrays.clone(bArr);
        if (ECAlgorithms.isFpCurve(eCCurve)) {
            x9FieldID = new X9FieldID(eCCurve.getField().getCharacteristic());
        } else if (!ECAlgorithms.isF2mCurve(eCCurve)) {
            throw new IllegalArgumentException("'curve' is of an unsupported type");
        } else {
            int[] exponentsPresent = ((PolynomialExtensionField) eCCurve.getField()).getMinimalPolynomial().getExponentsPresent();
            if (exponentsPresent.length == 3) {
                x9FieldID = new X9FieldID(exponentsPresent[2], exponentsPresent[1]);
            } else if (exponentsPresent.length != 5) {
                throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
            } else {
                x9FieldID = new X9FieldID(exponentsPresent[4], exponentsPresent[1], exponentsPresent[2], exponentsPresent[3]);
            }
        }
        this.fieldID = x9FieldID;
    }

    public static X9ECParameters getInstance(Object obj) {
        if (obj instanceof X9ECParameters) {
            return (X9ECParameters) obj;
        }
        if (obj != null) {
            return new X9ECParameters(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public X9ECPoint getBaseEntry() {
        return this.f91157g;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public X9Curve getCurveEntry() {
        return new X9Curve(this.curve, this.seed);
    }

    public X9FieldID getFieldIDEntry() {
        return this.fieldID;
    }

    public ECPoint getG() {
        return this.f91157g.getPoint();
    }

    public BigInteger getH() {
        return this.f91158h;
    }

    public BigInteger getN() {
        return this.f91159n;
    }

    public byte[] getSeed() {
        return Arrays.clone(this.seed);
    }

    public boolean hasSeed() {
        return this.seed != null;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(6);
        aSN1EncodableVector.add(new ASN1Integer(ONE));
        aSN1EncodableVector.add(this.fieldID);
        aSN1EncodableVector.add(new X9Curve(this.curve, this.seed));
        aSN1EncodableVector.add(this.f91157g);
        aSN1EncodableVector.add(new ASN1Integer(this.f91159n));
        if (this.f91158h != null) {
            aSN1EncodableVector.add(new ASN1Integer(this.f91158h));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
