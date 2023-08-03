package shaded.org.apache.commons.codec.language;

import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: Soundex.java */
/* loaded from: classes5.dex */
public class l implements h9.h {

    /* renamed from: d  reason: collision with root package name */
    public static final char f93713d = '-';

    /* renamed from: e  reason: collision with root package name */
    public static final String f93714e = "01230120022455012623010202";

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f93715f = f93714e.toCharArray();

    /* renamed from: g  reason: collision with root package name */
    public static final l f93716g = new l();

    /* renamed from: h  reason: collision with root package name */
    public static final l f93717h = new l(f93714e, false);

    /* renamed from: i  reason: collision with root package name */
    public static final l f93718i = new l("-123-12--22455-12623-1-2-2");
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    private int f93719a;

    /* renamed from: b  reason: collision with root package name */
    private final char[] f93720b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f93721c;

    public l() {
        this.f93719a = 4;
        this.f93720b = f93715f;
        this.f93721c = true;
    }

    private boolean f(char[] cArr) {
        for (char c10 : cArr) {
            if (c10 == '-') {
                return true;
            }
        }
        return false;
    }

    private char g(char c10) {
        int i4 = c10 - 'A';
        if (i4 >= 0) {
            char[] cArr = this.f93720b;
            if (i4 < cArr.length) {
                return cArr[i4];
            }
        }
        throw new IllegalArgumentException("The character is not mapped: " + c10 + " (index=" + i4 + ")");
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return i((String) obj);
        }
        throw new EncoderException("Parameter supplied to Soundex encode is not of type java.lang.String");
    }

    public int b(String str, String str2) throws EncoderException {
        return m.b(this, str, str2);
    }

    @Override // h9.h
    public String c(String str) {
        return i(str);
    }

    @Deprecated
    public int d() {
        return this.f93719a;
    }

    @Deprecated
    public void h(int i4) {
        this.f93719a = i4;
    }

    public String i(String str) {
        char g4;
        if (str == null) {
            return null;
        }
        String a10 = m.a(str);
        if (a10.length() == 0) {
            return a10;
        }
        char[] cArr = {'0', '0', '0', '0'};
        char charAt = a10.charAt(0);
        cArr[0] = charAt;
        char g10 = g(charAt);
        int i4 = 1;
        for (int i10 = 1; i10 < a10.length() && i4 < 4; i10++) {
            char charAt2 = a10.charAt(i10);
            if ((!this.f93721c || (charAt2 != 'H' && charAt2 != 'W')) && (g4 = g(charAt2)) != '-') {
                if (g4 != '0' && g4 != g10) {
                    cArr[i4] = g4;
                    i4++;
                }
                g10 = g4;
            }
        }
        return new String(cArr);
    }

    public l(char[] cArr) {
        this.f93719a = 4;
        char[] cArr2 = new char[cArr.length];
        this.f93720b = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        this.f93721c = !f(cArr2);
    }

    public l(String str) {
        this.f93719a = 4;
        char[] charArray = str.toCharArray();
        this.f93720b = charArray;
        this.f93721c = !f(charArray);
    }

    public l(String str, boolean z9) {
        this.f93719a = 4;
        this.f93720b = str.toCharArray();
        this.f93721c = z9;
    }
}
