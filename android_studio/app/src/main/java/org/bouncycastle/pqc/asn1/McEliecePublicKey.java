package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;

/* loaded from: classes5.dex */
public class McEliecePublicKey extends ASN1Object {

    /* renamed from: g  reason: collision with root package name */
    private final GF2Matrix f91489g;

    /* renamed from: n  reason: collision with root package name */
    private final int f91490n;

    /* renamed from: t  reason: collision with root package name */
    private final int f91491t;

    public McEliecePublicKey(int i4, int i10, GF2Matrix gF2Matrix) {
        this.f91490n = i4;
        this.f91491t = i10;
        this.f91489g = new GF2Matrix(gF2Matrix);
    }

    private McEliecePublicKey(ASN1Sequence aSN1Sequence) {
        this.f91490n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f91491t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.f91489g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
    }

    public static McEliecePublicKey getInstance(Object obj) {
        if (obj instanceof McEliecePublicKey) {
            return (McEliecePublicKey) obj;
        }
        if (obj != null) {
            return new McEliecePublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2Matrix getG() {
        return new GF2Matrix(this.f91489g);
    }

    public int getN() {
        return this.f91490n;
    }

    public int getT() {
        return this.f91491t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f91490n));
        aSN1EncodableVector.add(new ASN1Integer(this.f91491t));
        aSN1EncodableVector.add(new DEROctetString(this.f91489g.getEncoded()));
        return new DERSequence(aSN1EncodableVector);
    }
}
