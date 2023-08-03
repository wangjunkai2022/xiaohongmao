package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import java.security.Signature;
import java.security.SignatureException;

/* loaded from: classes4.dex */
class SignatureUpdatingOutputStream extends OutputStream {
    private Signature sig;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignatureUpdatingOutputStream(Signature signature) {
        this.sig = signature;
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        try {
            this.sig.update((byte) i4);
        } catch (SignatureException e4) {
            throw new IOException(e4.getMessage());
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.sig.update(bArr);
        } catch (SignatureException e4) {
            throw new IOException(e4.getMessage());
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        try {
            this.sig.update(bArr, i4, i10);
        } catch (SignatureException e4) {
            throw new IOException(e4.getMessage());
        }
    }
}
