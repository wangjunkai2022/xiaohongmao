package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;

/* loaded from: classes5.dex */
public class HexEncoder implements Encoder {
    protected final byte[] encodingTable = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    protected final byte[] decodingTable = new byte[128];

    public HexEncoder() {
        initialiseDecodingTable();
    }

    private static boolean ignore(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[36];
        int length = str.length();
        while (length > 0 && ignore(str.charAt(length - 1))) {
            length--;
        }
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i4 < length) {
            while (i4 < length && ignore(str.charAt(i4))) {
                i4++;
            }
            int i12 = i4 + 1;
            byte b10 = this.decodingTable[str.charAt(i4)];
            while (i12 < length && ignore(str.charAt(i12))) {
                i12++;
            }
            int i13 = i12 + 1;
            byte b11 = this.decodingTable[str.charAt(i12)];
            if ((b10 | b11) < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            int i14 = i10 + 1;
            bArr[i10] = (byte) ((b10 << 4) | b11);
            if (i14 == 36) {
                outputStream.write(bArr);
                i10 = 0;
            } else {
                i10 = i14;
            }
            i11++;
            i4 = i13;
        }
        if (i10 > 0) {
            outputStream.write(bArr, 0, i10);
        }
        return i11;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[36];
        int i11 = i10 + i4;
        while (i11 > i4 && ignore((char) bArr[i11 - 1])) {
            i11--;
        }
        int i12 = 0;
        int i13 = 0;
        while (i4 < i11) {
            while (i4 < i11 && ignore((char) bArr[i4])) {
                i4++;
            }
            int i14 = i4 + 1;
            byte b10 = this.decodingTable[bArr[i4]];
            while (i14 < i11 && ignore((char) bArr[i14])) {
                i14++;
            }
            int i15 = i14 + 1;
            byte b11 = this.decodingTable[bArr[i14]];
            if ((b10 | b11) < 0) {
                throw new IOException("invalid characters encountered in Hex data");
            }
            int i16 = i12 + 1;
            bArr2[i12] = (byte) ((b10 << 4) | b11);
            if (i16 == 36) {
                outputStream.write(bArr2);
                i12 = 0;
            } else {
                i12 = i16;
            }
            i13++;
            i4 = i15;
        }
        if (i12 > 0) {
            outputStream.write(bArr2, 0, i12);
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] decodeStrict(String str, int i4, int i10) throws IOException {
        Objects.requireNonNull(str, "'str' cannot be null");
        if (i4 < 0 || i10 < 0 || i4 > str.length() - i10) {
            throw new IndexOutOfBoundsException("invalid offset and/or length specified");
        }
        if ((i10 & 1) == 0) {
            int i11 = i10 >>> 1;
            byte[] bArr = new byte[i11];
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i4 + 1;
                int i14 = i13 + 1;
                int i15 = (this.decodingTable[str.charAt(i4)] << 4) | this.decodingTable[str.charAt(i13)];
                if (i15 < 0) {
                    throw new IOException("invalid characters encountered in Hex string");
                }
                bArr[i12] = (byte) i15;
                i12++;
                i4 = i14;
            }
            return bArr;
        }
        throw new IOException("a hexadecimal encoding must have an even number of characters");
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        if (i10 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(36, i11);
            outputStream.write(bArr2, 0, encode(bArr, i4, min, bArr2, 0));
            i4 += min;
            i11 -= min;
        }
        return i10 * 2;
    }

    public int encode(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws IOException {
        int i12 = i10 + i4;
        int i13 = i11;
        while (i4 < i12) {
            int i14 = i4 + 1;
            int i15 = bArr[i4] & 255;
            int i16 = i13 + 1;
            byte[] bArr3 = this.encodingTable;
            bArr2[i13] = bArr3[i15 >>> 4];
            i13 = i16 + 1;
            bArr2[i16] = bArr3[i15 & 15];
            i4 = i14;
        }
        return i13 - i11;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int i4) {
        return i4 * 2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int i4) {
        return i4 / 2;
    }

    protected void initialiseDecodingTable() {
        int i4 = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.decodingTable;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = -1;
            i10++;
        }
        while (true) {
            byte[] bArr2 = this.encodingTable;
            if (i4 >= bArr2.length) {
                byte[] bArr3 = this.decodingTable;
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
            this.decodingTable[bArr2[i4]] = (byte) i4;
            i4++;
        }
    }
}
