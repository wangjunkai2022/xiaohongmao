package org.bouncycastle.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes4.dex */
public class ElGamalParameter extends ASN1Object {

    /* renamed from: g  reason: collision with root package name */
    ASN1Integer f91129g;

    /* renamed from: p  reason: collision with root package name */
    ASN1Integer f91130p;

    public ElGamalParameter(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f91130p = new ASN1Integer(bigInteger);
        this.f91129g = new ASN1Integer(bigInteger2);
    }

    private ElGamalParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f91130p = (ASN1Integer) objects.nextElement();
        this.f91129g = (ASN1Integer) objects.nextElement();
    }

    public static ElGamalParameter getInstance(Object obj) {
        if (obj instanceof ElGamalParameter) {
            return (ElGamalParameter) obj;
        }
        if (obj != null) {
            return new ElGamalParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BigInteger getG() {
        return this.f91129g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f91130p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(this.f91130p);
        aSN1EncodableVector.add(this.f91129g);
        return new DERSequence(aSN1EncodableVector);
    }
}
