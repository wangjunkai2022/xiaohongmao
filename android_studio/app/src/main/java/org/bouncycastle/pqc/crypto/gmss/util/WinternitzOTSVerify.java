package org.bouncycastle.pqc.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes5.dex */
public class WinternitzOTSVerify {
    private int mdsize;
    private Digest messDigestOTS;

    /* renamed from: w  reason: collision with root package name */
    private int f91504w;

    public WinternitzOTSVerify(Digest digest, int i4) {
        this.f91504w = i4;
        this.messDigestOTS = digest;
        this.mdsize = digest.getDigestSize();
    }

    private void hashSignatureBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (i10 < 1) {
            System.arraycopy(bArr, i4, bArr2, i11, this.mdsize);
            return;
        }
        this.messDigestOTS.update(bArr, i4, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr2, i11);
            i10--;
            if (i10 <= 0) {
                return;
            }
            this.messDigestOTS.update(bArr2, i11, this.mdsize);
        }
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        int i4;
        int i10;
        WinternitzOTSVerify winternitzOTSVerify = this;
        int i11 = winternitzOTSVerify.mdsize;
        byte[] bArr3 = new byte[i11];
        winternitzOTSVerify.messDigestOTS.update(bArr, 0, bArr.length);
        winternitzOTSVerify.messDigestOTS.doFinal(bArr3, 0);
        int i12 = winternitzOTSVerify.f91504w;
        int i13 = ((winternitzOTSVerify.mdsize << 3) + (i12 - 1)) / i12;
        int log = winternitzOTSVerify.getLog((i13 << i12) + 1);
        int i14 = winternitzOTSVerify.f91504w;
        int i15 = winternitzOTSVerify.mdsize;
        int i16 = i15 * ((((log + i14) - 1) / i14) + i13);
        if (i16 != bArr2.length) {
            return null;
        }
        byte[] bArr4 = new byte[i16];
        int i17 = 8;
        if (8 % i14 == 0) {
            int i18 = 8 / i14;
            int i19 = (1 << i14) - 1;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            while (i22 < i11) {
                int i23 = i21;
                int i24 = 0;
                while (i24 < i18) {
                    int i25 = bArr3[i22] & i19;
                    int i26 = i20 + i25;
                    int i27 = winternitzOTSVerify.mdsize;
                    int i28 = i22;
                    hashSignatureBlock(bArr2, i23 * i27, i19 - i25, bArr4, i23 * i27);
                    bArr3[i28] = (byte) (bArr3[i28] >>> winternitzOTSVerify.f91504w);
                    i23++;
                    i24++;
                    i20 = i26;
                    i22 = i28;
                    i18 = i18;
                }
                i22++;
                i21 = i23;
            }
            int i29 = i21;
            int i30 = (i13 << winternitzOTSVerify.f91504w) - i20;
            int i31 = 0;
            while (i31 < log) {
                int i32 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, i29 * i32, i19 - (i30 & i19), bArr4, i29 * i32);
                int i33 = winternitzOTSVerify.f91504w;
                i30 >>>= i33;
                i29++;
                i31 += i33;
            }
        } else {
            long j4 = 0;
            if (i14 < 8) {
                int i34 = i15 / i14;
                int i35 = (1 << i14) - 1;
                int i36 = 0;
                int i37 = 0;
                int i38 = 0;
                int i39 = 0;
                while (i39 < i34) {
                    int i40 = i36;
                    long j10 = 0;
                    int i41 = 0;
                    while (i41 < winternitzOTSVerify.f91504w) {
                        j10 ^= (bArr3[i40] & 255) << (i41 << 3);
                        i40++;
                        i41++;
                        log = log;
                    }
                    int i42 = log;
                    int i43 = i38;
                    int i44 = 0;
                    while (i44 < i17) {
                        int i45 = (int) (j10 & i35);
                        int i46 = i37 + i45;
                        int i47 = this.mdsize;
                        winternitzOTSVerify = this;
                        hashSignatureBlock(bArr2, i43 * i47, i35 - i45, bArr4, i43 * i47);
                        j10 >>>= winternitzOTSVerify.f91504w;
                        i43++;
                        i44++;
                        i35 = i35;
                        i39 = i39;
                        i37 = i46;
                        i17 = 8;
                    }
                    i39++;
                    i38 = i43;
                    i36 = i40;
                    log = i42;
                    i17 = 8;
                }
                int i48 = log;
                int i49 = i35;
                int i50 = winternitzOTSVerify.mdsize % winternitzOTSVerify.f91504w;
                int i51 = 0;
                while (i51 < i50) {
                    j4 ^= (bArr3[i36] & 255) << (i51 << 3);
                    i36++;
                    i51++;
                    i37 = i37;
                    i38 = i38;
                }
                int i52 = i38;
                int i53 = i50 << 3;
                int i54 = 0;
                while (i54 < i53) {
                    int i55 = (int) (j4 & i49);
                    int i56 = i37 + i55;
                    int i57 = winternitzOTSVerify.mdsize;
                    hashSignatureBlock(bArr2, i52 * i57, i49 - i55, bArr4, i52 * i57);
                    int i58 = winternitzOTSVerify.f91504w;
                    j4 >>>= i58;
                    i52++;
                    i54 += i58;
                    i37 = i56;
                }
                int i59 = (i13 << winternitzOTSVerify.f91504w) - i37;
                int i60 = 0;
                while (i60 < i48) {
                    int i61 = winternitzOTSVerify.mdsize;
                    hashSignatureBlock(bArr2, i52 * i61, i49 - (i59 & i49), bArr4, i52 * i61);
                    int i62 = winternitzOTSVerify.f91504w;
                    i59 >>>= i62;
                    i52++;
                    i60 += i62;
                }
            } else if (i14 < 57) {
                int i63 = (i15 << 3) - i14;
                int i64 = (1 << i14) - 1;
                byte[] bArr5 = new byte[i15];
                int i65 = 0;
                int i66 = 0;
                int i67 = 0;
                while (i65 <= i63) {
                    int i68 = i65 >>> 3;
                    int i69 = i65 % 8;
                    int i70 = i63;
                    int i71 = i65 + winternitzOTSVerify.f91504w;
                    int i72 = (i71 + 7) >>> 3;
                    long j11 = 0;
                    int i73 = 0;
                    while (i68 < i72) {
                        j11 ^= (bArr3[i68] & 255) << (i73 << 3);
                        i73++;
                        i68++;
                        i72 = i72;
                        i71 = i71;
                    }
                    int i74 = i71;
                    long j12 = j11 >>> i69;
                    int i75 = i16;
                    long j13 = i64;
                    long j14 = j12 & j13;
                    int i76 = i13;
                    i66 = (int) (i66 + j14);
                    int i77 = winternitzOTSVerify.mdsize;
                    System.arraycopy(bArr2, i67 * i77, bArr5, 0, i77);
                    for (long j15 = j14; j15 < j13; j15++) {
                        winternitzOTSVerify.messDigestOTS.update(bArr5, 0, i15);
                        winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                    }
                    int i78 = winternitzOTSVerify.mdsize;
                    System.arraycopy(bArr5, 0, bArr4, i67 * i78, i78);
                    i67++;
                    i63 = i70;
                    i13 = i76;
                    i16 = i75;
                    i65 = i74;
                }
                int i79 = i13;
                i4 = i16;
                int i80 = i65 >>> 3;
                if (i80 < winternitzOTSVerify.mdsize) {
                    int i81 = i65 % 8;
                    int i82 = 0;
                    while (true) {
                        i10 = winternitzOTSVerify.mdsize;
                        if (i80 >= i10) {
                            break;
                        }
                        j4 ^= (bArr3[i80] & 255) << (i82 << 3);
                        i82++;
                        i80++;
                    }
                    long j16 = i64;
                    long j17 = (j4 >>> i81) & j16;
                    i66 = (int) (i66 + j17);
                    System.arraycopy(bArr2, i67 * i10, bArr5, 0, i10);
                    while (j17 < j16) {
                        winternitzOTSVerify.messDigestOTS.update(bArr5, 0, i15);
                        winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                        j17++;
                    }
                    int i83 = winternitzOTSVerify.mdsize;
                    System.arraycopy(bArr5, 0, bArr4, i67 * i83, i83);
                    i67++;
                }
                int i84 = (i79 << winternitzOTSVerify.f91504w) - i66;
                int i85 = 0;
                while (i85 < log) {
                    int i86 = winternitzOTSVerify.mdsize;
                    System.arraycopy(bArr2, i67 * i86, bArr5, 0, i86);
                    for (long j18 = i84 & i64; j18 < i64; j18++) {
                        winternitzOTSVerify.messDigestOTS.update(bArr5, 0, i15);
                        winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                    }
                    int i87 = winternitzOTSVerify.mdsize;
                    System.arraycopy(bArr5, 0, bArr4, i67 * i87, i87);
                    int i88 = winternitzOTSVerify.f91504w;
                    i84 >>>= i88;
                    i67++;
                    i85 += i88;
                }
                winternitzOTSVerify.messDigestOTS.update(bArr4, 0, i4);
                byte[] bArr6 = new byte[winternitzOTSVerify.mdsize];
                winternitzOTSVerify.messDigestOTS.doFinal(bArr6, 0);
                return bArr6;
            }
        }
        i4 = i16;
        winternitzOTSVerify.messDigestOTS.update(bArr4, 0, i4);
        byte[] bArr62 = new byte[winternitzOTSVerify.mdsize];
        winternitzOTSVerify.messDigestOTS.doFinal(bArr62, 0);
        return bArr62;
    }

    public int getLog(int i4) {
        int i10 = 1;
        int i11 = 2;
        while (i11 < i4) {
            i11 <<= 1;
            i10++;
        }
        return i10;
    }

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int i4 = this.f91504w;
        int i10 = ((digestSize << 3) + (i4 - 1)) / i4;
        int log = getLog((i10 << i4) + 1);
        int i11 = this.f91504w;
        return digestSize * (i10 + (((log + i11) - 1) / i11));
    }
}
