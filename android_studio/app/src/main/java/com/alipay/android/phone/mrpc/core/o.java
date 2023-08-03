package com.alipay.android.phone.mrpc.core;

import android.text.format.Time;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6645a = Pattern.compile("([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f6646b = Pattern.compile("[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f6647a;

        /* renamed from: b  reason: collision with root package name */
        int f6648b;

        /* renamed from: c  reason: collision with root package name */
        int f6649c;

        a(int i4, int i10, int i11) {
            this.f6647a = i4;
            this.f6648b = i10;
            this.f6649c = i11;
        }
    }

    public static long a(String str) {
        int c10;
        int d4;
        int i4;
        a aVar;
        int i10;
        int i11;
        int i12;
        Matcher matcher = f6645a.matcher(str);
        if (matcher.find()) {
            i4 = b(matcher.group(1));
            c10 = c(matcher.group(2));
            d4 = d(matcher.group(3));
            aVar = e(matcher.group(4));
        } else {
            Matcher matcher2 = f6646b.matcher(str);
            if (!matcher2.find()) {
                throw new IllegalArgumentException();
            }
            c10 = c(matcher2.group(1));
            int b10 = b(matcher2.group(2));
            a e4 = e(matcher2.group(3));
            d4 = d(matcher2.group(4));
            i4 = b10;
            aVar = e4;
        }
        if (d4 >= 2038) {
            i10 = 1;
            i11 = 0;
            i12 = 2038;
        } else {
            i10 = i4;
            i11 = c10;
            i12 = d4;
        }
        Time time = new Time("UTC");
        time.set(aVar.f6649c, aVar.f6648b, aVar.f6647a, i10, i11, i12);
        return time.toMillis(false);
    }

    private static int b(String str) {
        return str.length() == 2 ? ((str.charAt(0) - '0') * 10) + (str.charAt(1) - '0') : str.charAt(0) - '0';
    }

    private static int c(String str) {
        int lowerCase = ((Character.toLowerCase(str.charAt(0)) + Character.toLowerCase(str.charAt(1))) + Character.toLowerCase(str.charAt(2))) - 291;
        if (lowerCase != 9) {
            if (lowerCase != 10) {
                if (lowerCase != 22) {
                    if (lowerCase != 26) {
                        if (lowerCase != 29) {
                            if (lowerCase != 32) {
                                if (lowerCase != 40) {
                                    if (lowerCase != 42) {
                                        if (lowerCase != 48) {
                                            switch (lowerCase) {
                                                case 35:
                                                    return 9;
                                                case 36:
                                                    return 4;
                                                case 37:
                                                    return 8;
                                                default:
                                                    throw new IllegalArgumentException();
                                            }
                                        }
                                        return 10;
                                    }
                                    return 5;
                                }
                                return 6;
                            }
                            return 3;
                        }
                        return 2;
                    }
                    return 7;
                }
                return 0;
            }
            return 1;
        }
        return 11;
    }

    private static int d(String str) {
        if (str.length() == 2) {
            int charAt = ((str.charAt(0) - '0') * 10) + (str.charAt(1) - '0');
            return charAt >= 70 ? charAt + 1900 : charAt + 2000;
        } else if (str.length() == 3) {
            return ((str.charAt(0) - '0') * 100) + ((str.charAt(1) - '0') * 10) + (str.charAt(2) - '0') + 1900;
        } else {
            if (str.length() == 4) {
                return ((str.charAt(0) - '0') * 1000) + ((str.charAt(1) - '0') * 100) + ((str.charAt(2) - '0') * 10) + (str.charAt(3) - '0');
            }
            return 1970;
        }
    }

    private static a e(String str) {
        int i4;
        int i10;
        int i11;
        int charAt = str.charAt(0) - '0';
        if (str.charAt(1) != ':') {
            i4 = 2;
            charAt = (charAt * 10) + (str.charAt(1) - '0');
        } else {
            i4 = 1;
        }
        int i12 = i4 + 1 + 1 + 1 + 1;
        return new a(charAt, ((str.charAt(i10) - '0') * 10) + (str.charAt(i11) - '0'), ((str.charAt(i12) - '0') * 10) + (str.charAt(i12 + 1) - '0'));
    }
}
