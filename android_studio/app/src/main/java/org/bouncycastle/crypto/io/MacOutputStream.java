package org.bouncycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes4.dex */
public class MacOutputStream extends OutputStream {
    protected Mac mac;

    public MacOutputStream(Mac mac) {
        this.mac = mac;
    }

    public byte[] getMac() {
        byte[] bArr = new byte[this.mac.getMacSize()];
        this.mac.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        this.mac.update((byte) i4);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        this.mac.update(bArr, i4, i10);
    }
}
