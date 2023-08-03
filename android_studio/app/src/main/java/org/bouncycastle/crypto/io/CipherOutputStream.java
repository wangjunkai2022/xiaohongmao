package org.bouncycastle.crypto.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.modes.AEADBlockCipher;

/* loaded from: classes4.dex */
public class CipherOutputStream extends FilterOutputStream {
    private AEADBlockCipher aeadBlockCipher;
    private byte[] buf;
    private BufferedBlockCipher bufferedBlockCipher;
    private final byte[] oneByte;
    private StreamCipher streamCipher;

    public CipherOutputStream(OutputStream outputStream, BufferedBlockCipher bufferedBlockCipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.bufferedBlockCipher = bufferedBlockCipher;
    }

    public CipherOutputStream(OutputStream outputStream, StreamCipher streamCipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.streamCipher = streamCipher;
    }

    public CipherOutputStream(OutputStream outputStream, AEADBlockCipher aEADBlockCipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.aeadBlockCipher = aEADBlockCipher;
    }

    private void ensureCapacity(int i4, boolean z9) {
        if (z9) {
            BufferedBlockCipher bufferedBlockCipher = this.bufferedBlockCipher;
            if (bufferedBlockCipher != null) {
                i4 = bufferedBlockCipher.getOutputSize(i4);
            } else {
                AEADBlockCipher aEADBlockCipher = this.aeadBlockCipher;
                if (aEADBlockCipher != null) {
                    i4 = aEADBlockCipher.getOutputSize(i4);
                }
            }
        } else {
            BufferedBlockCipher bufferedBlockCipher2 = this.bufferedBlockCipher;
            if (bufferedBlockCipher2 != null) {
                i4 = bufferedBlockCipher2.getUpdateOutputSize(i4);
            } else {
                AEADBlockCipher aEADBlockCipher2 = this.aeadBlockCipher;
                if (aEADBlockCipher2 != null) {
                    i4 = aEADBlockCipher2.getUpdateOutputSize(i4);
                }
            }
        }
        byte[] bArr = this.buf;
        if (bArr == null || bArr.length < i4) {
            this.buf = new byte[i4];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void close() throws java.io.IOException {
        /*
            r4 = this;
            r0 = 0
            r1 = 1
            r4.ensureCapacity(r0, r1)
            org.bouncycastle.crypto.BufferedBlockCipher r1 = r4.bufferedBlockCipher     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            if (r1 == 0) goto L19
            byte[] r2 = r4.buf     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            int r1 = r1.doFinal(r2, r0)     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            if (r1 == 0) goto L34
            java.io.OutputStream r2 = r4.out     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            byte[] r3 = r4.buf     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            r2.write(r3, r0, r1)     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            goto L34
        L19:
            org.bouncycastle.crypto.modes.AEADBlockCipher r1 = r4.aeadBlockCipher     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            if (r1 == 0) goto L2d
            byte[] r2 = r4.buf     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            int r1 = r1.doFinal(r2, r0)     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            if (r1 == 0) goto L34
            java.io.OutputStream r2 = r4.out     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            byte[] r3 = r4.buf     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            r2.write(r3, r0, r1)     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            goto L34
        L2d:
            org.bouncycastle.crypto.StreamCipher r0 = r4.streamCipher     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
            if (r0 == 0) goto L34
            r0.reset()     // Catch: java.lang.Exception -> L36 org.bouncycastle.crypto.InvalidCipherTextException -> L3f
        L34:
            r0 = 0
            goto L48
        L36:
            r0 = move-exception
            org.bouncycastle.crypto.io.CipherIOException r1 = new org.bouncycastle.crypto.io.CipherIOException
            java.lang.String r2 = "Error closing stream: "
            r1.<init>(r2, r0)
            goto L47
        L3f:
            r0 = move-exception
            org.bouncycastle.crypto.io.InvalidCipherTextIOException r1 = new org.bouncycastle.crypto.io.InvalidCipherTextIOException
            java.lang.String r2 = "Error finalising cipher data"
            r1.<init>(r2, r0)
        L47:
            r0 = r1
        L48:
            r4.flush()     // Catch: java.io.IOException -> L51
            java.io.OutputStream r1 = r4.out     // Catch: java.io.IOException -> L51
            r1.close()     // Catch: java.io.IOException -> L51
            goto L55
        L51:
            r1 = move-exception
            if (r0 != 0) goto L55
            r0 = r1
        L55:
            if (r0 != 0) goto L58
            return
        L58:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.io.CipherOutputStream.close():void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i4) throws IOException {
        byte[] bArr = this.oneByte;
        byte b10 = (byte) i4;
        bArr[0] = b10;
        StreamCipher streamCipher = this.streamCipher;
        if (streamCipher != null) {
            ((FilterOutputStream) this).out.write(streamCipher.returnByte(b10));
        } else {
            write(bArr, 0, 1);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        ensureCapacity(i10, false);
        BufferedBlockCipher bufferedBlockCipher = this.bufferedBlockCipher;
        if (bufferedBlockCipher != null) {
            int processBytes = bufferedBlockCipher.processBytes(bArr, i4, i10, this.buf, 0);
            if (processBytes != 0) {
                ((FilterOutputStream) this).out.write(this.buf, 0, processBytes);
                return;
            }
            return;
        }
        AEADBlockCipher aEADBlockCipher = this.aeadBlockCipher;
        if (aEADBlockCipher == null) {
            this.streamCipher.processBytes(bArr, i4, i10, this.buf, 0);
            ((FilterOutputStream) this).out.write(this.buf, 0, i10);
            return;
        }
        int processBytes2 = aEADBlockCipher.processBytes(bArr, i4, i10, this.buf, 0);
        if (processBytes2 != 0) {
            ((FilterOutputStream) this).out.write(this.buf, 0, processBytes2);
        }
    }
}
