package com.google.common.escape;

import com.google.common.base.a0;

/* compiled from: UnicodeEscaper.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public abstract class i extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final int f34037b = 32;

    protected static int c(CharSequence charSequence, int i4, int i10) {
        a0.E(charSequence);
        if (i4 < i10) {
            int i11 = i4 + 1;
            char charAt = charSequence.charAt(i4);
            if (charAt < 55296 || charAt > 57343) {
                return charAt;
            }
            if (charAt > 56319) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected low surrogate character '");
                sb.append(charAt);
                sb.append("' with value ");
                sb.append((int) charAt);
                sb.append(" at index ");
                sb.append(i11 - 1);
                sb.append(" in '");
                sb.append((Object) charSequence);
                sb.append("'");
                throw new IllegalArgumentException(sb.toString());
            } else if (i11 == i10) {
                return -charAt;
            } else {
                char charAt2 = charSequence.charAt(i11);
                if (Character.isLowSurrogate(charAt2)) {
                    return Character.toCodePoint(charAt, charAt2);
                }
                throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i11 + " in '" + ((Object) charSequence) + "'");
            }
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static char[] f(char[] cArr, int i4, int i10) {
        if (i10 >= 0) {
            char[] cArr2 = new char[i10];
            if (i4 > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i4);
            }
            return cArr2;
        }
        throw new AssertionError("Cannot increase internal buffer any further");
    }

    @Override // com.google.common.escape.f
    public String b(String str) {
        a0.E(str);
        int length = str.length();
        int g4 = g(str, 0, length);
        return g4 == length ? str : e(str, g4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract char[] d(int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String e(String str, int i4) {
        int length = str.length();
        char[] a10 = h.a();
        int i10 = 0;
        int i11 = 0;
        while (i4 < length) {
            int c10 = c(str, i4, length);
            if (c10 >= 0) {
                char[] d4 = d(c10);
                int i12 = (Character.isSupplementaryCodePoint(c10) ? 2 : 1) + i4;
                if (d4 != null) {
                    int i13 = i4 - i10;
                    int i14 = i11 + i13;
                    int length2 = d4.length + i14;
                    if (a10.length < length2) {
                        a10 = f(a10, i11, length2 + (length - i4) + 32);
                    }
                    if (i13 > 0) {
                        str.getChars(i10, i4, a10, i11);
                        i11 = i14;
                    }
                    if (d4.length > 0) {
                        System.arraycopy(d4, 0, a10, i11, d4.length);
                        i11 += d4.length;
                    }
                    i10 = i12;
                }
                i4 = g(str, i12, length);
            } else {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
        }
        int i15 = length - i10;
        if (i15 > 0) {
            int i16 = i15 + i11;
            if (a10.length < i16) {
                a10 = f(a10, i11, i16);
            }
            str.getChars(i10, length, a10, i11);
            i11 = i16;
        }
        return new String(a10, 0, i11);
    }

    protected int g(CharSequence charSequence, int i4, int i10) {
        while (i4 < i10) {
            int c10 = c(charSequence, i4, i10);
            if (c10 < 0 || d(c10) != null) {
                break;
            }
            i4 += Character.isSupplementaryCodePoint(c10) ? 2 : 1;
        }
        return i4;
    }
}
