package com.google.common.net;

import com.google.common.base.a0;
import com.google.common.escape.i;

/* compiled from: PercentEscaper.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class f extends i {

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f34767e = {'+'};

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f34768f = "0123456789ABCDEF".toCharArray();

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34769c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f34770d;

    public f(String str, boolean z9) {
        a0.E(str);
        if (!str.matches(".*[0-9A-Za-z].*")) {
            String str2 = str + "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            if (z9 && str2.contains(" ")) {
                throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
            }
            this.f34769c = z9;
            this.f34770d = h(str2);
            return;
        }
        throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
    }

    private static boolean[] h(String str) {
        char[] charArray = str.toCharArray();
        int i4 = -1;
        for (char c10 : charArray) {
            i4 = Math.max((int) c10, i4);
        }
        boolean[] zArr = new boolean[i4 + 1];
        for (char c11 : charArray) {
            zArr[c11] = true;
        }
        return zArr;
    }

    @Override // com.google.common.escape.i, com.google.common.escape.f
    public String b(String str) {
        a0.E(str);
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            boolean[] zArr = this.f34770d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return e(str, i4);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.escape.i
    public char[] d(int i4) {
        boolean[] zArr = this.f34770d;
        if (i4 >= zArr.length || !zArr[i4]) {
            if (i4 == 32 && this.f34769c) {
                return f34767e;
            }
            if (i4 <= 127) {
                char[] cArr = f34768f;
                return new char[]{'%', cArr[i4 >>> 4], cArr[i4 & 15]};
            } else if (i4 <= 2047) {
                char[] cArr2 = f34768f;
                char[] cArr3 = {'%', cArr2[(r14 >>> 4) | 12], cArr2[r14 & 15], '%', cArr2[(r14 & 3) | 8], cArr2[i4 & 15]};
                int i10 = i4 >>> 4;
                int i11 = i10 >>> 2;
                return cArr3;
            } else if (i4 <= 65535) {
                char[] cArr4 = f34768f;
                char[] cArr5 = {'%', 'E', cArr4[r14 >>> 2], '%', cArr4[(r14 & 3) | 8], cArr4[r14 & 15], '%', cArr4[(r14 & 3) | 8], cArr4[i4 & 15]};
                int i12 = i4 >>> 4;
                int i13 = i12 >>> 2;
                int i14 = i13 >>> 4;
                return cArr5;
            } else if (i4 <= 1114111) {
                char[] cArr6 = f34768f;
                char[] cArr7 = {'%', 'F', cArr6[(r14 >>> 2) & 7], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[i4 & 15]};
                int i15 = i4 >>> 4;
                int i16 = i15 >>> 2;
                int i17 = i16 >>> 4;
                int i18 = i17 >>> 2;
                int i19 = i18 >>> 4;
                return cArr7;
            } else {
                throw new IllegalArgumentException("Invalid unicode character value " + i4);
            }
        }
        return null;
    }

    @Override // com.google.common.escape.i
    protected int g(CharSequence charSequence, int i4, int i10) {
        a0.E(charSequence);
        while (i4 < i10) {
            char charAt = charSequence.charAt(i4);
            boolean[] zArr = this.f34770d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i4++;
        }
        return i4;
    }
}
