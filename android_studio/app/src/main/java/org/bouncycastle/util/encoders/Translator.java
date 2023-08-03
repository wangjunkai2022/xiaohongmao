package org.bouncycastle.util.encoders;

/* loaded from: classes5.dex */
public interface Translator {
    int decode(byte[] bArr, int i4, int i10, byte[] bArr2, int i11);

    int encode(byte[] bArr, int i4, int i10, byte[] bArr2, int i11);

    int getDecodedBlockSize();

    int getEncodedBlockSize();
}
