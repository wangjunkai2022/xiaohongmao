package org.aspectj.runtime.reflect;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import kotlin.text.Typography;
import okhttp3.HttpUrl;

/* compiled from: SignatureImpl.java */
/* loaded from: classes4.dex */
abstract class l implements org.aspectj.lang.e {

    /* renamed from: h  reason: collision with root package name */
    private static boolean f91091h = true;

    /* renamed from: i  reason: collision with root package name */
    static final char f91092i = '-';

    /* renamed from: j  reason: collision with root package name */
    static String[] f91093j = new String[0];

    /* renamed from: k  reason: collision with root package name */
    static Class[] f91094k = new Class[0];

    /* renamed from: l  reason: collision with root package name */
    static final String f91095l = ":";

    /* renamed from: a  reason: collision with root package name */
    int f91096a;

    /* renamed from: b  reason: collision with root package name */
    String f91097b;

    /* renamed from: c  reason: collision with root package name */
    String f91098c;

    /* renamed from: d  reason: collision with root package name */
    Class f91099d;

    /* renamed from: e  reason: collision with root package name */
    a f91100e;

    /* renamed from: f  reason: collision with root package name */
    private String f91101f;

    /* renamed from: g  reason: collision with root package name */
    ClassLoader f91102g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SignatureImpl.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(int i4, String str);

        String get(int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SignatureImpl.java */
    /* loaded from: classes4.dex */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private SoftReference f91103a;

        public b() {
            c();
        }

        private String[] b() {
            return (String[]) this.f91103a.get();
        }

        private String[] c() {
            String[] strArr = new String[3];
            this.f91103a = new SoftReference(strArr);
            return strArr;
        }

        @Override // org.aspectj.runtime.reflect.l.a
        public void a(int i4, String str) {
            String[] b10 = b();
            if (b10 == null) {
                b10 = c();
            }
            b10[i4] = str;
        }

        @Override // org.aspectj.runtime.reflect.l.a
        public String get(int i4) {
            String[] b10 = b();
            if (b10 == null) {
                return null;
            }
            return b10[i4];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(int i4, String str, Class cls) {
        this.f91102g = null;
        this.f91096a = i4;
        this.f91097b = str;
        this.f91099d = cls;
    }

    static void A(boolean z9) {
        f91091h = z9;
    }

    private ClassLoader x() {
        if (this.f91102g == null) {
            this.f91102g = getClass().getClassLoader();
        }
        return this.f91102g;
    }

    static boolean y() {
        return f91091h;
    }

    String B(Class cls) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (cls.isArray()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(B(cls.getComponentType()));
            stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return stringBuffer.toString();
        }
        return C(cls.getName()).replace(Typography.dollar, '.');
    }

    String C(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String D(org.aspectj.runtime.reflect.n r3) {
        /*
            r2 = this;
            boolean r0 = org.aspectj.runtime.reflect.l.f91091h
            if (r0 == 0) goto L1b
            org.aspectj.runtime.reflect.l$a r0 = r2.f91100e
            if (r0 != 0) goto L14
            org.aspectj.runtime.reflect.l$b r0 = new org.aspectj.runtime.reflect.l$b     // Catch: java.lang.Throwable -> L10
            r0.<init>()     // Catch: java.lang.Throwable -> L10
            r2.f91100e = r0     // Catch: java.lang.Throwable -> L10
            goto L1b
        L10:
            r0 = 0
            org.aspectj.runtime.reflect.l.f91091h = r0
            goto L1b
        L14:
            int r1 = r3.f91118i
            java.lang.String r0 = r0.get(r1)
            goto L1c
        L1b:
            r0 = 0
        L1c:
            if (r0 != 0) goto L22
            java.lang.String r0 = r2.q(r3)
        L22:
            boolean r1 = org.aspectj.runtime.reflect.l.f91091h
            if (r1 == 0) goto L2d
            org.aspectj.runtime.reflect.l$a r1 = r2.f91100e
            int r3 = r3.f91118i
            r1.a(r3, r0)
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.aspectj.runtime.reflect.l.D(org.aspectj.runtime.reflect.n):java.lang.String");
    }

    @Override // org.aspectj.lang.e
    public Class a() {
        if (this.f91099d == null) {
            this.f91099d = u(2);
        }
        return this.f91099d;
    }

    @Override // org.aspectj.lang.e
    public final String b() {
        return D(n.f91107j);
    }

    @Override // org.aspectj.lang.e
    public final String d() {
        return D(n.f91109l);
    }

    @Override // org.aspectj.lang.e
    public int getModifiers() {
        if (this.f91096a == -1) {
            this.f91096a = r(0);
        }
        return this.f91096a;
    }

    @Override // org.aspectj.lang.e
    public String getName() {
        if (this.f91097b == null) {
            this.f91097b = s(1);
        }
        return this.f91097b;
    }

    @Override // org.aspectj.lang.e
    public String m() {
        if (this.f91098c == null) {
            this.f91098c = a().getName();
        }
        return this.f91098c;
    }

    void n(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i4 = 0; i4 < clsArr.length; i4++) {
            if (i4 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(w(clsArr[i4]));
        }
    }

    void o(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i4 = 0; i4 < clsArr.length; i4++) {
            if (i4 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(B(clsArr[i4]));
        }
    }

    void p(StringBuffer stringBuffer, Class[] clsArr) {
        n(stringBuffer, clsArr);
    }

    protected abstract String q(n nVar);

    int r(int i4) {
        return Integer.parseInt(s(i4), 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String s(int i4) {
        int indexOf = this.f91101f.indexOf(45);
        int i10 = 0;
        while (true) {
            int i11 = i4 - 1;
            if (i4 <= 0) {
                break;
            }
            i10 = indexOf + 1;
            indexOf = this.f91101f.indexOf(45, i10);
            i4 = i11;
        }
        if (indexOf == -1) {
            indexOf = this.f91101f.length();
        }
        return this.f91101f.substring(i10, indexOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String[] t(int i4) {
        StringTokenizer stringTokenizer = new StringTokenizer(s(i4), f91095l);
        int countTokens = stringTokenizer.countTokens();
        String[] strArr = new String[countTokens];
        for (int i10 = 0; i10 < countTokens; i10++) {
            strArr[i10] = stringTokenizer.nextToken();
        }
        return strArr;
    }

    @Override // org.aspectj.lang.e
    public final String toString() {
        return D(n.f91108k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class u(int i4) {
        return e.h(s(i4), x());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class[] v(int i4) {
        StringTokenizer stringTokenizer = new StringTokenizer(s(i4), f91095l);
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i10 = 0; i10 < countTokens; i10++) {
            clsArr[i10] = e.h(stringTokenizer.nextToken(), x());
        }
        return clsArr;
    }

    String w(Class cls) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (cls.isArray()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(w(cls.getComponentType()));
            stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return stringBuffer.toString();
        }
        return cls.getName().replace(Typography.dollar, '.');
    }

    public void z(ClassLoader classLoader) {
        this.f91102g = classLoader;
    }

    public l(String str) {
        this.f91096a = -1;
        this.f91102g = null;
        this.f91101f = str;
    }
}
