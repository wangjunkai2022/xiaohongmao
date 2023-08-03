package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public abstract class StreamBlockCipher implements BlockCipher, StreamCipher {
    private final BlockCipher cipher;

    /* JADX INFO: Access modifiers changed from: protected */
    public StreamBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
    }

    protected abstract byte calculateByte(byte b10);

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        int i12 = i4 + i10;
        if (i12 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                while (i4 < i12) {
                    bArr2[i11] = calculateByte(bArr[i4]);
                    i11++;
                    i4++;
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too small");
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public final byte returnByte(byte b10) {
        return calculateByte(b10);
    }
}
