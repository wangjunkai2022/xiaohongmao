package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class BEROctetStringGenerator extends BERGenerator {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class BufferedBEROctetStream extends OutputStream {
        private byte[] _buf;
        private DEROutputStream _derOut;
        private int _off = 0;

        BufferedBEROctetStream(byte[] bArr) {
            this._buf = bArr;
            this._derOut = new DEROutputStream(BEROctetStringGenerator.this._out);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            int i4 = this._off;
            if (i4 != 0) {
                DEROctetString.encode(this._derOut, true, this._buf, 0, i4);
            }
            this._derOut.flushInternal();
            BEROctetStringGenerator.this.writeBEREnd();
        }

        @Override // java.io.OutputStream
        public void write(int i4) throws IOException {
            byte[] bArr = this._buf;
            int i10 = this._off;
            int i11 = i10 + 1;
            this._off = i11;
            bArr[i10] = (byte) i4;
            if (i11 == bArr.length) {
                DEROctetString.encode(this._derOut, true, bArr, 0, bArr.length);
                this._off = 0;
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i4, int i10) throws IOException {
            int i11;
            byte[] bArr2 = this._buf;
            int length = bArr2.length;
            int i12 = this._off;
            int i13 = length - i12;
            if (i10 < i13) {
                System.arraycopy(bArr, i4, bArr2, i12, i10);
                this._off += i10;
                return;
            }
            if (i12 > 0) {
                System.arraycopy(bArr, i4, bArr2, i12, i13);
                i11 = i13 + 0;
                DEROctetString.encode(this._derOut, true, this._buf, 0, length);
            } else {
                i11 = 0;
            }
            while (true) {
                int i14 = i10 - i11;
                if (i14 < length) {
                    System.arraycopy(bArr, i4 + i11, this._buf, 0, i14);
                    this._off = i14;
                    return;
                }
                DEROctetString.encode(this._derOut, true, bArr, i4 + i11, length);
                i11 += length;
            }
        }
    }

    public BEROctetStringGenerator(OutputStream outputStream) throws IOException {
        super(outputStream);
        writeBERHeader(36);
    }

    public BEROctetStringGenerator(OutputStream outputStream, int i4, boolean z9) throws IOException {
        super(outputStream, i4, z9);
        writeBERHeader(36);
    }

    public OutputStream getOctetOutputStream() {
        return getOctetOutputStream(new byte[1000]);
    }

    public OutputStream getOctetOutputStream(byte[] bArr) {
        return new BufferedBEROctetStream(bArr);
    }
}
