package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes4.dex */
public class DHParameter extends ASN1Object {

    /* renamed from: g  reason: collision with root package name */
    ASN1Integer f91131g;

    /* renamed from: l  reason: collision with root package name */
    ASN1Integer f91132l;

    /* renamed from: p  reason: collision with root package name */
    ASN1Integer f91133p;

    public DHParameter(BigInteger bigInteger, BigInteger bigInteger2, int i4) {
        this.f91133p = new ASN1Integer(bigInteger);
        this.f91131g = new ASN1Integer(bigInteger2);
        this.f91132l = i4 != 0 ? new ASN1Integer(i4) : null;
    }

    private DHParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f91133p = ASN1Integer.getInstance(objects.nextElement());
        this.f91131g = ASN1Integer.getInstance(objects.nextElement());
        this.f91132l = objects.hasMoreElements() ? (ASN1Integer) objects.nextElement() : null;
    }

    public static DHParameter getInstance(Object obj) {
        if (obj instanceof DHParameter) {
            return (DHParameter) obj;
        }
        if (obj != null) {
            return new DHParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BigInteger getG() {
        return this.f91131g.getPositiveValue();
    }

    public BigInteger getL() {
        ASN1Integer aSN1Integer = this.f91132l;
        if (aSN1Integer == null) {
            return null;
        }
        return aSN1Integer.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f91133p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        aSN1EncodableVector.add(this.f91133p);
        aSN1EncodableVector.add(this.f91131g);
        if (getL() != null) {
            aSN1EncodableVector.add(this.f91132l);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
