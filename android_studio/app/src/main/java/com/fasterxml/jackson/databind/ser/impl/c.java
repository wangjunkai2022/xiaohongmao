package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.l;
import java.util.Arrays;

/* compiled from: PropertySerializerMap.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected final boolean f15698a;

    /* compiled from: PropertySerializerMap.java */
    /* loaded from: classes.dex */
    private static final class a extends c {

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f15699b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?> f15700c;

        /* renamed from: d  reason: collision with root package name */
        private final g<Object> f15701d;

        /* renamed from: e  reason: collision with root package name */
        private final g<Object> f15702e;

        public a(c cVar, Class<?> cls, g<Object> gVar, Class<?> cls2, g<Object> gVar2) {
            super(cVar);
            this.f15699b = cls;
            this.f15701d = gVar;
            this.f15700c = cls2;
            this.f15702e = gVar2;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public c l(Class<?> cls, g<Object> gVar) {
            return new C0123c(this, new f[]{new f(this.f15699b, this.f15701d), new f(this.f15700c, this.f15702e), new f(cls, gVar)});
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public g<Object> m(Class<?> cls) {
            if (cls == this.f15699b) {
                return this.f15701d;
            }
            if (cls == this.f15700c) {
                return this.f15702e;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PropertySerializerMap.java */
    /* loaded from: classes.dex */
    public static final class b extends c {

        /* renamed from: b  reason: collision with root package name */
        public static final b f15703b = new b(false);

        /* renamed from: c  reason: collision with root package name */
        public static final b f15704c = new b(true);

        protected b(boolean z9) {
            super(z9);
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public c l(Class<?> cls, g<Object> gVar) {
            return new e(this, cls, gVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public g<Object> m(Class<?> cls) {
            return null;
        }
    }

    /* compiled from: PropertySerializerMap.java */
    /* renamed from: com.fasterxml.jackson.databind.ser.impl.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0123c extends c {

        /* renamed from: c  reason: collision with root package name */
        private static final int f15705c = 8;

        /* renamed from: b  reason: collision with root package name */
        private final f[] f15706b;

        public C0123c(c cVar, f[] fVarArr) {
            super(cVar);
            this.f15706b = fVarArr;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public c l(Class<?> cls, g<Object> gVar) {
            f[] fVarArr = this.f15706b;
            int length = fVarArr.length;
            if (length == 8) {
                return this.f15698a ? new e(this, cls, gVar) : this;
            }
            f[] fVarArr2 = (f[]) Arrays.copyOf(fVarArr, length + 1);
            fVarArr2[length] = new f(cls, gVar);
            return new C0123c(this, fVarArr2);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0057 A[ORIG_RETURN, RETURN] */
        @Override // com.fasterxml.jackson.databind.ser.impl.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public com.fasterxml.jackson.databind.g<java.lang.Object> m(java.lang.Class<?> r4) {
            /*
                r3 = this;
                com.fasterxml.jackson.databind.ser.impl.c$f[] r0 = r3.f15706b
                r1 = 0
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto Lc
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            Lc:
                r1 = 1
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto L16
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            L16:
                r1 = 2
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto L20
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            L20:
                int r1 = r0.length
                switch(r1) {
                    case 4: goto L4d;
                    case 5: goto L43;
                    case 6: goto L39;
                    case 7: goto L2f;
                    case 8: goto L25;
                    default: goto L24;
                }
            L24:
                goto L57
            L25:
                r1 = 7
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto L2f
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            L2f:
                r1 = 6
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto L39
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            L39:
                r1 = 5
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto L43
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            L43:
                r1 = 4
                r1 = r0[r1]
                java.lang.Class<?> r2 = r1.f15711a
                if (r2 != r4) goto L4d
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r1.f15712b
                return r4
            L4d:
                r1 = 3
                r0 = r0[r1]
                java.lang.Class<?> r1 = r0.f15711a
                if (r1 != r4) goto L57
                com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r0.f15712b
                return r4
            L57:
                r4 = 0
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.c.C0123c.m(java.lang.Class):com.fasterxml.jackson.databind.g");
        }
    }

    /* compiled from: PropertySerializerMap.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final g<Object> f15707a;

        /* renamed from: b  reason: collision with root package name */
        public final c f15708b;

        public d(g<Object> gVar, c cVar) {
            this.f15707a = gVar;
            this.f15708b = cVar;
        }
    }

    /* compiled from: PropertySerializerMap.java */
    /* loaded from: classes.dex */
    private static final class e extends c {

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f15709b;

        /* renamed from: c  reason: collision with root package name */
        private final g<Object> f15710c;

        public e(c cVar, Class<?> cls, g<Object> gVar) {
            super(cVar);
            this.f15709b = cls;
            this.f15710c = gVar;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public c l(Class<?> cls, g<Object> gVar) {
            return new a(this, this.f15709b, this.f15710c, cls, gVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.c
        public g<Object> m(Class<?> cls) {
            if (cls == this.f15709b) {
                return this.f15710c;
            }
            return null;
        }
    }

    /* compiled from: PropertySerializerMap.java */
    /* loaded from: classes.dex */
    private static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final Class<?> f15711a;

        /* renamed from: b  reason: collision with root package name */
        public final g<Object> f15712b;

        public f(Class<?> cls, g<Object> gVar) {
            this.f15711a = cls;
            this.f15712b = gVar;
        }
    }

    protected c(boolean z9) {
        this.f15698a = z9;
    }

    public static c c() {
        return b.f15703b;
    }

    public static c d() {
        return b.f15704c;
    }

    public final d a(JavaType javaType, g<Object> gVar) {
        return new d(gVar, l(javaType.getRawClass(), gVar));
    }

    public final d b(Class<?> cls, g<Object> gVar) {
        return new d(gVar, l(cls, gVar));
    }

    public final d e(Class<?> cls, l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> findKeySerializer = lVar.findKeySerializer(cls, beanProperty);
        return new d(findKeySerializer, l(cls, findKeySerializer));
    }

    public final d f(JavaType javaType, l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> findPrimaryPropertySerializer = lVar.findPrimaryPropertySerializer(javaType, beanProperty);
        return new d(findPrimaryPropertySerializer, l(javaType.getRawClass(), findPrimaryPropertySerializer));
    }

    public final d g(Class<?> cls, l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> findPrimaryPropertySerializer = lVar.findPrimaryPropertySerializer(cls, beanProperty);
        return new d(findPrimaryPropertySerializer, l(cls, findPrimaryPropertySerializer));
    }

    public final d h(JavaType javaType, l lVar) throws JsonMappingException {
        g<Object> findTypedValueSerializer = lVar.findTypedValueSerializer(javaType, false, (BeanProperty) null);
        return new d(findTypedValueSerializer, l(javaType.getRawClass(), findTypedValueSerializer));
    }

    public final d i(Class<?> cls, l lVar) throws JsonMappingException {
        g<Object> findTypedValueSerializer = lVar.findTypedValueSerializer(cls, false, (BeanProperty) null);
        return new d(findTypedValueSerializer, l(cls, findTypedValueSerializer));
    }

    public final d j(JavaType javaType, l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> findContentValueSerializer = lVar.findContentValueSerializer(javaType, beanProperty);
        return new d(findContentValueSerializer, l(javaType.getRawClass(), findContentValueSerializer));
    }

    public final d k(Class<?> cls, l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> findContentValueSerializer = lVar.findContentValueSerializer(cls, beanProperty);
        return new d(findContentValueSerializer, l(cls, findContentValueSerializer));
    }

    public abstract c l(Class<?> cls, g<Object> gVar);

    public abstract g<Object> m(Class<?> cls);

    protected c(c cVar) {
        this.f15698a = cVar.f15698a;
    }
}
