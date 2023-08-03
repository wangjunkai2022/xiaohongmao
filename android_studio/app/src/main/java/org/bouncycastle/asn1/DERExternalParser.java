package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DERExternalParser implements ASN1ExternalParser {
    private ASN1StreamParser _parser;

    public DERExternalParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DLExternal parse(ASN1StreamParser aSN1StreamParser) throws IOException {
        try {
            return new DLExternal(aSN1StreamParser.readVector());
        } catch (IllegalArgumentException e4) {
            throw new ASN1Exception(e4.getMessage(), e4);
        }
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return parse(this._parser);
    }

    @Override // org.bouncycastle.asn1.ASN1ExternalParser
    public ASN1Encodable readObject() throws IOException {
        return this._parser.readObject();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e4) {
            throw new ASN1ParsingException("unable to get DER object", e4);
        } catch (IllegalArgumentException e10) {
            throw new ASN1ParsingException("unable to get DER object", e10);
        }
    }
}
