package org.bouncycastle.crypto.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
class SSHBuilder {
    private final ByteArrayOutputStream bos = new ByteArrayOutputStream();

    public byte[] getBytes() {
        return this.bos.toByteArray();
    }

    public byte[] getPaddedBytes() {
        return getPaddedBytes(8);
    }

    public byte[] getPaddedBytes(int i4) {
        int size = this.bos.size() % i4;
        if (size != 0) {
            int i10 = i4 - size;
            for (int i11 = 1; i11 <= i10; i11++) {
                this.bos.write(i11);
            }
        }
        return this.bos.toByteArray();
    }

    public void u32(int i4) {
        this.bos.write((i4 >>> 24) & 255);
        this.bos.write((i4 >>> 16) & 255);
        this.bos.write((i4 >>> 8) & 255);
        this.bos.write(i4 & 255);
    }

    public void writeBigNum(BigInteger bigInteger) {
        writeBlock(bigInteger.toByteArray());
    }

    public void writeBlock(byte[] bArr) {
        u32(bArr.length);
        try {
            this.bos.write(bArr);
        } catch (IOException e4) {
            throw new IllegalStateException(e4.getMessage(), e4);
        }
    }

    public void writeBytes(byte[] bArr) {
        try {
            this.bos.write(bArr);
        } catch (IOException e4) {
            throw new IllegalStateException(e4.getMessage(), e4);
        }
    }

    public void writeString(String str) {
        writeBlock(Strings.toByteArray(str));
    }
}
