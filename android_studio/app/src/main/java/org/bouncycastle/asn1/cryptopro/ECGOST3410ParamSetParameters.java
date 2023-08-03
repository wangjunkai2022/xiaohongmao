package org.bouncycastle.asn1.cryptopro;

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
public class ECGOST3410ParamSetParameters extends ASN1Object {

    /* renamed from: a  reason: collision with root package name */
    ASN1Integer f91120a;

    /* renamed from: b  reason: collision with root package name */
    ASN1Integer f91121b;

    /* renamed from: p  reason: collision with root package name */
    ASN1Integer f91122p;

    /* renamed from: q  reason: collision with root package name */
    ASN1Integer f91123q;

    /* renamed from: x  reason: collision with root package name */
    ASN1Integer f91124x;

    /* renamed from: y  reason: collision with root package name */
    ASN1Integer f91125y;

    public ECGOST3410ParamSetParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i4, BigInteger bigInteger5) {
        this.f91120a = new ASN1Integer(bigInteger);
        this.f91121b = new ASN1Integer(bigInteger2);
        this.f91122p = new ASN1Integer(bigInteger3);
        this.f91123q = new ASN1Integer(bigInteger4);
        this.f91124x = new ASN1Integer(i4);
        this.f91125y = new ASN1Integer(bigInteger5);
    }

    public ECGOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f91120a = (ASN1Integer) objects.nextElement();
        this.f91121b = (ASN1Integer) objects.nextElement();
        this.f91122p = (ASN1Integer) objects.nextElement();
        this.f91123q = (ASN1Integer) objects.nextElement();
        this.f91124x = (ASN1Integer) objects.nextElement();
        this.f91125y = (ASN1Integer) objects.nextElement();
    }

    public static ECGOST3410ParamSetParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof ECGOST3410ParamSetParameters)) {
            return (ECGOST3410ParamSetParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new ECGOST3410ParamSetParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static ECGOST3410ParamSetParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z9));
    }

    public BigInteger getA() {
        return this.f91120a.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f91122p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f91123q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(6);
        aSN1EncodableVector.add(this.f91120a);
        aSN1EncodableVector.add(this.f91121b);
        aSN1EncodableVector.add(this.f91122p);
        aSN1EncodableVector.add(this.f91123q);
        aSN1EncodableVector.add(this.f91124x);
        aSN1EncodableVector.add(this.f91125y);
        return new DERSequence(aSN1EncodableVector);
    }
}
