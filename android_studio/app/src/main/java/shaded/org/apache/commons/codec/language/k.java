package shaded.org.apache.commons.codec.language;

import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: RefinedSoundex.java */
/* loaded from: classes5.dex */
public class k implements h9.h {

    /* renamed from: b  reason: collision with root package name */
    public static final String f93709b = "01360240043788015936020505";

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f93710c = f93709b.toCharArray();

    /* renamed from: d  reason: collision with root package name */
    public static final k f93711d = new k();

    /* renamed from: a  reason: collision with root package name */
    private final char[] f93712a;

    public k() {
        this.f93712a = f93710c;
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return f((String) obj);
        }
        throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    }

    public int b(String str, String str2) throws EncoderException {
        return m.b(this, str, str2);
    }

    @Override // h9.h
    public String c(String str) {
        return f(str);
    }

    char d(char c10) {
        if (Character.isLetter(c10)) {
            return this.f93712a[Character.toUpperCase(c10) - 'A'];
        }
        return (char) 0;
    }

    public String f(String str) {
        if (str == null) {
            return null;
        }
        String a10 = m.a(str);
        if (a10.length() == 0) {
            return a10;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(a10.charAt(0));
        char c10 = '*';
        for (int i4 = 0; i4 < a10.length(); i4++) {
            char d4 = d(a10.charAt(i4));
            if (d4 != c10) {
                if (d4 != 0) {
                    sb.append(d4);
                }
                c10 = d4;
            }
        }
        return sb.toString();
    }

    public k(char[] cArr) {
        char[] cArr2 = new char[cArr.length];
        this.f93712a = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }

    public k(String str) {
        this.f93712a = str.toCharArray();
    }
}
