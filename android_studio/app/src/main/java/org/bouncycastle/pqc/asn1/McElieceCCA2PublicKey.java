package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;

/* loaded from: classes5.dex */
public class McElieceCCA2PublicKey extends ASN1Object {
    private final AlgorithmIdentifier digest;

    /* renamed from: g  reason: collision with root package name */
    private final GF2Matrix f91484g;

    /* renamed from: n  reason: collision with root package name */
    private final int f91485n;

    /* renamed from: t  reason: collision with root package name */
    private final int f91486t;

    public McElieceCCA2PublicKey(int i4, int i10, GF2Matrix gF2Matrix, AlgorithmIdentifier algorithmIdentifier) {
        this.f91485n = i4;
        this.f91486t = i10;
        this.f91484g = new GF2Matrix(gF2Matrix.getEncoded());
        this.digest = algorithmIdentifier;
    }

    private McElieceCCA2PublicKey(ASN1Sequence aSN1Sequence) {
        this.f91485n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f91486t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.f91484g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
        this.digest = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(3));
    }

    public static McElieceCCA2PublicKey getInstance(Object obj) {
        if (obj instanceof McElieceCCA2PublicKey) {
            return (McElieceCCA2PublicKey) obj;
        }
        if (obj != null) {
            return new McElieceCCA2PublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public AlgorithmIdentifier getDigest() {
        return this.digest;
    }

    public GF2Matrix getG() {
        return this.f91484g;
    }

    public int getN() {
        return this.f91485n;
    }

    public int getT() {
        return this.f91486t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f91485n));
        aSN1EncodableVector.add(new ASN1Integer(this.f91486t));
        aSN1EncodableVector.add(new DEROctetString(this.f91484g.getEncoded()));
        aSN1EncodableVector.add(this.digest);
        return new DERSequence(aSN1EncodableVector);
    }
}
