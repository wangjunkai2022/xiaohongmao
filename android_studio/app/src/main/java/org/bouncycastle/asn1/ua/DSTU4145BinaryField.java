package org.bouncycastle.asn1.ua;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes4.dex */
public class DSTU4145BinaryField extends ASN1Object {

    /* renamed from: j  reason: collision with root package name */
    private int f91134j;

    /* renamed from: k  reason: collision with root package name */
    private int f91135k;

    /* renamed from: l  reason: collision with root package name */
    private int f91136l;

    /* renamed from: m  reason: collision with root package name */
    private int f91137m;

    public DSTU4145BinaryField(int i4, int i10) {
        this(i4, i10, 0, 0);
    }

    public DSTU4145BinaryField(int i4, int i10, int i11, int i12) {
        this.f91137m = i4;
        this.f91135k = i10;
        this.f91134j = i11;
        this.f91136l = i12;
    }

    private DSTU4145BinaryField(ASN1Sequence aSN1Sequence) {
        this.f91137m = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).intPositiveValueExact();
        if (aSN1Sequence.getObjectAt(1) instanceof ASN1Integer) {
            this.f91135k = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intPositiveValueExact();
        } else if (!(aSN1Sequence.getObjectAt(1) instanceof ASN1Sequence)) {
            throw new IllegalArgumentException("object parse error");
        } else {
            ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(1));
            this.f91135k = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(0)).intPositiveValueExact();
            this.f91134j = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(1)).intPositiveValueExact();
            this.f91136l = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(2)).intPositiveValueExact();
        }
    }

    public static DSTU4145BinaryField getInstance(Object obj) {
        if (obj instanceof DSTU4145BinaryField) {
            return (DSTU4145BinaryField) obj;
        }
        if (obj != null) {
            return new DSTU4145BinaryField(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int getK1() {
        return this.f91135k;
    }

    public int getK2() {
        return this.f91134j;
    }

    public int getK3() {
        return this.f91136l;
    }

    public int getM() {
        return this.f91137m;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(new ASN1Integer(this.f91137m));
        if (this.f91134j == 0) {
            aSN1EncodableVector.add(new ASN1Integer(this.f91135k));
        } else {
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector(3);
            aSN1EncodableVector2.add(new ASN1Integer(this.f91135k));
            aSN1EncodableVector2.add(new ASN1Integer(this.f91134j));
            aSN1EncodableVector2.add(new ASN1Integer(this.f91136l));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
