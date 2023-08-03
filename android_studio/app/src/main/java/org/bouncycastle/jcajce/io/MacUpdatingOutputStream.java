package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

/* loaded from: classes4.dex */
class MacUpdatingOutputStream extends OutputStream {
    private Mac mac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MacUpdatingOutputStream(Mac mac) {
        this.mac = mac;
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        this.mac.update((byte) i4);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.mac.update(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        this.mac.update(bArr, i4, i10);
    }
}
