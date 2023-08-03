package org.bouncycastle.pqc.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes5.dex */
public class GMSSRandom {
    private Digest messDigestTree;

    public GMSSRandom(Digest digest) {
        this.messDigestTree = digest;
    }

    private void addByteArrays(byte[] bArr, byte[] bArr2) {
        byte b10 = 0;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            int i10 = (bArr[i4] & 255) + (bArr2[i4] & 255) + b10;
            bArr[i4] = (byte) i10;
            b10 = (byte) (i10 >> 8);
        }
    }

    private void addOne(byte[] bArr) {
        byte b10 = 1;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            int i10 = (bArr[i4] & 255) + b10;
            bArr[i4] = (byte) i10;
            b10 = (byte) (i10 >> 8);
        }
    }

    public byte[] nextSeed(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        this.messDigestTree.update(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.messDigestTree.getDigestSize()];
        this.messDigestTree.doFinal(bArr3, 0);
        addByteArrays(bArr, bArr3);
        addOne(bArr);
        return bArr3;
    }
}
