package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DERApplicationSpecific extends ASN1ApplicationSpecific {
    public DERApplicationSpecific(int i4, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i4, aSN1Encodable);
    }

    public DERApplicationSpecific(int i4, ASN1EncodableVector aSN1EncodableVector) {
        super(new DERTaggedObject(false, 64, i4, (ASN1Encodable) DERFactory.createSequence(aSN1EncodableVector)));
    }

    public DERApplicationSpecific(int i4, byte[] bArr) {
        super(new DERTaggedObject(false, 64, i4, (ASN1Encodable) new DEROctetString(bArr)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERApplicationSpecific(ASN1TaggedObject aSN1TaggedObject) {
        super(aSN1TaggedObject);
    }

    public DERApplicationSpecific(boolean z9, int i4, ASN1Encodable aSN1Encodable) throws IOException {
        super(new DERTaggedObject(z9, 64, i4, aSN1Encodable));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecific, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecific, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
