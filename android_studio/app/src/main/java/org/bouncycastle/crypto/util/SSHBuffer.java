package org.bouncycastle.crypto.util;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
class SSHBuffer {
    private final byte[] buffer;
    private int pos = 0;

    public SSHBuffer(byte[] bArr) {
        this.buffer = bArr;
    }

    public SSHBuffer(byte[] bArr, byte[] bArr2) {
        this.buffer = bArr2;
        for (int i4 = 0; i4 != bArr.length; i4++) {
            if (bArr[i4] != bArr2[i4]) {
                throw new IllegalArgumentException("magic-number incorrect");
            }
        }
        this.pos += bArr.length;
    }

    public byte[] getBuffer() {
        return Arrays.clone(this.buffer);
    }

    public boolean hasRemaining() {
        return this.pos < this.buffer.length;
    }

    public BigInteger readBigNumPositive() {
        int readU32 = readU32();
        int i4 = this.pos;
        int i10 = i4 + readU32;
        byte[] bArr = this.buffer;
        if (i10 <= bArr.length) {
            int i11 = readU32 + i4;
            this.pos = i11;
            return new BigInteger(1, Arrays.copyOfRange(bArr, i4, i11));
        }
        throw new IllegalArgumentException("not enough data for big num");
    }

    public byte[] readBlock() {
        int readU32 = readU32();
        if (readU32 == 0) {
            return new byte[0];
        }
        int i4 = this.pos;
        byte[] bArr = this.buffer;
        if (i4 <= bArr.length - readU32) {
            int i10 = readU32 + i4;
            this.pos = i10;
            return Arrays.copyOfRange(bArr, i4, i10);
        }
        throw new IllegalArgumentException("not enough data for block");
    }

    public byte[] readPaddedBlock() {
        return readPaddedBlock(8);
    }

    public byte[] readPaddedBlock(int i4) {
        int i10;
        int readU32 = readU32();
        if (readU32 == 0) {
            return new byte[0];
        }
        int i11 = this.pos;
        byte[] bArr = this.buffer;
        if (i11 <= bArr.length - readU32) {
            if (readU32 % i4 == 0) {
                int i12 = i11 + readU32;
                this.pos = i12;
                if (readU32 > 0 && (i10 = bArr[i12 - 1] & 255) > 0 && i10 < i4) {
                    i12 -= i10;
                    int i13 = 1;
                    int i14 = i12;
                    while (i13 <= i10) {
                        if (i13 != (this.buffer[i14] & 255)) {
                            throw new IllegalArgumentException("incorrect padding");
                        }
                        i13++;
                        i14++;
                    }
                }
                return Arrays.copyOfRange(this.buffer, i11, i12);
            }
            throw new IllegalArgumentException("missing padding");
        }
        throw new IllegalArgumentException("not enough data for block");
    }

    public String readString() {
        return Strings.fromByteArray(readBlock());
    }

    public int readU32() {
        int i4 = this.pos;
        byte[] bArr = this.buffer;
        if (i4 <= bArr.length - 4) {
            int i10 = i4 + 1;
            this.pos = i10;
            int i11 = i10 + 1;
            this.pos = i11;
            int i12 = ((bArr[i4] & 255) << 24) | ((bArr[i10] & 255) << 16);
            int i13 = i11 + 1;
            this.pos = i13;
            int i14 = i12 | ((bArr[i11] & 255) << 8);
            this.pos = i13 + 1;
            return i14 | (bArr[i13] & 255);
        }
        throw new IllegalArgumentException("4 bytes for U32 exceeds buffer.");
    }

    public void skipBlock() {
        int readU32 = readU32();
        int i4 = this.pos;
        if (i4 > this.buffer.length - readU32) {
            throw new IllegalArgumentException("not enough data for block");
        }
        this.pos = i4 + readU32;
    }
}
