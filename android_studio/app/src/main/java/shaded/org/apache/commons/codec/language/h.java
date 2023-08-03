package shaded.org.apache.commons.codec.language;

import androidx.exifinterface.media.ExifInterface;
import java.util.Locale;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: MatchRatingApproachEncoder.java */
/* loaded from: classes5.dex */
public class h implements h9.h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f93672a = " ";

    /* renamed from: b  reason: collision with root package name */
    private static final String f93673b = "";

    /* renamed from: c  reason: collision with root package name */
    private static final int f93674c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f93675d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final int f93676e = 3;

    /* renamed from: f  reason: collision with root package name */
    private static final int f93677f = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final int f93678g = 5;

    /* renamed from: h  reason: collision with root package name */
    private static final int f93679h = 6;

    /* renamed from: i  reason: collision with root package name */
    private static final int f93680i = 7;

    /* renamed from: j  reason: collision with root package name */
    private static final int f93681j = 11;

    /* renamed from: k  reason: collision with root package name */
    private static final int f93682k = 12;

    /* renamed from: l  reason: collision with root package name */
    private static final String f93683l = "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu";

    /* renamed from: m  reason: collision with root package name */
    private static final String f93684m = "ÀàÈèÌìÒòÙùÁáÉéÍíÓóÚúÝýÂâÊêÎîÔôÛûŶŷÃãÕõÑñÄäËëÏïÖöÜüŸÿÅåÇçŐőŰű";

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f93685n = {"BB", "CC", "DD", "FF", "GG", "HH", "JJ", "KK", "LL", "MM", "NN", "PP", "QQ", "RR", "SS", "TT", "VV", "WW", "XX", "YY", "ZZ"};

    @Override // h9.f
    public final Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("Parameter supplied to Match Rating Approach encoder is not of type java.lang.String");
    }

    String b(String str) {
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        String[] strArr = {"\\-", "[&]", "\\'", "\\.", "[\\,]"};
        for (int i4 = 0; i4 < 5; i4++) {
            upperCase = upperCase.replaceAll(strArr[i4], "");
        }
        return j(upperCase).replaceAll("\\s+", "");
    }

    @Override // h9.h
    public final String c(String str) {
        return (str == null || "".equalsIgnoreCase(str) || f93672a.equalsIgnoreCase(str) || str.length() == 1) ? "" : d(k(l(b(str))));
    }

    String d(String str) {
        int length = str.length();
        if (length > 6) {
            String substring = str.substring(0, 3);
            String substring2 = str.substring(length - 3, length);
            return substring + substring2;
        }
        return str;
    }

    int f(int i4) {
        if (i4 <= 4) {
            return 5;
        }
        if (i4 <= 7) {
            return 4;
        }
        if (i4 <= 11) {
            return 3;
        }
        return i4 == 12 ? 2 : 1;
    }

    public boolean g(String str, String str2) {
        if (str == null || "".equalsIgnoreCase(str) || f93672a.equalsIgnoreCase(str) || str2 == null || "".equalsIgnoreCase(str2) || f93672a.equalsIgnoreCase(str2) || str.length() == 1 || str2.length() == 1) {
            return false;
        }
        if (str.equalsIgnoreCase(str2)) {
            return true;
        }
        String b10 = b(str);
        String b11 = b(str2);
        String l10 = l(b10);
        String l11 = l(b11);
        String k10 = k(l10);
        String k11 = k(l11);
        String d4 = d(k10);
        String d10 = d(k11);
        if (Math.abs(d4.length() - d10.length()) >= 3) {
            return false;
        }
        return i(d4, d10) >= f(Math.abs(d4.length() + d10.length()));
    }

    boolean h(String str) {
        return str.equalsIgnoreCase(ExifInterface.LONGITUDE_EAST) || str.equalsIgnoreCase(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS) || str.equalsIgnoreCase("O") || str.equalsIgnoreCase("I") || str.equalsIgnoreCase("U");
    }

    int i(String str, String str2) {
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        int length = str.length() - 1;
        int length2 = str2.length() - 1;
        int i4 = 0;
        while (i4 < charArray.length && i4 <= length2) {
            int i10 = i4 + 1;
            String substring = str.substring(i4, i10);
            int i11 = length - i4;
            String substring2 = str.substring(i11, i11 + 1);
            String substring3 = str2.substring(i4, i10);
            int i12 = length2 - i4;
            String substring4 = str2.substring(i12, i12 + 1);
            if (substring.equals(substring3)) {
                charArray[i4] = ' ';
                charArray2[i4] = ' ';
            }
            if (substring2.equals(substring4)) {
                charArray[i11] = ' ';
                charArray2[i12] = ' ';
            }
            i4 = i10;
        }
        String replaceAll = new String(charArray).replaceAll("\\s+", "");
        String replaceAll2 = new String(charArray2).replaceAll("\\s+", "");
        if (replaceAll.length() > replaceAll2.length()) {
            return Math.abs(6 - replaceAll.length());
        }
        return Math.abs(6 - replaceAll2.length());
    }

    String j(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            int indexOf = f93684m.indexOf(charAt);
            if (indexOf > -1) {
                sb.append(f93683l.charAt(indexOf));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    String k(String str) {
        String[] strArr;
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        for (String str2 : f93685n) {
            if (upperCase.contains(str2)) {
                upperCase = upperCase.replace(str2, str2.substring(0, 1));
            }
        }
        return upperCase;
    }

    String l(String str) {
        String substring = str.substring(0, 1);
        String replaceAll = str.replaceAll(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "").replaceAll(ExifInterface.LONGITUDE_EAST, "").replaceAll("I", "").replaceAll("O", "").replaceAll("U", "").replaceAll("\\s{2,}\\b", f93672a);
        if (h(substring)) {
            return substring + replaceAll;
        }
        return replaceAll;
    }
}
