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
import org.bouncycastle.pqc.math.linearalgebra.GF2mField;
import org.bouncycastle.pqc.math.linearalgebra.Permutation;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* loaded from: classes5.dex */
public class McEliecePrivateKey extends ASN1Object {
    private byte[] encField;
    private byte[] encGp;
    private byte[] encP1;
    private byte[] encP2;
    private byte[] encSInv;

    /* renamed from: k  reason: collision with root package name */
    private int f91487k;

    /* renamed from: n  reason: collision with root package name */
    private int f91488n;

    public McEliecePrivateKey(int i4, int i10, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, Permutation permutation2, GF2Matrix gF2Matrix) {
        this.f91488n = i4;
        this.f91487k = i10;
        this.encField = gF2mField.getEncoded();
        this.encGp = polynomialGF2mSmallM.getEncoded();
        this.encSInv = gF2Matrix.getEncoded();
        this.encP1 = permutation.getEncoded();
        this.encP2 = permutation2.getEncoded();
    }

    private McEliecePrivateKey(ASN1Sequence aSN1Sequence) {
        this.f91488n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f91487k = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.encField = ((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets();
        this.encGp = ((ASN1OctetString) aSN1Sequence.getObjectAt(3)).getOctets();
        this.encP1 = ((ASN1OctetString) aSN1Sequence.getObjectAt(4)).getOctets();
        this.encP2 = ((ASN1OctetString) aSN1Sequence.getObjectAt(5)).getOctets();
        this.encSInv = ((ASN1OctetString) aSN1Sequence.getObjectAt(6)).getOctets();
    }

    public static McEliecePrivateKey getInstance(Object obj) {
        if (obj instanceof McEliecePrivateKey) {
            return (McEliecePrivateKey) obj;
        }
        if (obj != null) {
            return new McEliecePrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2mField getField() {
        return new GF2mField(this.encField);
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return new PolynomialGF2mSmallM(getField(), this.encGp);
    }

    public int getK() {
        return this.f91487k;
    }

    public int getN() {
        return this.f91488n;
    }

    public Permutation getP1() {
        return new Permutation(this.encP1);
    }

    public Permutation getP2() {
        return new Permutation(this.encP2);
    }

    public GF2Matrix getSInv() {
        return new GF2Matrix(this.encSInv);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f91488n));
        aSN1EncodableVector.add(new ASN1Integer(this.f91487k));
        aSN1EncodableVector.add(new DEROctetString(this.encField));
        aSN1EncodableVector.add(new DEROctetString(this.encGp));
        aSN1EncodableVector.add(new DEROctetString(this.encP1));
        aSN1EncodableVector.add(new DEROctetString(this.encP2));
        aSN1EncodableVector.add(new DEROctetString(this.encSInv));
        return new DERSequence(aSN1EncodableVector);
    }
}
