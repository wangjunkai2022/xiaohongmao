package com.google.common.base;

import com.ksyun.media.player.KSYMediaMeta;

/* compiled from: Utf8.java */
@h3.b(emulated = true)
@h3.a
/* loaded from: classes2.dex */
public final class m0 {
    private m0() {
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i10 = length;
        while (true) {
            if (i4 < length) {
                char charAt = charSequence.charAt(i4);
                if (charAt >= 2048) {
                    i10 += b(charSequence, i4);
                    break;
                }
                i10 += (127 - charAt) >>> 31;
                i4++;
            } else {
                break;
            }
        }
        if (i10 >= length) {
            return i10;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i10 + KSYMediaMeta.AV_CH_WIDE_RIGHT));
    }

    private static int b(CharSequence charSequence, int i4) {
        int length = charSequence.length();
        int i10 = 0;
        while (i4 < length) {
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i10 += (127 - charAt) >>> 31;
            } else {
                i10 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i4) == charAt) {
                        throw new IllegalArgumentException(f(i4));
                    }
                    i4++;
                }
            }
            i4++;
        }
        return i10;
    }

    public static boolean c(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    public static boolean d(byte[] bArr, int i4, int i10) {
        int i11 = i10 + i4;
        a0.f0(i4, i11, bArr.length);
        while (i4 < i11) {
            if (bArr[i4] < 0) {
                return e(bArr, i4, i11);
            }
            i4++;
        }
        return true;
    }

    private static boolean e(byte[] bArr, int i4, int i10) {
        byte b10;
        while (i4 < i10) {
            int i11 = i4 + 1;
            byte b11 = bArr[i4];
            if (b11 < 0) {
                if (b11 < -32) {
                    if (i11 != i10 && b11 >= -62) {
                        i4 = i11 + 1;
                        if (bArr[i11] > -65) {
                        }
                    }
                    return false;
                } else if (b11 < -16) {
                    int i12 = i11 + 1;
                    if (i12 < i10 && (b10 = bArr[i11]) <= -65 && ((b11 != -32 || b10 >= -96) && (b11 != -19 || -96 > b10))) {
                        i4 = i12 + 1;
                        if (bArr[i12] > -65) {
                        }
                    }
                    return false;
                } else if (i11 + 2 >= i10) {
                    return false;
                } else {
                    int i13 = i11 + 1;
                    byte b12 = bArr[i11];
                    if (b12 <= -65 && (((b11 << c.F) + (b12 + 112)) >> 30) == 0) {
                        int i14 = i13 + 1;
                        if (bArr[i13] <= -65) {
                            i11 = i14 + 1;
                            if (bArr[i14] > -65) {
                            }
                        }
                    }
                    return false;
                }
            }
            i4 = i11;
        }
        return true;
    }

    private static String f(int i4) {
        return "Unpaired surrogate at index " + i4;
    }
}
