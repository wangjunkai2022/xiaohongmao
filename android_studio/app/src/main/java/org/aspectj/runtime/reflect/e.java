package org.aspectj.runtime.reflect;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.StringTokenizer;
import k8.c0;
import k8.r;
import k8.t;
import k8.z;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.h;

/* compiled from: Factory.java */
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: e  reason: collision with root package name */
    static Hashtable f91069e;

    /* renamed from: f  reason: collision with root package name */
    private static Object[] f91070f;

    /* renamed from: g  reason: collision with root package name */
    static /* synthetic */ Class f91071g;

    /* renamed from: a  reason: collision with root package name */
    Class f91072a;

    /* renamed from: b  reason: collision with root package name */
    ClassLoader f91073b;

    /* renamed from: c  reason: collision with root package name */
    String f91074c;

    /* renamed from: d  reason: collision with root package name */
    int f91075d = 0;

    static {
        Hashtable hashtable = new Hashtable();
        f91069e = hashtable;
        hashtable.put("void", Void.TYPE);
        f91069e.put(TypedValues.Custom.S_BOOLEAN, Boolean.TYPE);
        f91069e.put(io.sentry.profilemeasurements.a.f83541m, Byte.TYPE);
        f91069e.put("char", Character.TYPE);
        f91069e.put("short", Short.TYPE);
        f91069e.put("int", Integer.TYPE);
        f91069e.put("long", Long.TYPE);
        f91069e.put(TypedValues.Custom.S_FLOAT, Float.TYPE);
        f91069e.put("double", Double.TYPE);
        f91070f = new Object[0];
    }

    public e(String str, Class cls) {
        this.f91074c = str;
        this.f91072a = cls;
        this.f91073b = cls.getClassLoader();
    }

    static /* synthetic */ Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            throw new NoClassDefFoundError(e4.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class h(String str, ClassLoader classLoader) {
        if (str.equals("*")) {
            return null;
        }
        Class cls = (Class) f91069e.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            if (classLoader == null) {
                return Class.forName(str);
            }
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            Class cls2 = f91071g;
            if (cls2 == null) {
                Class a10 = a("java.lang.ClassNotFoundException");
                f91071g = a10;
                return a10;
            }
            return cls2;
        }
    }

    public static c.b o(Member member) {
        org.aspectj.lang.e dVar;
        String str;
        if (member instanceof Method) {
            Method method = (Method) member;
            dVar = new k(method.getModifiers(), method.getName(), method.getDeclaringClass(), method.getParameterTypes(), new String[method.getParameterTypes().length], method.getExceptionTypes(), method.getReturnType());
            str = org.aspectj.lang.c.f91018a;
        } else if (member instanceof Constructor) {
            Constructor constructor = (Constructor) member;
            dVar = new d(constructor.getModifiers(), constructor.getDeclaringClass(), constructor.getParameterTypes(), new String[constructor.getParameterTypes().length], constructor.getExceptionTypes());
            str = org.aspectj.lang.c.f91020c;
        } else {
            throw new IllegalArgumentException("member must be either a method or constructor");
        }
        return new h.a(-1, str, dVar, null);
    }

    public static org.aspectj.lang.c v(c.b bVar, Object obj, Object obj2) {
        return new h(bVar, obj, obj2, f91070f);
    }

    public static org.aspectj.lang.c w(c.b bVar, Object obj, Object obj2, Object obj3) {
        return new h(bVar, obj, obj2, new Object[]{obj3});
    }

    public static org.aspectj.lang.c x(c.b bVar, Object obj, Object obj2, Object obj3, Object obj4) {
        return new h(bVar, obj, obj2, new Object[]{obj3, obj4});
    }

    public static org.aspectj.lang.c y(c.b bVar, Object obj, Object obj2, Object[] objArr) {
        return new h(bVar, obj, obj2, objArr);
    }

    public r A(Class cls) {
        i iVar = new i(cls);
        iVar.z(this.f91073b);
        return iVar;
    }

    public r B(String str) {
        i iVar = new i(str);
        iVar.z(this.f91073b);
        return iVar;
    }

    public t C(int i4, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        k kVar = new k(i4, str, cls, clsArr, strArr, clsArr2, cls2);
        kVar.z(this.f91073b);
        return kVar;
    }

    public t D(String str) {
        k kVar = new k(str);
        kVar.z(this.f91073b);
        return kVar;
    }

    public t E(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int parseInt = Integer.parseInt(str, 16);
        Class h4 = h(str3, this.f91073b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i4 = 0; i4 < countTokens; i4++) {
            clsArr[i4] = h(stringTokenizer.nextToken(), this.f91073b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int countTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[countTokens2];
        for (int i10 = 0; i10 < countTokens2; i10++) {
            strArr[i10] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int countTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[countTokens3];
        for (int i11 = 0; i11 < countTokens3; i11++) {
            clsArr2[i11] = h(stringTokenizer3.nextToken(), this.f91073b);
        }
        return new k(parseInt, str2, h4, clsArr, strArr, clsArr2, h(str7, this.f91073b));
    }

    public c.b F(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i4) {
        t E = E(str2, str3, str4, str5, str6, "", str7);
        int i10 = this.f91075d;
        this.f91075d = i10 + 1;
        return new h.b(i10, str, E, K(i4, -1));
    }

    public c.b G(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i4) {
        t E = E(str2, str3, str4, str5, str6, str7, str8);
        int i10 = this.f91075d;
        this.f91075d = i10 + 1;
        return new h.b(i10, str, E, K(i4, -1));
    }

    public c.b H(String str, org.aspectj.lang.e eVar, int i4) {
        int i10 = this.f91075d;
        this.f91075d = i10 + 1;
        return new h.b(i10, str, eVar, K(i4, -1));
    }

    public c.b I(String str, org.aspectj.lang.e eVar, int i4, int i10) {
        int i11 = this.f91075d;
        this.f91075d = i11 + 1;
        return new h.b(i11, str, eVar, K(i4, i10));
    }

    public c.b J(String str, org.aspectj.lang.e eVar, z zVar) {
        int i4 = this.f91075d;
        this.f91075d = i4 + 1;
        return new h.b(i4, str, eVar, zVar);
    }

    public z K(int i4, int i10) {
        return new m(this.f91072a, this.f91074c, i4);
    }

    public c0 L() {
        o oVar = new o(h("Ljava/lang/Object;", this.f91073b));
        oVar.z(this.f91073b);
        return oVar;
    }

    public c0 M(Class cls) {
        o oVar = new o(cls);
        oVar.z(this.f91073b);
        return oVar;
    }

    public c0 N(String str) {
        o oVar = new o(str);
        oVar.z(this.f91073b);
        return oVar;
    }

    public k8.b b(int i4, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        a aVar = new a(i4, str, cls, clsArr, strArr, clsArr2, cls2);
        aVar.z(this.f91073b);
        return aVar;
    }

    public k8.b c(String str) {
        a aVar = new a(str);
        aVar.z(this.f91073b);
        return aVar;
    }

    public k8.b d(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int parseInt = Integer.parseInt(str, 16);
        Class h4 = h(str3, this.f91073b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i4 = 0; i4 < countTokens; i4++) {
            clsArr[i4] = h(stringTokenizer.nextToken(), this.f91073b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int countTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[countTokens2];
        for (int i10 = 0; i10 < countTokens2; i10++) {
            strArr[i10] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int countTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[countTokens3];
        for (int i11 = 0; i11 < countTokens3; i11++) {
            clsArr2[i11] = h(stringTokenizer3.nextToken(), this.f91073b);
        }
        a aVar = new a(parseInt, str2, h4, clsArr, strArr, clsArr2, h(str7, this.f91073b));
        aVar.z(this.f91073b);
        return aVar;
    }

    public k8.e e(Class cls, Class cls2, String str) {
        b bVar = new b(cls, cls2, str);
        bVar.z(this.f91073b);
        return bVar;
    }

    public k8.e f(String str) {
        b bVar = new b(str);
        bVar.z(this.f91073b);
        return bVar;
    }

    public k8.e g(String str, String str2, String str3) {
        b bVar = new b(h(str, this.f91073b), h(new StringTokenizer(str2, ":").nextToken(), this.f91073b), new StringTokenizer(str3, ":").nextToken());
        bVar.z(this.f91073b);
        return bVar;
    }

    public k8.g i(int i4, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        d dVar = new d(i4, cls, clsArr, strArr, clsArr2);
        dVar.z(this.f91073b);
        return dVar;
    }

    public k8.g j(String str) {
        d dVar = new d(str);
        dVar.z(this.f91073b);
        return dVar;
    }

    public k8.g k(String str, String str2, String str3, String str4, String str5) {
        int parseInt = Integer.parseInt(str, 16);
        Class h4 = h(str2, this.f91073b);
        StringTokenizer stringTokenizer = new StringTokenizer(str3, ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i4 = 0; i4 < countTokens; i4++) {
            clsArr[i4] = h(stringTokenizer.nextToken(), this.f91073b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str4, ":");
        int countTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[countTokens2];
        for (int i10 = 0; i10 < countTokens2; i10++) {
            strArr[i10] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str5, ":");
        int countTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[countTokens3];
        for (int i11 = 0; i11 < countTokens3; i11++) {
            clsArr2[i11] = h(stringTokenizer3.nextToken(), this.f91073b);
        }
        d dVar = new d(parseInt, h4, clsArr, strArr, clsArr2);
        dVar.z(this.f91073b);
        return dVar;
    }

    public c.a l(String str, org.aspectj.lang.e eVar, int i4) {
        int i10 = this.f91075d;
        this.f91075d = i10 + 1;
        return new h.a(i10, str, eVar, K(i4, -1));
    }

    public c.a m(String str, org.aspectj.lang.e eVar, int i4, int i10) {
        int i11 = this.f91075d;
        this.f91075d = i11 + 1;
        return new h.a(i11, str, eVar, K(i4, i10));
    }

    public c.a n(String str, org.aspectj.lang.e eVar, z zVar) {
        int i4 = this.f91075d;
        this.f91075d = i4 + 1;
        return new h.a(i4, str, eVar, zVar);
    }

    public k8.l p(int i4, String str, Class cls, Class cls2) {
        f fVar = new f(i4, str, cls, cls2);
        fVar.z(this.f91073b);
        return fVar;
    }

    public k8.l q(String str) {
        f fVar = new f(str);
        fVar.z(this.f91073b);
        return fVar;
    }

    public k8.l r(String str, String str2, String str3, String str4) {
        f fVar = new f(Integer.parseInt(str, 16), str2, h(str3, this.f91073b), h(str4, this.f91073b));
        fVar.z(this.f91073b);
        return fVar;
    }

    public k8.m s(int i4, Class cls) {
        g gVar = new g(i4, cls);
        gVar.z(this.f91073b);
        return gVar;
    }

    public k8.m t(String str) {
        g gVar = new g(str);
        gVar.z(this.f91073b);
        return gVar;
    }

    public k8.m u(String str, String str2) {
        g gVar = new g(Integer.parseInt(str, 16), h(str2, this.f91073b));
        gVar.z(this.f91073b);
        return gVar;
    }

    public r z() {
        i iVar = new i(h("Ljava/lang/Object;", this.f91073b));
        iVar.z(this.f91073b);
        return iVar;
    }
}
