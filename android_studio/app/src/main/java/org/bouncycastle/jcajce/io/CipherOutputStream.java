package org.bouncycastle.jcajce.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Cipher;

/* loaded from: classes4.dex */
public class CipherOutputStream extends FilterOutputStream {
    private final Cipher cipher;
    private final byte[] oneByte;

    public CipherOutputStream(OutputStream outputStream, Cipher cipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.cipher = cipher;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void close() throws java.io.IOException {
        /*
            r4 = this;
            javax.crypto.Cipher r0 = r4.cipher     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L27
            byte[] r0 = r0.doFinal()     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L27
            if (r0 == 0) goto Ld
            java.io.OutputStream r1 = r4.out     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L27
            r1.write(r0)     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L27
        Ld:
            r0 = 0
            goto L30
        Lf:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error closing stream: "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            goto L2f
        L27:
            r0 = move-exception
            org.bouncycastle.crypto.io.InvalidCipherTextIOException r1 = new org.bouncycastle.crypto.io.InvalidCipherTextIOException
            java.lang.String r2 = "Error during cipher finalisation"
            r1.<init>(r2, r0)
        L2f:
            r0 = r1
        L30:
            r4.flush()     // Catch: java.io.IOException -> L39
            java.io.OutputStream r1 = r4.out     // Catch: java.io.IOException -> L39
            r1.close()     // Catch: java.io.IOException -> L39
            goto L3d
        L39:
            r1 = move-exception
            if (r0 != 0) goto L3d
            r0 = r1
        L3d:
            if (r0 != 0) goto L40
            return
        L40:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.io.CipherOutputStream.close():void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i4) throws IOException {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) i4;
        write(bArr, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        byte[] update = this.cipher.update(bArr, i4, i10);
        if (update != null) {
            ((FilterOutputStream) this).out.write(update);
        }
    }
}
