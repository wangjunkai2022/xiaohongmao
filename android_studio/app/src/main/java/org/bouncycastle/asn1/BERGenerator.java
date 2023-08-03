package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public abstract class BERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    /* JADX INFO: Access modifiers changed from: protected */
    public BERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BERGenerator(OutputStream outputStream, int i4, boolean z9) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z9;
        this._tagNo = i4;
    }

    private void writeHdr(int i4) throws IOException {
        this._out.write(i4);
        this._out.write(128);
    }

    @Override // org.bouncycastle.asn1.ASN1Generator
    public OutputStream getRawOutputStream() {
        return this._out;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeBEREnd() throws IOException {
        this._out.write(0);
        this._out.write(0);
        if (this._tagged && this._isExplicit) {
            this._out.write(0);
            this._out.write(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeBERHeader(int i4) throws IOException {
        if (this._tagged) {
            int i10 = this._tagNo | 128;
            if (this._isExplicit) {
                writeHdr(i10 | 32);
            } else if ((i4 & 32) == 0) {
                writeHdr(i10);
                return;
            } else {
                i4 = i10 | 32;
            }
        }
        writeHdr(i4);
    }
}
