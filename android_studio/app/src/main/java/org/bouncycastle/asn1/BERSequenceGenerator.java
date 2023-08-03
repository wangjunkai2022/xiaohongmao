package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class BERSequenceGenerator extends BERGenerator {
    public BERSequenceGenerator(OutputStream outputStream) throws IOException {
        super(outputStream);
        writeBERHeader(48);
    }

    public BERSequenceGenerator(OutputStream outputStream, int i4, boolean z9) throws IOException {
        super(outputStream, i4, z9);
        writeBERHeader(48);
    }

    public void addObject(ASN1Encodable aSN1Encodable) throws IOException {
        aSN1Encodable.toASN1Primitive().encodeTo(this._out);
    }

    public void addObject(ASN1Primitive aSN1Primitive) throws IOException {
        aSN1Primitive.encodeTo(this._out);
    }

    public void close() throws IOException {
        writeBEREnd();
    }
}
