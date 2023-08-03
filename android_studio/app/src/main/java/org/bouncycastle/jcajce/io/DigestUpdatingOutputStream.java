package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;

/* loaded from: classes4.dex */
class DigestUpdatingOutputStream extends OutputStream {
    private MessageDigest digest;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DigestUpdatingOutputStream(MessageDigest messageDigest) {
        this.digest = messageDigest;
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        this.digest.update((byte) i4);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.digest.update(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        this.digest.update(bArr, i4, i10);
    }
}
