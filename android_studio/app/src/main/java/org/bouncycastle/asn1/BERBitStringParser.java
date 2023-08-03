package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes4.dex */
public class BERBitStringParser implements ASN1BitStringParser {
    private ConstructedBitStream _bitStream;
    private ASN1StreamParser _parser;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BERBitStringParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BERBitString parse(ASN1StreamParser aSN1StreamParser) throws IOException {
        ConstructedBitStream constructedBitStream = new ConstructedBitStream(aSN1StreamParser, false);
        return new BERBitString(Streams.readAll(constructedBitStream), constructedBitStream.getPadBits());
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getBitStream() throws IOException {
        ConstructedBitStream constructedBitStream = new ConstructedBitStream(this._parser, false);
        this._bitStream = constructedBitStream;
        return constructedBitStream;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return parse(this._parser);
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getOctetStream() throws IOException {
        ConstructedBitStream constructedBitStream = new ConstructedBitStream(this._parser, true);
        this._bitStream = constructedBitStream;
        return constructedBitStream;
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public int getPadBits() {
        return this._bitStream.getPadBits();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e4) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e4.getMessage(), e4);
        }
    }
}
