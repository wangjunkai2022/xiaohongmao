package shaded.org.apache.commons.codec.language;

import java.util.Locale;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: ColognePhonetic.java */
/* loaded from: classes5.dex */
public class e implements h9.h {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f93631a = {'A', 'E', 'I', 'J', 'O', Matrix.MATRIX_TYPE_RANDOM_UT, 'Y'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f93632b = {'S', 'C', Matrix.MATRIX_TYPE_ZERO};

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f93633c = {'W', 'F', 'P', 'V'};

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f93634d = {'G', 'K', 'Q'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f93635e = {'C', 'K', 'Q'};

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f93636f = {'A', 'H', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'O', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, Matrix.MATRIX_TYPE_RANDOM_UT, 'X'};

    /* renamed from: g  reason: collision with root package name */
    private static final char[] f93637g = {'S', Matrix.MATRIX_TYPE_ZERO};

    /* renamed from: h  reason: collision with root package name */
    private static final char[] f93638h = {'A', 'H', 'O', Matrix.MATRIX_TYPE_RANDOM_UT, 'K', 'Q', 'X'};

    /* renamed from: i  reason: collision with root package name */
    private static final char[] f93639i = {'T', 'D', 'X'};

    /* renamed from: j  reason: collision with root package name */
    private static final char[][] f93640j = {new char[]{196, 'A'}, new char[]{220, Matrix.MATRIX_TYPE_RANDOM_UT}, new char[]{214, 'O'}, new char[]{223, 'S'}};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColognePhonetic.java */
    /* loaded from: classes5.dex */
    public class b extends a {
        public b(char[] cArr) {
            super(cArr);
        }

        @Override // shaded.org.apache.commons.codec.language.e.a
        protected char[] a(int i4, int i10) {
            char[] cArr = new char[i10];
            char[] cArr2 = this.f93641a;
            System.arraycopy(cArr2, (cArr2.length - this.f93642b) + i4, cArr, 0, i10);
            return cArr;
        }

        public void c(char c10) {
            this.f93642b++;
            this.f93641a[e()] = c10;
        }

        public char d() {
            return this.f93641a[e()];
        }

        protected int e() {
            return this.f93641a.length - this.f93642b;
        }

        public char f() {
            this.f93642b--;
            return d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColognePhonetic.java */
    /* loaded from: classes5.dex */
    public class c extends a {
        public c(int i4) {
            super(i4);
        }

        @Override // shaded.org.apache.commons.codec.language.e.a
        protected char[] a(int i4, int i10) {
            char[] cArr = new char[i10];
            System.arraycopy(this.f93641a, i4, cArr, 0, i10);
            return cArr;
        }

        public void c(char c10) {
            char[] cArr = this.f93641a;
            int i4 = this.f93642b;
            cArr[i4] = c10;
            this.f93642b = i4 + 1;
        }
    }

    private static boolean b(char[] cArr, char c10) {
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    private String g(String str) {
        char[] charArray = str.toUpperCase(Locale.GERMAN).toCharArray();
        for (int i4 = 0; i4 < charArray.length; i4++) {
            if (charArray[i4] > 'Z') {
                char[][] cArr = f93640j;
                int length = cArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        char[] cArr2 = cArr[i10];
                        if (charArray[i4] == cArr2[0]) {
                            charArray[i4] = cArr2[1];
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        return new String(charArray);
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("This method's parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + obj.getClass().getName() + ".");
    }

    @Override // h9.h
    public String c(String str) {
        return d(str);
    }

    public String d(String str) {
        if (str == null) {
            return null;
        }
        String g4 = g(str);
        c cVar = new c(g4.length() * 2);
        b bVar = new b(g4.toCharArray());
        int b10 = bVar.b();
        char c10 = com.fasterxml.jackson.core.e.f13819f;
        char c11 = l.f93713d;
        while (b10 > 0) {
            char f10 = bVar.f();
            int b11 = bVar.b();
            char d4 = b11 > 0 ? bVar.d() : l.f93713d;
            char c12 = '4';
            if (b(f93631a, f10)) {
                c12 = '0';
            } else if (f10 == 'H' || f10 < 'A' || f10 > 'Z') {
                if (c10 == '/') {
                    b10 = b11;
                } else {
                    c12 = l.f93713d;
                }
            } else if (f10 == 'B' || (f10 == 'P' && d4 != 'H')) {
                c12 = '1';
            } else if ((f10 == 'D' || f10 == 'T') && !b(f93632b, d4)) {
                c12 = '2';
            } else if (b(f93633c, f10)) {
                c12 = '3';
            } else if (!b(f93634d, f10)) {
                if (f10 != 'X' || b(f93635e, c11)) {
                    if (f10 != 'S' && f10 != 'Z') {
                        if (f10 == 'C') {
                            if (c10 == '/') {
                            }
                        } else if (!b(f93639i, f10)) {
                            c12 = f10 == 'R' ? '7' : f10 == 'L' ? '5' : (f10 == 'M' || f10 == 'N') ? '6' : f10;
                        }
                    }
                    c12 = '8';
                } else {
                    bVar.c('S');
                    b11++;
                }
            }
            if (c12 != '-' && ((c10 != c12 && (c12 != '0' || c10 == '/')) || c12 < '0' || c12 > '8')) {
                cVar.c(c12);
            }
            c11 = f10;
            b10 = b11;
            c10 = c12;
        }
        return cVar.toString();
    }

    public boolean f(String str, String str2) {
        return d(str).equals(d(str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColognePhonetic.java */
    /* loaded from: classes5.dex */
    public abstract class a {

        /* renamed from: a  reason: collision with root package name */
        protected final char[] f93641a;

        /* renamed from: b  reason: collision with root package name */
        protected int f93642b;

        public a(char[] cArr) {
            this.f93642b = 0;
            this.f93641a = cArr;
            this.f93642b = cArr.length;
        }

        protected abstract char[] a(int i4, int i10);

        public int b() {
            return this.f93642b;
        }

        public String toString() {
            return new String(a(0, this.f93642b));
        }

        public a(int i4) {
            this.f93642b = 0;
            this.f93641a = new char[i4];
            this.f93642b = 0;
        }
    }
}
