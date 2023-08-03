package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;
import java.util.Arrays;

/* compiled from: BigDecimalParser.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final int f13910b = 1000;

    /* renamed from: a  reason: collision with root package name */
    private final char[] f13911a;

    a(char[] cArr) {
        this.f13911a = cArr;
    }

    private int a(int i4, long j4) {
        long j10 = i4 - j4;
        if (j10 > 2147483647L || j10 < -2147483648L) {
            throw new NumberFormatException("Scale out of range: " + j10 + " while adjusting scale " + i4 + " to exponent " + j4);
        }
        return (int) j10;
    }

    public static BigDecimal b(String str) {
        return c(str.toCharArray());
    }

    public static BigDecimal c(char[] cArr) {
        String str;
        int length = cArr.length;
        try {
            if (length < 500) {
                return new BigDecimal(cArr);
            }
            return new a(cArr).e(length / 10);
        } catch (NumberFormatException e4) {
            String message = e4.getMessage();
            if (message == null) {
                message = "Not a valid number representation";
            }
            if (cArr.length <= 1000) {
                str = new String(cArr);
            } else {
                str = new String(Arrays.copyOfRange(cArr, 0, 1000)) + "(truncated, full length is " + cArr.length + " chars)";
            }
            throw new NumberFormatException("Value \"" + str + "\" can not be represented as `java.math.BigDecimal`, reason: " + message);
        }
    }

    public static BigDecimal d(char[] cArr, int i4, int i10) {
        if (i4 > 0 || i10 != cArr.length) {
            cArr = Arrays.copyOfRange(cArr, i4, i10 + i4);
        }
        return c(cArr);
    }

    private BigDecimal e(int i4) {
        int i10;
        int i11;
        BigDecimal f10;
        int length = this.f13911a.length;
        int i12 = -1;
        int i13 = 0;
        int i14 = -1;
        boolean z9 = false;
        boolean z10 = false;
        int i15 = 0;
        boolean z11 = false;
        for (int i16 = 0; i16 < length; i16++) {
            char c10 = this.f13911a[i16];
            if (c10 != '+') {
                if (c10 == 'E' || c10 == 'e') {
                    if (i12 >= 0) {
                        throw new NumberFormatException("Multiple exponent markers");
                    }
                    i12 = i16;
                } else if (c10 != '-') {
                    if (c10 != '.') {
                        if (i14 >= 0 && i12 == -1) {
                            i13++;
                        }
                    } else if (i14 >= 0) {
                        throw new NumberFormatException("Multiple decimal points");
                    } else {
                        i14 = i16;
                    }
                } else if (i12 >= 0) {
                    if (z10) {
                        throw new NumberFormatException("Multiple signs in exponent");
                    }
                    z10 = true;
                } else if (z9) {
                    throw new NumberFormatException("Multiple signs in number");
                } else {
                    i15 = i16 + 1;
                    z9 = true;
                    z11 = true;
                }
            } else if (i12 >= 0) {
                if (z10) {
                    throw new NumberFormatException("Multiple signs in exponent");
                }
                z10 = true;
            } else if (z9) {
                throw new NumberFormatException("Multiple signs in number");
            } else {
                i15 = i16 + 1;
                z9 = true;
            }
        }
        if (i12 >= 0) {
            i10 = 1;
            i11 = Integer.parseInt(new String(this.f13911a, i12 + 1, (length - i12) - 1));
            i13 = a(i13, i11);
            length = i12;
        } else {
            i10 = 1;
            i11 = 0;
        }
        if (i14 >= 0) {
            int i17 = (length - i14) - i10;
            f10 = f(i15, i14 - i15, i11, i4).add(f(i14 + i10, i17, i11 - i17, i4));
        } else {
            f10 = f(i15, length - i15, i11, i4);
        }
        if (i13 != 0) {
            f10 = f10.setScale(i13);
        }
        return z11 ? f10.negate() : f10;
    }

    private BigDecimal f(int i4, int i10, int i11, int i12) {
        if (i10 <= i12) {
            return i10 == 0 ? BigDecimal.ZERO : new BigDecimal(this.f13911a, i4, i10).movePointRight(i11);
        }
        int i13 = i10 / 2;
        return f(i4, i13, (i11 + i10) - i13, i12).add(f(i4 + i13, i10 - i13, i11, i12));
    }
}
