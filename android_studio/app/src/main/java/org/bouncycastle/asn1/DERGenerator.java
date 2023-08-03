package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public abstract class DERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    /* JADX INFO: Access modifiers changed from: protected */
    public DERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public DERGenerator(OutputStream outputStream, int i4, boolean z9) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z9;
        this._tagNo = i4;
    }

    private void writeLength(OutputStream outputStream, int i4) throws IOException {
        if (i4 <= 127) {
            outputStream.write((byte) i4);
            return;
        }
        int i10 = i4;
        int i11 = 1;
        while (true) {
            i10 >>>= 8;
            if (i10 == 0) {
                break;
            }
            i11++;
        }
        outputStream.write((byte) (i11 | 128));
        for (int i12 = (i11 - 1) * 8; i12 >= 0; i12 -= 8) {
            outputStream.write((byte) (i4 >> i12));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeDEREncoded(int i4, byte[] bArr) throws IOException {
        if (!this._tagged) {
            writeDEREncoded(this._out, i4, bArr);
            return;
        }
        int i10 = this._tagNo;
        int i11 = i10 | 128;
        if (this._isExplicit) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            writeDEREncoded(byteArrayOutputStream, i4, bArr);
            writeDEREncoded(this._out, i10 | 32 | 128, byteArrayOutputStream.toByteArray());
        } else if ((i4 & 32) != 0) {
            writeDEREncoded(this._out, i11 | 32, bArr);
        } else {
            writeDEREncoded(this._out, i11, bArr);
        }
    }

    void writeDEREncoded(OutputStream outputStream, int i4, byte[] bArr) throws IOException {
        outputStream.write(i4);
        writeLength(outputStream, bArr.length);
        outputStream.write(bArr);
    }
}
