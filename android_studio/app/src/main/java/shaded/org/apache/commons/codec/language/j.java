package shaded.org.apache.commons.codec.language;

import java.util.regex.Pattern;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: Nysiis.java */
/* loaded from: classes5.dex */
public class j implements h9.h {

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f93690b = {'A'};

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f93691c = {'A', 'F'};

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f93692d = {'C'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f93693e = {'F', 'F'};

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f93694f = {'G'};

    /* renamed from: g  reason: collision with root package name */
    private static final char[] f93695g = {'N'};

    /* renamed from: h  reason: collision with root package name */
    private static final char[] f93696h = {'N', 'N'};

    /* renamed from: i  reason: collision with root package name */
    private static final char[] f93697i = {'S'};

    /* renamed from: j  reason: collision with root package name */
    private static final char[] f93698j = {'S', 'S', 'S'};

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f93699k = Pattern.compile("^MAC");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f93700l = Pattern.compile("^KN");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f93701m = Pattern.compile("^K");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f93702n = Pattern.compile("^(PH|PF)");

    /* renamed from: o  reason: collision with root package name */
    private static final Pattern f93703o = Pattern.compile("^SCH");

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f93704p = Pattern.compile("(EE|IE)$");

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f93705q = Pattern.compile("(DT|RT|RD|NT|ND)$");

    /* renamed from: r  reason: collision with root package name */
    private static final char f93706r = ' ';

    /* renamed from: s  reason: collision with root package name */
    private static final int f93707s = 6;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f93708a;

    public j() {
        this(true);
    }

    private static boolean d(char c10) {
        return c10 == 'A' || c10 == 'E' || c10 == 'I' || c10 == 'O' || c10 == 'U';
    }

    private static char[] g(char c10, char c11, char c12, char c13) {
        if (c11 == 'E' && c12 == 'V') {
            return f93691c;
        }
        if (d(c11)) {
            return f93690b;
        }
        if (c11 == 'Q') {
            return f93694f;
        }
        if (c11 == 'Z') {
            return f93697i;
        }
        if (c11 == 'M') {
            return f93695g;
        }
        if (c11 == 'K') {
            if (c12 == 'N') {
                return f93696h;
            }
            return f93692d;
        } else if (c11 == 'S' && c12 == 'C' && c13 == 'H') {
            return f93698j;
        } else {
            if (c11 == 'P' && c12 == 'H') {
                return f93693e;
            }
            return (c11 != 'H' || (d(c10) && d(c12))) ? (c11 == 'W' && d(c10)) ? new char[]{c10} : new char[]{c11} : new char[]{c10};
        }
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return f((String) obj);
        }
        throw new EncoderException("Parameter supplied to Nysiis encode is not of type java.lang.String");
    }

    public boolean b() {
        return this.f93708a;
    }

    @Override // h9.h
    public String c(String str) {
        return f(str);
    }

    public String f(String str) {
        if (str == null) {
            return null;
        }
        String a10 = m.a(str);
        if (a10.length() == 0) {
            return a10;
        }
        String replaceFirst = f93705q.matcher(f93704p.matcher(f93703o.matcher(f93702n.matcher(f93701m.matcher(f93700l.matcher(f93699k.matcher(a10).replaceFirst("MCC")).replaceFirst("NN")).replaceFirst("C")).replaceFirst("FF")).replaceFirst("SSS")).replaceFirst("Y")).replaceFirst("D");
        StringBuilder sb = new StringBuilder(replaceFirst.length());
        sb.append(replaceFirst.charAt(0));
        char[] charArray = replaceFirst.toCharArray();
        int length = charArray.length;
        int i4 = 1;
        while (i4 < length) {
            int i10 = length - 1;
            char c10 = f93706r;
            char c11 = i4 < i10 ? charArray[i4 + 1] : f93706r;
            if (i4 < length - 2) {
                c10 = charArray[i4 + 2];
            }
            int i11 = i4 - 1;
            char[] g4 = g(charArray[i11], charArray[i4], c11, c10);
            System.arraycopy(g4, 0, charArray, i4, g4.length);
            if (charArray[i4] != charArray[i11]) {
                sb.append(charArray[i4]);
            }
            i4++;
        }
        if (sb.length() > 1) {
            char charAt = sb.charAt(sb.length() - 1);
            if (charAt == 'S') {
                sb.deleteCharAt(sb.length() - 1);
                charAt = sb.charAt(sb.length() - 1);
            }
            if (sb.length() > 2 && sb.charAt(sb.length() - 2) == 'A' && charAt == 'Y') {
                sb.deleteCharAt(sb.length() - 2);
            }
            if (charAt == 'A') {
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        String sb2 = sb.toString();
        return b() ? sb2.substring(0, Math.min(6, sb2.length())) : sb2;
    }

    public j(boolean z9) {
        this.f93708a = z9;
    }
}
