package com.googlecode.mp4parser.boxes.microsoft;

import com.alipay.sdk.util.i;
import com.googlecode.mp4parser.j;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Iterator;
import java.util.Vector;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: XtraBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;

    /* renamed from: q  reason: collision with root package name */
    public static final String f36708q = "Xtra";

    /* renamed from: r  reason: collision with root package name */
    public static final int f36709r = 8;

    /* renamed from: s  reason: collision with root package name */
    public static final int f36710s = 19;

    /* renamed from: t  reason: collision with root package name */
    public static final int f36711t = 21;

    /* renamed from: u  reason: collision with root package name */
    public static final int f36712u = 72;

    /* renamed from: v  reason: collision with root package name */
    private static final long f36713v = 11644473600000L;

    /* renamed from: w  reason: collision with root package name */
    private static final long f36714w = 10000;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36715x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36716y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36717z = null;

    /* renamed from: n  reason: collision with root package name */
    private boolean f36718n;

    /* renamed from: o  reason: collision with root package name */
    Vector<b> f36719o;

    /* renamed from: p  reason: collision with root package name */
    ByteBuffer f36720p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: XtraBox.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f36724a;

        /* renamed from: b  reason: collision with root package name */
        public String f36725b;

        /* renamed from: c  reason: collision with root package name */
        public long f36726c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f36727d;

        /* renamed from: e  reason: collision with root package name */
        public Date f36728e;

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(ByteBuffer byteBuffer) {
            try {
                byteBuffer.putInt(f());
                byteBuffer.putShort((short) this.f36724a);
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                int i4 = this.f36724a;
                if (i4 == 8) {
                    a.Q(byteBuffer, this.f36725b);
                } else if (i4 == 19) {
                    byteBuffer.putLong(this.f36726c);
                } else if (i4 != 21) {
                    byteBuffer.put(this.f36727d);
                } else {
                    byteBuffer.putLong(a.H(this.f36728e.getTime()));
                }
            } finally {
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int f() {
            int length;
            int i4 = this.f36724a;
            if (i4 == 8) {
                length = (this.f36725b.length() * 2) + 2;
            } else if (i4 == 19 || i4 == 21) {
                return 14;
            } else {
                length = this.f36727d.length;
            }
            return length + 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object g() {
            int i4 = this.f36724a;
            if (i4 != 8) {
                if (i4 != 19) {
                    if (i4 != 21) {
                        return this.f36727d;
                    }
                    return this.f36728e;
                }
                return new Long(this.f36726c);
            }
            return this.f36725b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(ByteBuffer byteBuffer) {
            int i4 = byteBuffer.getInt() - 6;
            this.f36724a = byteBuffer.getShort();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            int i10 = this.f36724a;
            if (i10 == 8) {
                this.f36725b = a.J(byteBuffer, i4);
            } else if (i10 == 19) {
                this.f36726c = byteBuffer.getLong();
            } else if (i10 != 21) {
                byte[] bArr = new byte[i4];
                this.f36727d = bArr;
                byteBuffer.get(bArr);
            } else {
                this.f36728e = new Date(a.A(byteBuffer.getLong()));
            }
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public String toString() {
            int i4 = this.f36724a;
            if (i4 == 8) {
                return "[string]" + this.f36725b;
            } else if (i4 == 19) {
                return "[long]" + String.valueOf(this.f36726c);
            } else if (i4 != 21) {
                return "[GUID](nonParsed)";
            } else {
                return "[filetime]" + this.f36728e.toString();
            }
        }

        /* synthetic */ c(c cVar) {
            this();
        }

        private c(String str) {
            this.f36724a = 8;
            this.f36725b = str;
        }

        /* synthetic */ c(String str, c cVar) {
            this(str);
        }

        private c(long j4) {
            this.f36724a = 19;
            this.f36726c = j4;
        }

        /* synthetic */ c(long j4, c cVar) {
            this(j4);
        }

        private c(Date date) {
            this.f36724a = 21;
            this.f36728e = date;
        }

        /* synthetic */ c(Date date, c cVar) {
            this(date);
        }
    }

    static {
        y();
    }

    public a() {
        super(f36708q);
        this.f36718n = false;
        this.f36719o = new Vector<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long A(long j4) {
        return (j4 / f36714w) - f36713v;
    }

    private b F(String str) {
        Iterator<b> it = this.f36719o.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.f36722b.equals(str)) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long H(long j4) {
        return (j4 + f36713v) * f36714w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String I(ByteBuffer byteBuffer, int i4) {
        byte[] bArr = new byte[i4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "US-ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("Shouldn't happen", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String J(ByteBuffer byteBuffer, int i4) {
        int i10 = (i4 / 2) - 1;
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr[i11] = byteBuffer.getChar();
        }
        byteBuffer.getChar();
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void P(ByteBuffer byteBuffer, String str) {
        try {
            byteBuffer.put(str.getBytes("US-ASCII"));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("Shouldn't happen", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Q(ByteBuffer byteBuffer, String str) {
        for (char c10 : str.toCharArray()) {
            byteBuffer.putChar(c10);
        }
        byteBuffer.putChar((char) 0);
    }

    private static /* synthetic */ void y() {
        e eVar = new e("XtraBox.java", a.class);
        f36715x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "", "", "", "java.lang.String"), 88);
        f36716y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAllTagNames", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "", "", "", "[Ljava.lang.String;"), 151);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTagValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:long", "name:value", "", "void"), 289);
        f36717z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFirstStringValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "java.lang.String"), 166);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFirstDateValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "java.util.Date"), 183);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFirstLongValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "java.lang.Long"), 200);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getValues", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "[Ljava.lang.Object;"), com.facebook.imageutils.c.f13388c);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "removeTag", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String", "name", "", "void"), 236);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTagValues", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:[Ljava.lang.String;", "name:values", "", "void"), 249);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTagValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:java.lang.String", "name:value", "", "void"), 265);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTagValue", "com.googlecode.mp4parser.boxes.microsoft.XtraBox", "java.lang.String:java.util.Date", "name:date", "", "void"), 276);
    }

    private int z() {
        int i4 = 0;
        for (int i10 = 0; i10 < this.f36719o.size(); i10++) {
            i4 += this.f36719o.elementAt(i10).g();
        }
        return i4;
    }

    public String[] B() {
        j.b().c(e.v(f36716y, this, this));
        String[] strArr = new String[this.f36719o.size()];
        for (int i4 = 0; i4 < this.f36719o.size(); i4++) {
            strArr[i4] = this.f36719o.elementAt(i4).f36722b;
        }
        return strArr;
    }

    public Date C(String str) {
        Object[] G2;
        j.b().c(e.w(A, this, this, str));
        for (Object obj : G(str)) {
            if (obj instanceof Date) {
                return (Date) obj;
            }
        }
        return null;
    }

    public Long D(String str) {
        Object[] G2;
        j.b().c(e.w(B, this, this, str));
        for (Object obj : G(str)) {
            if (obj instanceof Long) {
                return (Long) obj;
            }
        }
        return null;
    }

    public String E(String str) {
        Object[] G2;
        j.b().c(e.w(f36717z, this, this, str));
        for (Object obj : G(str)) {
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        return null;
    }

    public Object[] G(String str) {
        j.b().c(e.w(C, this, this, str));
        b F2 = F(str);
        if (F2 != null) {
            Object[] objArr = new Object[F2.f36723c.size()];
            for (int i4 = 0; i4 < F2.f36723c.size(); i4++) {
                objArr[i4] = ((c) F2.f36723c.elementAt(i4)).g();
            }
            return objArr;
        }
        return new Object[0];
    }

    public void K(String str) {
        j.b().c(e.w(D, this, this, str));
        b F2 = F(str);
        if (F2 != null) {
            this.f36719o.remove(F2);
        }
    }

    public void L(String str, long j4) {
        j.b().c(e.x(H, this, this, str, org.aspectj.runtime.internal.e.m(j4)));
        K(str);
        b bVar = new b(str, null);
        bVar.f36723c.addElement(new c(j4, (c) null));
        this.f36719o.addElement(bVar);
    }

    public void M(String str, String str2) {
        j.b().c(e.x(F, this, this, str, str2));
        O(str, new String[]{str2});
    }

    public void N(String str, Date date) {
        j.b().c(e.x(G, this, this, str, date));
        K(str);
        b bVar = new b(str, null);
        bVar.f36723c.addElement(new c(date, (c) null));
        this.f36719o.addElement(bVar);
    }

    public void O(String str, String[] strArr) {
        j.b().c(e.x(E, this, this, str, strArr));
        K(str);
        b bVar = new b(str, null);
        for (String str2 : strArr) {
            bVar.f36723c.addElement(new c(str2, (c) null));
        }
        this.f36719o.addElement(bVar);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        int z9;
        int remaining = byteBuffer.remaining();
        this.f36720p = byteBuffer.slice();
        this.f36718n = false;
        try {
            try {
                this.f36719o.clear();
                while (byteBuffer.remaining() > 0) {
                    b bVar = new b((b) null);
                    bVar.h(byteBuffer);
                    this.f36719o.addElement(bVar);
                }
                z9 = z();
            } catch (Exception e4) {
                this.f36718n = false;
                PrintStream printStream = System.err;
                printStream.println("Malformed Xtra Tag detected: " + e4.toString());
                e4.printStackTrace();
                byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
            }
            if (remaining == z9) {
                this.f36718n = true;
                return;
            }
            throw new RuntimeException("Improperly handled Xtra tag: Calculated sizes don't match ( " + remaining + "/" + z9 + ")");
        } finally {
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        if (this.f36718n) {
            for (int i4 = 0; i4 < this.f36719o.size(); i4++) {
                this.f36719o.elementAt(i4).f(byteBuffer);
            }
            return;
        }
        this.f36720p.rewind();
        byteBuffer.put(this.f36720p);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int limit;
        if (this.f36718n) {
            limit = z();
        } else {
            limit = this.f36720p.limit();
        }
        return limit;
    }

    public String toString() {
        j.b().c(e.v(f36715x, this, this));
        if (!j()) {
            m();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("XtraBox[");
        Iterator<b> it = this.f36719o.iterator();
        while (it.hasNext()) {
            b next = it.next();
            Iterator it2 = next.f36723c.iterator();
            while (it2.hasNext()) {
                stringBuffer.append(next.f36722b);
                stringBuffer.append("=");
                stringBuffer.append(((c) it2.next()).toString());
                stringBuffer.append(i.f6965b);
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: XtraBox.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f36721a;

        /* renamed from: b  reason: collision with root package name */
        private String f36722b;

        /* renamed from: c  reason: collision with root package name */
        private Vector<c> f36723c;

        private b() {
            this.f36723c = new Vector<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(ByteBuffer byteBuffer) {
            byteBuffer.putInt(g());
            byteBuffer.putInt(this.f36722b.length());
            a.P(byteBuffer, this.f36722b);
            byteBuffer.putInt(this.f36723c.size());
            for (int i4 = 0; i4 < this.f36723c.size(); i4++) {
                this.f36723c.elementAt(i4).e(byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int g() {
            int length = this.f36722b.length() + 12;
            for (int i4 = 0; i4 < this.f36723c.size(); i4++) {
                length += this.f36723c.elementAt(i4).f();
            }
            return length;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(ByteBuffer byteBuffer) {
            this.f36721a = byteBuffer.getInt();
            this.f36722b = a.I(byteBuffer, byteBuffer.getInt());
            int i4 = byteBuffer.getInt();
            for (int i10 = 0; i10 < i4; i10++) {
                c cVar = new c((c) null);
                cVar.h(byteBuffer);
                this.f36723c.addElement(cVar);
            }
            if (this.f36721a == g()) {
                return;
            }
            throw new RuntimeException("Improperly handled Xtra tag: Sizes don't match ( " + this.f36721a + "/" + g() + ") on " + this.f36722b);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f36722b);
            stringBuffer.append(" [");
            stringBuffer.append(this.f36721a);
            stringBuffer.append("/");
            stringBuffer.append(this.f36723c.size());
            stringBuffer.append("]:\n");
            for (int i4 = 0; i4 < this.f36723c.size(); i4++) {
                stringBuffer.append("  ");
                stringBuffer.append(this.f36723c.elementAt(i4).toString());
                stringBuffer.append("\n");
            }
            return stringBuffer.toString();
        }

        /* synthetic */ b(b bVar) {
            this();
        }

        /* synthetic */ b(String str, b bVar) {
            this(str);
        }

        private b(String str) {
            this();
            this.f36722b = str;
        }
    }

    public a(String str) {
        super(str);
        this.f36718n = false;
        this.f36719o = new Vector<>();
    }
}
