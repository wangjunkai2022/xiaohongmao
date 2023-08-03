package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes4.dex */
public class DSAParameter extends ASN1Object {

    /* renamed from: g  reason: collision with root package name */
    ASN1Integer f91145g;

    /* renamed from: p  reason: collision with root package name */
    ASN1Integer f91146p;

    /* renamed from: q  reason: collision with root package name */
    ASN1Integer f91147q;

    public DSAParameter(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f91146p = new ASN1Integer(bigInteger);
        this.f91147q = new ASN1Integer(bigInteger2);
        this.f91145g = new ASN1Integer(bigInteger3);
    }

    private DSAParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f91146p = ASN1Integer.getInstance(objects.nextElement());
        this.f91147q = ASN1Integer.getInstance(objects.nextElement());
        this.f91145g = ASN1Integer.getInstance(objects.nextElement());
    }

    public static DSAParameter getInstance(Object obj) {
        if (obj instanceof DSAParameter) {
            return (DSAParameter) obj;
        }
        if (obj != null) {
            return new DSAParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DSAParameter getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z9));
    }

    public BigInteger getG() {
        return this.f91145g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f91146p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f91147q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        aSN1EncodableVector.add(this.f91146p);
        aSN1EncodableVector.add(this.f91147q);
        aSN1EncodableVector.add(this.f91145g);
        return new DERSequence(aSN1EncodableVector);
    }
}
