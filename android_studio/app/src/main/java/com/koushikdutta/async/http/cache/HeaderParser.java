package com.koushikdutta.async.http.cache;

/* loaded from: classes3.dex */
final class HeaderParser {

    /* loaded from: classes3.dex */
    public interface CacheControlHandler {
        void a(String str, String str2);
    }

    HeaderParser() {
    }

    public static void a(String str, CacheControlHandler cacheControlHandler) {
        int c10;
        String trim;
        if (str == null) {
            return;
        }
        int i4 = 0;
        while (i4 < str.length()) {
            int c11 = c(str, i4, "=,");
            String trim2 = str.substring(i4, c11).trim();
            if (c11 != str.length() && str.charAt(c11) != ',') {
                int d4 = d(str, c11 + 1);
                if (d4 < str.length() && str.charAt(d4) == '\"') {
                    int i10 = d4 + 1;
                    int c12 = c(str, i10, "\"");
                    trim = str.substring(i10, c12);
                    c10 = c12 + 1;
                } else {
                    c10 = c(str, d4, ",");
                    trim = str.substring(d4, c10).trim();
                }
                cacheControlHandler.a(trim2, trim);
                i4 = c10;
            } else {
                cacheControlHandler.a(trim2, null);
                i4 = c11 + 1;
            }
        }
    }

    public static int b(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    private static int c(String str, int i4, String str2) {
        while (i4 < str.length() && str2.indexOf(str.charAt(i4)) == -1) {
            i4++;
        }
        return i4;
    }

    private static int d(String str, int i4) {
        char charAt;
        while (i4 < str.length() && ((charAt = str.charAt(i4)) == ' ' || charAt == '\t')) {
            i4++;
        }
        return i4;
    }
}
