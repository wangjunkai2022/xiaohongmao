package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class ConstructedOctetStream extends InputStream {
    private InputStream _currentStream;
    private boolean _first = true;
    private final ASN1StreamParser _parser;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstructedOctetStream(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    private ASN1OctetStringParser getNextParser() throws IOException {
        ASN1Encodable readObject = this._parser.readObject();
        if (readObject == null) {
            return null;
        }
        if (readObject instanceof ASN1OctetStringParser) {
            return (ASN1OctetStringParser) readObject;
        }
        throw new IOException("unknown object encountered: " + readObject.getClass());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        ASN1OctetStringParser nextParser;
        if (this._currentStream == null) {
            if (!this._first || (nextParser = getNextParser()) == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = nextParser.getOctetStream();
        }
        while (true) {
            int read = this._currentStream.read();
            if (read >= 0) {
                return read;
            }
            ASN1OctetStringParser nextParser2 = getNextParser();
            if (nextParser2 == null) {
                this._currentStream = null;
                return -1;
            }
            this._currentStream = nextParser2.getOctetStream();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        ASN1OctetStringParser nextParser;
        int i11 = 0;
        if (this._currentStream == null) {
            if (!this._first || (nextParser = getNextParser()) == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = nextParser.getOctetStream();
        }
        while (true) {
            int read = this._currentStream.read(bArr, i4 + i11, i10 - i11);
            if (read >= 0) {
                i11 += read;
                if (i11 == i10) {
                    return i11;
                }
            } else {
                ASN1OctetStringParser nextParser2 = getNextParser();
                if (nextParser2 == null) {
                    this._currentStream = null;
                    if (i11 < 1) {
                        return -1;
                    }
                    return i11;
                }
                this._currentStream = nextParser2.getOctetStream();
            }
        }
    }
}
