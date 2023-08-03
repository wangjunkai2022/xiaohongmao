package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import k8.x;
import org.aspectj.lang.reflect.AdviceKind;

/* compiled from: AdviceImpl.java */
/* loaded from: classes4.dex */
public class a implements k8.a {

    /* renamed from: h  reason: collision with root package name */
    private static final String f90925h = "org.aspectj.runtime.internal";

    /* renamed from: a  reason: collision with root package name */
    private final AdviceKind f90926a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f90927b;

    /* renamed from: c  reason: collision with root package name */
    private x f90928c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f90929d;

    /* renamed from: e  reason: collision with root package name */
    private Type[] f90930e;

    /* renamed from: f  reason: collision with root package name */
    private k8.c[] f90931f;

    /* renamed from: g  reason: collision with root package name */
    private k8.c[] f90932g;

    /* compiled from: AdviceImpl.java */
    /* renamed from: org.aspectj.internal.lang.reflect.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class C0794a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f90933a;

        static {
            int[] iArr = new int[AdviceKind.values().length];
            f90933a = iArr;
            try {
                iArr[AdviceKind.AFTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90933a[AdviceKind.AFTER_RETURNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f90933a[AdviceKind.AFTER_THROWING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f90933a[AdviceKind.AROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f90933a[AdviceKind.BEFORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Method method, String str, AdviceKind adviceKind) {
        this.f90929d = false;
        this.f90926a = adviceKind;
        this.f90927b = method;
        this.f90928c = new n(str);
    }

    @Override // k8.a
    public k8.c a() {
        return k8.d.a(this.f90927b.getDeclaringClass());
    }

    @Override // k8.a
    public x b() {
        return this.f90928c;
    }

    @Override // k8.a
    public k8.c<?>[] c() {
        if (this.f90932g == null) {
            Class<?>[] exceptionTypes = this.f90927b.getExceptionTypes();
            this.f90932g = new k8.c[exceptionTypes.length];
            for (int i4 = 0; i4 < exceptionTypes.length; i4++) {
                this.f90932g[i4] = k8.d.a(exceptionTypes[i4]);
            }
        }
        return this.f90932g;
    }

    @Override // k8.a
    public Type[] d() {
        if (this.f90930e == null) {
            Type[] genericParameterTypes = this.f90927b.getGenericParameterTypes();
            int i4 = 0;
            int i10 = 0;
            for (Type type : genericParameterTypes) {
                if ((type instanceof Class) && ((Class) type).getPackage().getName().equals(f90925h)) {
                    i10++;
                }
            }
            this.f90930e = new Type[genericParameterTypes.length - i10];
            while (true) {
                Type[] typeArr = this.f90930e;
                if (i4 >= typeArr.length) {
                    break;
                }
                if (genericParameterTypes[i4] instanceof Class) {
                    typeArr[i4] = k8.d.a((Class) genericParameterTypes[i4]);
                } else {
                    typeArr[i4] = genericParameterTypes[i4];
                }
                i4++;
            }
        }
        return this.f90930e;
    }

    @Override // k8.a
    public AdviceKind getKind() {
        return this.f90926a;
    }

    @Override // k8.a
    public String getName() {
        String name = this.f90927b.getName();
        if (name.startsWith("ajc$")) {
            i8.a aVar = (i8.a) this.f90927b.getAnnotation(i8.a.class);
            return aVar != null ? aVar.value() : "";
        }
        return name;
    }

    @Override // k8.a
    public k8.c<?>[] getParameterTypes() {
        if (this.f90931f == null) {
            Class<?>[] parameterTypes = this.f90927b.getParameterTypes();
            int i4 = 0;
            int i10 = 0;
            for (Class<?> cls : parameterTypes) {
                if (cls.getPackage().getName().equals(f90925h)) {
                    i10++;
                }
            }
            this.f90931f = new k8.c[parameterTypes.length - i10];
            while (true) {
                k8.c[] cVarArr = this.f90931f;
                if (i4 >= cVarArr.length) {
                    break;
                }
                cVarArr[i4] = k8.d.a(parameterTypes[i4]);
                i4++;
            }
        }
        return this.f90931f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a6, code lost:
        if (r10 != 3) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.aspectj.internal.lang.reflect.a.toString():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Method method, String str, AdviceKind adviceKind, String str2) {
        this(method, str, adviceKind);
        this.f90929d = true;
    }
}
