package io.sentry.util;

import io.sentry.SentryLevel;
import io.sentry.o0;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.StringCharacterIterator;
import java.util.Locale;
import m8.a;

/* compiled from: StringUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f84073a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    private static final String f84074b = "0000-0000";

    /* renamed from: c  reason: collision with root package name */
    private static final String f84075c = "00000000-0000-0000-0000-000000000000";

    private q() {
    }

    @m8.g
    public static String a(long j4) {
        if (-1000 < j4 && j4 < 1000) {
            return j4 + " B";
        }
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator("kMGTPE");
        while (true) {
            if (j4 > -999950 && j4 < 999950) {
                return String.format(Locale.ROOT, "%.1f %cB", Double.valueOf(j4 / 1000.0d), Character.valueOf(stringCharacterIterator.current()));
            }
            j4 /= 1000;
            stringCharacterIterator.next();
        }
    }

    @m8.h
    public static String b(@m8.h String str, @m8.g o0 o0Var) {
        if (str != null && !str.isEmpty()) {
            try {
                return new StringBuilder(new BigInteger(1, MessageDigest.getInstance("SHA-1").digest(str.getBytes(f84073a))).toString(16)).toString();
            } catch (NoSuchAlgorithmException e4) {
                o0Var.b(SentryLevel.INFO, "SHA-1 isn't available to calculate the hash.", e4);
            } catch (Throwable th) {
                o0Var.c(SentryLevel.INFO, "string: %s could not calculate its hash", th, str);
            }
        }
        return null;
    }

    @m8.h
    public static String c(@m8.h String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(0, 1);
        Locale locale = Locale.ROOT;
        sb.append(substring.toUpperCase(locale));
        sb.append(str.substring(1).toLowerCase(locale));
        return sb.toString();
    }

    public static int d(@m8.g String str, char c10) {
        int i4 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (str.charAt(i10) == c10) {
                i4++;
            }
        }
        return i4;
    }

    @m8.h
    public static String e(@m8.h String str) {
        int i4;
        if (str != null) {
            int lastIndexOf = str.lastIndexOf(".");
            return (lastIndexOf < 0 || str.length() <= (i4 = lastIndexOf + 1)) ? str : str.substring(i4);
        }
        return null;
    }

    public static String f(@m8.g String str) {
        return str.equals(f84074b) ? f84075c : str;
    }

    @m8.h
    public static String g(@m8.h String str, @m8.h String str2) {
        return (str == null || str2 == null || !str.startsWith(str2) || !str.endsWith(str2)) ? str : str.substring(str2.length(), str.length() - str2.length());
    }
}
