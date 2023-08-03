package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class BERApplicationSpecific extends ASN1ApplicationSpecific {
    public BERApplicationSpecific(int i4, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i4, aSN1Encodable);
    }

    public BERApplicationSpecific(int i4, ASN1EncodableVector aSN1EncodableVector) {
        super(new BERTaggedObject(false, 64, i4, (ASN1Encodable) BERFactory.createSequence(aSN1EncodableVector)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BERApplicationSpecific(ASN1TaggedObject aSN1TaggedObject) {
        super(aSN1TaggedObject);
    }

    public BERApplicationSpecific(boolean z9, int i4, ASN1Encodable aSN1Encodable) throws IOException {
        super(new BERTaggedObject(z9, 64, i4, aSN1Encodable));
    }
}
