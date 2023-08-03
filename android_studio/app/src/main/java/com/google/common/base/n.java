package com.google.common.base;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FinalizableReferenceQueue.java */
@h3.c
/* loaded from: classes2.dex */
public class n implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    private static final String f32278e = "com.google.common.base.internal.Finalizer";

    /* renamed from: a  reason: collision with root package name */
    final ReferenceQueue<Object> f32280a;

    /* renamed from: b  reason: collision with root package name */
    final PhantomReference<Object> f32281b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f32282c;

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f32277d = Logger.getLogger(n.class.getName());

    /* renamed from: f  reason: collision with root package name */
    private static final Method f32279f = d(h(new d(), new a(), new b()));

    /* compiled from: FinalizableReferenceQueue.java */
    /* loaded from: classes2.dex */
    static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private static final String f32283a = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.";

        a() {
        }

        @Override // com.google.common.base.n.c
        @NullableDecl
        public Class<?> a() {
            try {
                return c(b()).loadClass(n.f32278e);
            } catch (Exception e4) {
                n.f32277d.log(Level.WARNING, f32283a, (Throwable) e4);
                return null;
            }
        }

        URL b() throws IOException {
            String str = n.f32278e.replace('.', (char) com.fasterxml.jackson.core.e.f13819f) + ".class";
            URL resource = getClass().getClassLoader().getResource(str);
            if (resource != null) {
                String url = resource.toString();
                if (url.endsWith(str)) {
                    return new URL(resource, url.substring(0, url.length() - str.length()));
                }
                throw new IOException("Unsupported path style: " + url);
            }
            throw new FileNotFoundException(str);
        }

        URLClassLoader c(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    /* compiled from: FinalizableReferenceQueue.java */
    /* loaded from: classes2.dex */
    static class b implements c {
        b() {
        }

        @Override // com.google.common.base.n.c
        public Class<?> a() {
            try {
                return Class.forName("i3.a");
            } catch (ClassNotFoundException e4) {
                throw new AssertionError(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FinalizableReferenceQueue.java */
    /* loaded from: classes2.dex */
    public interface c {
        @NullableDecl
        Class<?> a();
    }

    /* compiled from: FinalizableReferenceQueue.java */
    /* loaded from: classes2.dex */
    static class d implements c {
        @h3.d

        /* renamed from: a  reason: collision with root package name */
        static boolean f32284a;

        d() {
        }

        @Override // com.google.common.base.n.c
        @NullableDecl
        public Class<?> a() {
            if (f32284a) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader != null) {
                    try {
                        return systemClassLoader.loadClass(n.f32278e);
                    } catch (ClassNotFoundException unused) {
                    }
                }
                return null;
            } catch (SecurityException unused2) {
                n.f32277d.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    public n() {
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f32280a = referenceQueue;
        PhantomReference<Object> phantomReference = new PhantomReference<>(this, referenceQueue);
        this.f32281b = phantomReference;
        boolean z9 = true;
        try {
            f32279f.invoke(null, m.class, referenceQueue, phantomReference);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        } catch (Throwable th) {
            f32277d.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
            z9 = false;
        }
        this.f32282c = z9;
    }

    static Method d(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e4) {
            throw new AssertionError(e4);
        }
    }

    private static Class<?> h(c... cVarArr) {
        for (c cVar : cVarArr) {
            Class<?> a10 = cVar.a();
            if (a10 != null) {
                return a10;
            }
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f32282c) {
            return;
        }
        while (true) {
            Reference<? extends Object> poll = this.f32280a.poll();
            if (poll == null) {
                return;
            }
            poll.clear();
            try {
                ((m) poll).a();
            } catch (Throwable th) {
                f32277d.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f32281b.enqueue();
        b();
    }
}
