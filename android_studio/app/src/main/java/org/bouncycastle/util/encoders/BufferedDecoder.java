package org.bouncycastle.util.encoders;

/* loaded from: classes5.dex */
public class BufferedDecoder {
    protected byte[] buf;
    protected int bufOff;
    protected Translator translator;

    public BufferedDecoder(Translator translator, int i4) {
        this.translator = translator;
        if (i4 % translator.getEncodedBlockSize() != 0) {
            throw new IllegalArgumentException("buffer size not multiple of input block size");
        }
        this.buf = new byte[i4];
        this.bufOff = 0;
    }

    public int processByte(byte b10, byte[] bArr, int i4) {
        byte[] bArr2 = this.buf;
        int i10 = this.bufOff;
        int i11 = i10 + 1;
        this.bufOff = i11;
        bArr2[i10] = b10;
        if (i11 == bArr2.length) {
            int decode = this.translator.decode(bArr2, 0, bArr2.length, bArr, i4);
            this.bufOff = 0;
            return decode;
        }
        return 0;
    }

    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (i10 >= 0) {
            byte[] bArr3 = this.buf;
            int length = bArr3.length;
            int i12 = this.bufOff;
            int i13 = length - i12;
            int i14 = 0;
            if (i10 > i13) {
                System.arraycopy(bArr, i4, bArr3, i12, i13);
                Translator translator = this.translator;
                byte[] bArr4 = this.buf;
                int decode = translator.decode(bArr4, 0, bArr4.length, bArr2, i11) + 0;
                this.bufOff = 0;
                int i15 = i10 - i13;
                int i16 = i4 + i13;
                int i17 = i11 + decode;
                int length2 = i15 - (i15 % this.buf.length);
                i14 = decode + this.translator.decode(bArr, i16, length2, bArr2, i17);
                i10 = i15 - length2;
                i4 = i16 + length2;
            }
            if (i10 != 0) {
                System.arraycopy(bArr, i4, this.buf, this.bufOff, i10);
                this.bufOff += i10;
            }
            return i14;
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }
}
