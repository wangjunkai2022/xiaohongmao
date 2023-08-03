package com.fasterxml.jackson.databind.jdk14;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.util.g;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: JDK14Util.java */
/* loaded from: classes.dex */
public class a {

    /* compiled from: JDK14Util.java */
    /* renamed from: com.fasterxml.jackson.databind.jdk14.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0118a {

        /* renamed from: a  reason: collision with root package name */
        protected final com.fasterxml.jackson.databind.b f15367a;

        /* renamed from: b  reason: collision with root package name */
        protected final DeserializationConfig f15368b;

        /* renamed from: c  reason: collision with root package name */
        protected final AnnotationIntrospector f15369c;

        /* renamed from: d  reason: collision with root package name */
        protected final List<AnnotatedConstructor> f15370d;

        /* renamed from: e  reason: collision with root package name */
        protected final AnnotatedConstructor f15371e;

        /* renamed from: f  reason: collision with root package name */
        protected final b[] f15372f;

        C0118a(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) {
            AnnotatedConstructor annotatedConstructor;
            this.f15367a = bVar;
            this.f15369c = deserializationContext.getAnnotationIntrospector();
            this.f15368b = deserializationContext.getConfig();
            b[] b10 = c.c().b(bVar.y());
            this.f15372f = b10;
            int length = b10.length;
            if (length == 0) {
                annotatedConstructor = bVar.i();
                this.f15370d = Collections.singletonList(annotatedConstructor);
            } else {
                List<AnnotatedConstructor> B = bVar.B();
                this.f15370d = B;
                Iterator<AnnotatedConstructor> it = B.iterator();
                loop0: while (true) {
                    if (!it.hasNext()) {
                        annotatedConstructor = null;
                        break;
                    }
                    AnnotatedConstructor next = it.next();
                    if (next.getParameterCount() == length) {
                        for (int i4 = 0; i4 < length; i4++) {
                            if (!next.getRawParameterType(i4).equals(this.f15372f[i4].f15373a)) {
                                break;
                            }
                        }
                        annotatedConstructor = next;
                        break loop0;
                    }
                }
            }
            if (annotatedConstructor != null) {
                this.f15371e = annotatedConstructor;
                return;
            }
            throw new IllegalArgumentException("Failed to find the canonical Record constructor of type " + g.P(this.f15367a.H()));
        }

        public AnnotatedConstructor a(List<String> list) {
            for (AnnotatedConstructor annotatedConstructor : this.f15370d) {
                JsonCreator.Mode findCreatorAnnotation = this.f15369c.findCreatorAnnotation(this.f15368b, annotatedConstructor);
                if (findCreatorAnnotation != null && JsonCreator.Mode.DISABLED != findCreatorAnnotation && (JsonCreator.Mode.DELEGATING == findCreatorAnnotation || annotatedConstructor != this.f15371e)) {
                    return null;
                }
            }
            for (b bVar : this.f15372f) {
                list.add(bVar.f15374b);
            }
            return this.f15371e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JDK14Util.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Class<?> f15373a;

        /* renamed from: b  reason: collision with root package name */
        public final String f15374b;

        public b(Class<?> cls, String str) {
            this.f15373a = cls;
            this.f15374b = str;
        }
    }

    /* compiled from: JDK14Util.java */
    /* loaded from: classes.dex */
    static class c {

        /* renamed from: d  reason: collision with root package name */
        private static final c f15375d;

        /* renamed from: e  reason: collision with root package name */
        private static final RuntimeException f15376e;

        /* renamed from: a  reason: collision with root package name */
        private final Method f15377a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f15378b;

        /* renamed from: c  reason: collision with root package name */
        private final Method f15379c;

        static {
            c cVar = null;
            try {
                e = null;
                cVar = new c();
            } catch (RuntimeException e4) {
                e = e4;
            }
            f15375d = cVar;
            f15376e = e;
        }

        private c() throws RuntimeException {
            try {
                this.f15377a = Class.class.getMethod("getRecordComponents", new Class[0]);
                Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
                this.f15378b = cls.getMethod("getName", new Class[0]);
                this.f15379c = cls.getMethod("getType", new Class[0]);
            } catch (Exception e4) {
                throw new RuntimeException(String.format("Failed to access Methods needed to support `java.lang.Record`: (%s) %s", e4.getClass().getName(), e4.getMessage()), e4);
            }
        }

        public static c c() {
            RuntimeException runtimeException = f15376e;
            if (runtimeException == null) {
                return f15375d;
            }
            throw runtimeException;
        }

        public String[] a(Class<?> cls) throws IllegalArgumentException {
            Object[] d4 = d(cls);
            String[] strArr = new String[d4.length];
            for (int i4 = 0; i4 < d4.length; i4++) {
                try {
                    strArr[i4] = (String) this.f15378b.invoke(d4[i4], new Object[0]);
                } catch (Exception e4) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i4), Integer.valueOf(d4.length), g.j0(cls)), e4);
                }
            }
            return strArr;
        }

        public b[] b(Class<?> cls) throws IllegalArgumentException {
            Object[] d4 = d(cls);
            b[] bVarArr = new b[d4.length];
            for (int i4 = 0; i4 < d4.length; i4++) {
                try {
                    try {
                        bVarArr[i4] = new b((Class) this.f15379c.invoke(d4[i4], new Object[0]), (String) this.f15378b.invoke(d4[i4], new Object[0]));
                    } catch (Exception e4) {
                        throw new IllegalArgumentException(String.format("Failed to access type of field #%d (of %d) of Record type %s", Integer.valueOf(i4), Integer.valueOf(d4.length), g.j0(cls)), e4);
                    }
                } catch (Exception e10) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i4), Integer.valueOf(d4.length), g.j0(cls)), e10);
                }
            }
            return bVarArr;
        }

        protected Object[] d(Class<?> cls) throws IllegalArgumentException {
            try {
                return (Object[]) this.f15377a.invoke(cls, new Object[0]);
            } catch (Exception unused) {
                throw new IllegalArgumentException("Failed to access RecordComponents of type " + g.j0(cls));
            }
        }
    }

    public static AnnotatedConstructor a(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, List<String> list) {
        return new C0118a(deserializationContext, bVar).a(list);
    }

    public static String[] b(Class<?> cls) {
        return c.c().a(cls);
    }
}
