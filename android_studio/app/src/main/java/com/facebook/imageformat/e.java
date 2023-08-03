package com.facebook.imageformat;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;

/* compiled from: ImageFormatCheckerUtils.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e {
    private e() {
    }

    public static byte[] a(String value) {
        j.i(value);
        try {
            return value.getBytes("ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("ASCII not found!", e4);
        }
    }

    public static boolean b(final byte[] byteArray, final byte[] pattern, int offset) {
        j.i(byteArray);
        j.i(pattern);
        if (pattern.length + offset > byteArray.length) {
            return false;
        }
        for (int i4 = 0; i4 < pattern.length; i4++) {
            if (byteArray[offset + i4] != pattern[i4]) {
                return false;
            }
        }
        return true;
    }

    public static int c(final byte[] byteArray, final int byteArrayLen, final byte[] pattern, final int patternLen) {
        j.i(byteArray);
        j.i(pattern);
        if (patternLen > byteArrayLen) {
            return -1;
        }
        int i4 = 0;
        byte b10 = pattern[0];
        int i10 = byteArrayLen - patternLen;
        while (i4 <= i10) {
            if (byteArray[i4] != b10) {
                do {
                    i4++;
                    if (i4 > i10) {
                        break;
                    }
                } while (byteArray[i4] != b10);
            }
            if (i4 <= i10) {
                int i11 = i4 + 1;
                int i12 = (i11 + patternLen) - 1;
                for (int i13 = 1; i11 < i12 && byteArray[i11] == pattern[i13]; i13++) {
                    i11++;
                }
                if (i11 == i12) {
                    return i4;
                }
            }
            i4++;
        }
        return -1;
    }

    public static boolean d(final byte[] byteArray, final byte[] pattern) {
        return b(byteArray, pattern, 0);
    }
}
