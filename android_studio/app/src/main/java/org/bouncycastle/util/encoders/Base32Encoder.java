package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes5.dex */
public class Base32Encoder implements Encoder {
    private static final byte[] DEAULT_ENCODING_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55};
    private static final byte DEFAULT_PADDING = 61;
    private final byte[] decodingTable;
    private final byte[] encodingTable;
    private final byte padding;

    public Base32Encoder() {
        this.decodingTable = new byte[128];
        this.encodingTable = DEAULT_ENCODING_TABLE;
        this.padding = DEFAULT_PADDING;
        initialiseDecodingTable();
    }

    public Base32Encoder(byte[] bArr, byte b10) {
        this.decodingTable = new byte[128];
        if (bArr.length != 32) {
            throw new IllegalArgumentException("encoding table needs to be length 32");
        }
        this.encodingTable = Arrays.clone(bArr);
        this.padding = b10;
        initialiseDecodingTable();
    }

    private int decodeLastBlock(OutputStream outputStream, char c10, char c11, char c12, char c13, char c14, char c15, char c16, char c17) throws IOException {
        byte b10 = this.padding;
        if (c17 != b10) {
            byte[] bArr = this.decodingTable;
            byte b11 = bArr[c10];
            byte b12 = bArr[c11];
            byte b13 = bArr[c12];
            byte b14 = bArr[c13];
            byte b15 = bArr[c14];
            byte b16 = bArr[c15];
            byte b17 = bArr[c16];
            byte b18 = bArr[c17];
            if ((b11 | b12 | b13 | b14 | b15 | b16 | b17 | b18) >= 0) {
                outputStream.write((b11 << 3) | (b12 >> 2));
                outputStream.write((b12 << 6) | (b13 << 1) | (b14 >> 4));
                outputStream.write((b14 << 4) | (b15 >> 1));
                outputStream.write((b15 << 7) | (b16 << 2) | (b17 >> 3));
                outputStream.write((b17 << 5) | b18);
                return 5;
            }
            throw new IOException("invalid characters encountered at end of base32 data");
        } else if (c16 != b10) {
            byte[] bArr2 = this.decodingTable;
            byte b19 = bArr2[c10];
            byte b20 = bArr2[c11];
            byte b21 = bArr2[c12];
            byte b22 = bArr2[c13];
            byte b23 = bArr2[c14];
            byte b24 = bArr2[c15];
            byte b25 = bArr2[c16];
            if ((b19 | b20 | b21 | b22 | b23 | b24 | b25) >= 0) {
                outputStream.write((b19 << 3) | (b20 >> 2));
                outputStream.write((b20 << 6) | (b21 << 1) | (b22 >> 4));
                outputStream.write((b22 << 4) | (b23 >> 1));
                outputStream.write((b23 << 7) | (b24 << 2) | (b25 >> 3));
                return 4;
            }
            throw new IOException("invalid characters encountered at end of base32 data");
        } else if (c15 == b10) {
            if (c14 != b10) {
                byte[] bArr3 = this.decodingTable;
                byte b26 = bArr3[c10];
                byte b27 = bArr3[c11];
                byte b28 = bArr3[c12];
                byte b29 = bArr3[c13];
                byte b30 = bArr3[c14];
                if ((b26 | b27 | b28 | b29 | b30) >= 0) {
                    outputStream.write((b26 << 3) | (b27 >> 2));
                    outputStream.write((b27 << 6) | (b28 << 1) | (b29 >> 4));
                    outputStream.write((b29 << 4) | (b30 >> 1));
                    return 3;
                }
                throw new IOException("invalid characters encountered at end of base32 data");
            } else if (c13 == b10) {
                if (c12 == b10) {
                    byte[] bArr4 = this.decodingTable;
                    byte b31 = bArr4[c10];
                    byte b32 = bArr4[c11];
                    if ((b31 | b32) >= 0) {
                        outputStream.write((b31 << 3) | (b32 >> 2));
                        return 1;
                    }
                    throw new IOException("invalid characters encountered at end of base32 data");
                }
                throw new IOException("invalid characters encountered at end of base32 data");
            } else {
                byte[] bArr5 = this.decodingTable;
                byte b33 = bArr5[c10];
                byte b34 = bArr5[c11];
                byte b35 = bArr5[c12];
                byte b36 = bArr5[c13];
                if ((b33 | b34 | b35 | b36) >= 0) {
                    outputStream.write((b33 << 3) | (b34 >> 2));
                    outputStream.write((b34 << 6) | (b35 << 1) | (b36 >> 4));
                    return 2;
                }
                throw new IOException("invalid characters encountered at end of base32 data");
            }
        } else {
            throw new IOException("invalid characters encountered at end of base32 data");
        }
    }

    private void encodeBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = i4 + 1;
        byte b10 = bArr[i4];
        int i12 = i11 + 1;
        int i13 = bArr[i11] & 255;
        int i14 = i12 + 1;
        int i15 = bArr[i12] & 255;
        int i16 = i14 + 1;
        int i17 = bArr[i14] & 255;
        int i18 = bArr[i16] & 255;
        int i19 = i10 + 1;
        byte[] bArr3 = this.encodingTable;
        bArr2[i10] = bArr3[(b10 >>> 3) & 31];
        int i20 = i19 + 1;
        bArr2[i19] = bArr3[((b10 << 2) | (i13 >>> 6)) & 31];
        int i21 = i20 + 1;
        bArr2[i20] = bArr3[(i13 >>> 1) & 31];
        int i22 = i21 + 1;
        bArr2[i21] = bArr3[((i13 << 4) | (i15 >>> 4)) & 31];
        int i23 = i22 + 1;
        bArr2[i22] = bArr3[((i15 << 1) | (i17 >>> 7)) & 31];
        int i24 = i23 + 1;
        bArr2[i23] = bArr3[(i17 >>> 2) & 31];
        bArr2[i24] = bArr3[((i17 << 3) | (i18 >>> 5)) & 31];
        bArr2[i24 + 1] = bArr3[i18 & 31];
    }

    private boolean ignore(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    private int nextI(byte[] bArr, int i4, int i10) {
        while (i4 < i10 && ignore((char) bArr[i4])) {
            i4++;
        }
        return i4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] byteArray = Strings.toByteArray(str);
        return decode(byteArray, 0, byteArray.length, outputStream);
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[55];
        int i11 = i4 + i10;
        while (i11 > i4 && ignore((char) bArr[i11 - 1])) {
            i11--;
        }
        if (i11 == 0) {
            return 0;
        }
        int i12 = i11;
        int i13 = 0;
        while (i12 > i4 && i13 != 8) {
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
            int nextI5 = nextI(bArr, i19, i12);
            int i20 = nextI5 + 1;
            byte b14 = this.decodingTable[bArr[nextI5]];
            int nextI6 = nextI(bArr, i20, i12);
            int i21 = nextI6 + 1;
            byte b15 = this.decodingTable[bArr[nextI6]];
            int nextI7 = nextI(bArr, i21, i12);
            int i22 = i11;
            int i23 = nextI7 + 1;
            byte b16 = this.decodingTable[bArr[nextI7]];
            int nextI8 = nextI(bArr, i23, i12);
            int i24 = i12;
            int i25 = nextI8 + 1;
            byte b17 = this.decodingTable[bArr[nextI8]];
            if ((b10 | b11 | b12 | b13 | b14 | b15 | b16 | b17) < 0) {
                throw new IOException("invalid characters encountered in base32 data");
            }
            int i26 = i14 + 1;
            bArr2[i14] = (byte) ((b10 << 3) | (b11 >> 2));
            int i27 = i26 + 1;
            bArr2[i26] = (byte) ((b11 << 6) | (b12 << 1) | (b13 >> 4));
            int i28 = i27 + 1;
            bArr2[i27] = (byte) ((b13 << 4) | (b14 >> 1));
            int i29 = i28 + 1;
            bArr2[i28] = (byte) ((b15 << 2) | (b14 << 7) | (b16 >> 3));
            int i30 = i29 + 1;
            bArr2[i29] = (byte) ((b16 << 5) | b17);
            if (i30 == 55) {
                outputStream.write(bArr2);
                i14 = 0;
            } else {
                i14 = i30;
            }
            i15 += 5;
            nextI = nextI(bArr, i25, i24);
            i12 = i24;
            i11 = i22;
        }
        int i31 = i11;
        if (i14 > 0) {
            outputStream.write(bArr2, 0, i14);
        }
        int nextI9 = nextI(bArr, nextI, i31);
        int nextI10 = nextI(bArr, nextI9 + 1, i31);
        int nextI11 = nextI(bArr, nextI10 + 1, i31);
        int nextI12 = nextI(bArr, nextI11 + 1, i31);
        int nextI13 = nextI(bArr, nextI12 + 1, i31);
        int nextI14 = nextI(bArr, nextI13 + 1, i31);
        int nextI15 = nextI(bArr, nextI14 + 1, i31);
        return i15 + decodeLastBlock(outputStream, (char) bArr[nextI9], (char) bArr[nextI10], (char) bArr[nextI11], (char) bArr[nextI12], (char) bArr[nextI13], (char) bArr[nextI14], (char) bArr[nextI15], (char) bArr[nextI(bArr, nextI15 + 1, i31)]);
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        if (i10 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(45, i11);
            outputStream.write(bArr2, 0, encode(bArr, i4, min, bArr2, 0));
            i4 += min;
            i11 -= min;
        }
        return ((i10 + 2) / 3) * 4;
    }

    public int encode(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws IOException {
        int i12 = (i4 + i10) - 4;
        int i13 = i4;
        int i14 = i11;
        while (i13 < i12) {
            encodeBlock(bArr, i13, bArr2, i14);
            i13 += 5;
            i14 += 8;
        }
        int i15 = i10 - (i13 - i4);
        if (i15 > 0) {
            byte[] bArr3 = new byte[5];
            System.arraycopy(bArr, i13, bArr3, 0, i15);
            encodeBlock(bArr3, 0, bArr2, i14);
            if (i15 == 1) {
                byte b10 = this.padding;
                bArr2[i14 + 2] = b10;
                bArr2[i14 + 3] = b10;
                bArr2[i14 + 4] = b10;
                bArr2[i14 + 5] = b10;
                bArr2[i14 + 6] = b10;
                bArr2[i14 + 7] = b10;
            } else if (i15 == 2) {
                byte b11 = this.padding;
                bArr2[i14 + 4] = b11;
                bArr2[i14 + 5] = b11;
                bArr2[i14 + 6] = b11;
                bArr2[i14 + 7] = b11;
            } else if (i15 == 3) {
                byte b12 = this.padding;
                bArr2[i14 + 5] = b12;
                bArr2[i14 + 6] = b12;
                bArr2[i14 + 7] = b12;
            } else if (i15 == 4) {
                bArr2[i14 + 7] = this.padding;
            }
            i14 += 8;
        }
        return i14 - i11;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int i4) {
        return ((i4 + 4) / 5) * 8;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int i4) {
        return (i4 / 8) * 5;
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
                return;
            }
            this.decodingTable[bArr2[i4]] = (byte) i4;
            i4++;
        }
    }
}
