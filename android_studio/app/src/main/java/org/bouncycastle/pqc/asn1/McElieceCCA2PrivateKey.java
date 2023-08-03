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
import org.bouncycastle.pqc.math.linearalgebra.GF2mField;
import org.bouncycastle.pqc.math.linearalgebra.Permutation;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* loaded from: classes5.dex */
public class McElieceCCA2PrivateKey extends ASN1Object {
    private AlgorithmIdentifier digest;
    private byte[] encField;
    private byte[] encGp;
    private byte[] encP;

    /* renamed from: k  reason: collision with root package name */
    private int f91482k;

    /* renamed from: n  reason: collision with root package name */
    private int f91483n;

    public McElieceCCA2PrivateKey(int i4, int i10, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, AlgorithmIdentifier algorithmIdentifier) {
        this.f91483n = i4;
        this.f91482k = i10;
        this.encField = gF2mField.getEncoded();
        this.encGp = polynomialGF2mSmallM.getEncoded();
        this.encP = permutation.getEncoded();
        this.digest = algorithmIdentifier;
    }

    private McElieceCCA2PrivateKey(ASN1Sequence aSN1Sequence) {
        this.f91483n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f91482k = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.encField = ((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets();
        this.encGp = ((ASN1OctetString) aSN1Sequence.getObjectAt(3)).getOctets();
        this.encP = ((ASN1OctetString) aSN1Sequence.getObjectAt(4)).getOctets();
        this.digest = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(5));
    }

    public static McElieceCCA2PrivateKey getInstance(Object obj) {
        if (obj instanceof McElieceCCA2PrivateKey) {
            return (McElieceCCA2PrivateKey) obj;
        }
        if (obj != null) {
            return new McElieceCCA2PrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public AlgorithmIdentifier getDigest() {
        return this.digest;
    }

    public GF2mField getField() {
        return new GF2mField(this.encField);
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return new PolynomialGF2mSmallM(getField(), this.encGp);
    }

    public int getK() {
        return this.f91482k;
    }

    public int getN() {
        return this.f91483n;
    }

    public Permutation getP() {
        return new Permutation(this.encP);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f91483n));
        aSN1EncodableVector.add(new ASN1Integer(this.f91482k));
        aSN1EncodableVector.add(new DEROctetString(this.encField));
        aSN1EncodableVector.add(new DEROctetString(this.encGp));
        aSN1EncodableVector.add(new DEROctetString(this.encP));
        aSN1EncodableVector.add(this.digest);
        return new DERSequence(aSN1EncodableVector);
    }
}
