package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DLApplicationSpecific extends ASN1ApplicationSpecific {
    public DLApplicationSpecific(int i4, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i4, aSN1Encodable);
    }

    public DLApplicationSpecific(int i4, ASN1EncodableVector aSN1EncodableVector) {
        super(new DLTaggedObject(false, 64, i4, (ASN1Encodable) DLFactory.createSequence(aSN1EncodableVector)));
    }

    public DLApplicationSpecific(int i4, byte[] bArr) {
        super(new DLTaggedObject(false, 64, i4, (ASN1Encodable) new DEROctetString(bArr)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DLApplicationSpecific(ASN1TaggedObject aSN1TaggedObject) {
        super(aSN1TaggedObject);
    }

    public DLApplicationSpecific(boolean z9, int i4, ASN1Encodable aSN1Encodable) throws IOException {
        super(new DLTaggedObject(z9, 64, i4, aSN1Encodable));
    }

    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecific, org.bouncycastle.asn1.ASN1Primitive
    ASN1Primitive toDLObject() {
        return this;
    }
}
