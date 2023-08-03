package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
class DLTaggedObjectParser extends BERTaggedObjectParser {
    private final boolean _constructed;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DLTaggedObjectParser(int i4, int i10, boolean z9, ASN1StreamParser aSN1StreamParser) {
        super(i4, i10, aSN1StreamParser);
        this._constructed = z9;
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return this._parser.loadTaggedDL(this._tagClass, this._tagNo, this._constructed);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser
    public boolean isConstructed() {
        return this._constructed;
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z9, int i4) throws IOException {
        if (!z9) {
            return this._constructed ? this._parser.parseImplicitConstructedDL(i4) : this._parser.parseImplicitPrimitive(i4);
        } else if (this._constructed) {
            return this._parser.parseObject(i4);
        } else {
            throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
        }
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        if (this._constructed) {
            return this._parser.readObject();
        }
        throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        if (this._constructed) {
            return this._parser.parseTaggedObject();
        }
        throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int i4, int i10) throws IOException {
        return 64 == i4 ? (DLApplicationSpecific) this._parser.loadTaggedDL(i4, i10, this._constructed) : new DLTaggedObjectParser(i4, i10, this._constructed, this._parser);
    }
}
