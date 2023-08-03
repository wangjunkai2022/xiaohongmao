package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public class Base64Encoder implements Encoder {
    protected final byte[] encodingTable = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    protected byte padding = 61;
    protected final byte[] decodingTable = new byte[128];

    public Base64Encoder() {
        initialiseDecodingTable();
    }

    private int decodeLastBlock(OutputStream outputStream, char c10, char c11, char c12, char c13) throws IOException {
        byte b10 = this.padding;
        if (c12 == b10) {
            if (c13 == b10) {
                byte[] bArr = this.decodingTable;
                byte b11 = bArr[c10];
                byte b12 = bArr[c11];
                if ((b11 | b12) >= 0) {
                    outputStream.write((b11 << 2) | (b12 >> 4));
                    return 1;
                }
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            throw new IOException("invalid characters encountered at end of base64 data");
        } else if (c13 == b10) {
            byte[] bArr2 = this.decodingTable;
            byte b13 = bArr2[c10];
            byte b14 = bArr2[c11];
            byte b15 = bArr2[c12];
            if ((b13 | b14 | b15) >= 0) {
                outputStream.write((b13 << 2) | (b14 >> 4));
                outputStream.write((b14 << 4) | (b15 >> 2));
                return 2;
            }
            throw new IOException("invalid characters encountered at end of base64 data");
        } else {
            byte[] bArr3 = this.decodingTable;
            byte b16 = bArr3[c10];
            byte b17 = bArr3[c11];
            byte b18 = bArr3[c12];
            byte b19 = bArr3[c13];
            if ((b16 | b17 | b18 | b19) >= 0) {
                outputStream.write((b16 << 2) | (b17 >> 4));
                outputStream.write((b17 << 4) | (b18 >> 2));
                outputStream.write((b18 << 6) | b19);
                return 3;
            }
            throw new IOException("invalid characters encountered at end of base64 data");
        }
    }

    private boolean ignore(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    private int nextI(String str, int i4, int i10) {
        while (i4 < i10 && ignore(str.charAt(i4))) {
            i4++;
        }
        return i4;
    }

    private int nextI(byte[] bArr, int i4, int i10) {
        while (i4 < i10 && ignore((char) bArr[i4])) {
            i4++;
        }
        return i4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[54];
        int length = str.length();
        while (length > 0 && ignore(str.charAt(length - 1))) {
            length--;
        }
        if (length == 0) {
            return 0;
        }
        int i4 = length;
        int i10 = 0;
        while (i4 > 0 && i10 != 4) {
            if (!ignore(str.charAt(i4 - 1))) {
                i10++;
            }
            i4--;
        }
        int nextI = nextI(str, 0, i4);
        int i11 = 0;
        int i12 = 0;
        while (nextI < i4) {
            int i13 = nextI + 1;
            byte b10 = this.decodingTable[str.charAt(nextI)];
            int nextI2 = nextI(str, i13, i4);
            int i14 = nextI2 + 1;
            byte b11 = this.decodingTable[str.charAt(nextI2)];
            int nextI3 = nextI(str, i14, i4);
            int i15 = nextI3 + 1;
            byte b12 = this.decodingTable[str.charAt(nextI3)];
            int nextI4 = nextI(str, i15, i4);
            int i16 = nextI4 + 1;
            byte b13 = this.decodingTable[str.charAt(nextI4)];
            if ((b10 | b11 | b12 | b13) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            int i17 = i11 + 1;
            bArr[i11] = (byte) ((b10 << 2) | (b11 >> 4));
            int i18 = i17 + 1;
            bArr[i17] = (byte) ((b11 << 4) | (b12 >> 2));
            i11 = i18 + 1;
            bArr[i18] = (byte) ((b12 << 6) | b13);
            i12 += 3;
            if (i11 == 54) {
                outputStream.write(bArr);
                i11 = 0;
            }
            nextI = nextI(str, i16, i4);
        }
        if (i11 > 0) {
            outputStream.write(bArr, 0, i11);
        }
        int nextI5 = nextI(str, nextI, length);
        int nextI6 = nextI(str, nextI5 + 1, length);
        int nextI7 = nextI(str, nextI6 + 1, length);
        return i12 + decodeLastBlock(outputStream, str.charAt(nextI5), str.charAt(nextI6), str.charAt(nextI7), str.charAt(nextI(str, nextI7 + 1, length)));
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[54];
        int i11 = i4 + i10;
        while (i11 > i4 && ignore((char) bArr[i11 - 1])) {
            i11--;
        }
        if (i11 == 0) {
            return 0;
        }
        int i12 = i11;
        int i13 = 0;
        while (i12 > i4 && i13 != 4) {
            if (!ignore((char) bArr[i12 - 1])) {
                i13++;
            }
            i12--;
        }
        int nextI = nextI(bArr, i4, i12);
        int i14 = 0;
        int i15 = 0;
        while (nextI < i12) {
            int i16 = nextI + 1;
            byte b10 = this.decodingTable[bArr[nextI]];
            int nextI2 = nextI(bArr, i16, i12);
            int i17 = nextI2 + 1;
            byte b11 = this.decodingTable[bArr[nextI2]];
            int nextI3 = nextI(bArr, i17, i12);
            int i18 = nextI3 + 1;
            byte b12 = this.decodingTable[bArr[nextI3]];
            int nextI4 = nextI(bArr, i18, i12);
            int i19 = nextI4 + 1;
            byte b13 = this.decodingTable[bArr[nextI4]];
            if ((b10 | b11 | b12 | b13) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            int i20 = i14 + 1;
            bArr2[i14] = (byte) ((b10 << 2) | (b11 >> 4));
            int i21 = i20 + 1;
            bArr2[i20] = (byte) ((b11 << 4) | (b12 >> 2));
            i14 = i21 + 1;
            bArr2[i21] = (byte) ((b12 << 6) | b13);
            if (i14 == 54) {
                outputStream.write(bArr2);
                i14 = 0;
            }
            i15 += 3;
            nextI = nextI(bArr, i19, i12);
        }
        if (i14 > 0) {
            outputStream.write(bArr2, 0, i14);
        }
        int nextI5 = nextI(bArr, nextI, i11);
        int nextI6 = nextI(bArr, nextI5 + 1, i11);
        int nextI7 = nextI(bArr, nextI6 + 1, i11);
        return i15 + decodeLastBlock(outputStream, (char) bArr[nextI5], (char) bArr[nextI6], (char) bArr[nextI7], (char) bArr[nextI(bArr, nextI7 + 1, i11)]);
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        if (i10 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(54, i11);
            outputStream.write(bArr2, 0, encode(bArr, i4, min, bArr2, 0));
            i4 += min;
            i11 -= min;
        }
        return ((i10 + 2) / 3) * 4;
    }

    public int encode(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws IOException {
        int i12 = (i4 + i10) - 2;
        int i13 = i4;
        int i14 = i11;
        while (i13 < i12) {
            int i15 = i13 + 1;
            byte b10 = bArr[i13];
            int i16 = i15 + 1;
            int i17 = bArr[i15] & 255;
            int i18 = i16 + 1;
            int i19 = bArr[i16] & 255;
            int i20 = i14 + 1;
            byte[] bArr3 = this.encodingTable;
            bArr2[i14] = bArr3[(b10 >>> 2) & 63];
            int i21 = i20 + 1;
            bArr2[i20] = bArr3[((b10 << 4) | (i17 >>> 4)) & 63];
            int i22 = i21 + 1;
            bArr2[i21] = bArr3[((i17 << 2) | (i19 >>> 6)) & 63];
            i14 = i22 + 1;
            bArr2[i22] = bArr3[i19 & 63];
            i13 = i18;
        }
        int i23 = i10 - (i13 - i4);
        if (i23 == 1) {
            int i24 = bArr[i13] & 255;
            int i25 = i14 + 1;
            byte[] bArr4 = this.encodingTable;
            bArr2[i14] = bArr4[(i24 >>> 2) & 63];
            int i26 = i25 + 1;
            bArr2[i25] = bArr4[(i24 << 4) & 63];
            int i27 = i26 + 1;
            byte b11 = this.padding;
            bArr2[i26] = b11;
            i14 = i27 + 1;
            bArr2[i27] = b11;
        } else if (i23 == 2) {
            int i28 = bArr[i13] & 255;
            int i29 = bArr[i13 + 1] & 255;
            int i30 = i14 + 1;
            byte[] bArr5 = this.encodingTable;
            bArr2[i14] = bArr5[(i28 >>> 2) & 63];
            int i31 = i30 + 1;
            bArr2[i30] = bArr5[((i28 << 4) | (i29 >>> 4)) & 63];
            int i32 = i31 + 1;
            bArr2[i31] = bArr5[(i29 << 2) & 63];
            i14 = i32 + 1;
            bArr2[i32] = this.padding;
        }
        return i14 - i11;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int i4) {
        return ((i4 + 2) / 3) * 4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int i4) {
        return (i4 / 4) * 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initialiseDecodingTable() {
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
                return;
            }
            this.decodingTable[bArr2[i4]] = (byte) i4;
            i4++;
        }
    }
}
