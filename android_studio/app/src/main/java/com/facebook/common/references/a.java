package com.facebook.common.references;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import v1.t;

/* compiled from: CloseableReference.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class a<T> implements Cloneable, Closeable {

    /* renamed from: e  reason: collision with root package name */
    public static final int f11007e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f11008f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f11009g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f11010h = 3;

    /* renamed from: i  reason: collision with root package name */
    private static Class<a> f11011i = a.class;
    @c

    /* renamed from: j  reason: collision with root package name */
    private static int f11012j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final h<Closeable> f11013k = new C0083a();

    /* renamed from: l  reason: collision with root package name */
    private static final d f11014l = new b();
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    protected boolean f11015a = false;

    /* renamed from: b  reason: collision with root package name */
    protected final SharedReference<T> f11016b;

    /* renamed from: c  reason: collision with root package name */
    protected final d f11017c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    protected final Throwable f11018d;

    /* compiled from: CloseableReference.java */
    /* renamed from: com.facebook.common.references.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0083a implements h<Closeable> {
        C0083a() {
        }

        @Override // com.facebook.common.references.h
        /* renamed from: a */
        public void release(Closeable value) {
            try {
                com.facebook.common.internal.c.a(value, true);
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: CloseableReference.java */
    /* loaded from: classes.dex */
    static class b implements d {
        b() {
        }

        @Override // com.facebook.common.references.a.d
        public void a(SharedReference<Object> reference, @r7.h Throwable stacktrace) {
            Object h4 = reference.h();
            Class cls = a.f11011i;
            Object[] objArr = new Object[3];
            objArr[0] = Integer.valueOf(System.identityHashCode(this));
            objArr[1] = Integer.valueOf(System.identityHashCode(reference));
            objArr[2] = h4 == null ? null : h4.getClass().getName();
            p0.a.m0(cls, "Finalized without closing: %x %x (type = %s)", objArr);
        }

        @Override // com.facebook.common.references.a.d
        public boolean b() {
            return false;
        }
    }

    /* compiled from: CloseableReference.java */
    /* loaded from: classes.dex */
    public @interface c {
    }

    /* compiled from: CloseableReference.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(SharedReference<Object> reference, @r7.h Throwable stacktrace);

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(SharedReference<T> sharedReference, d leakHandler, @r7.h Throwable stacktrace) {
        this.f11016b = (SharedReference) j.i(sharedReference);
        sharedReference.b();
        this.f11017c = leakHandler;
        this.f11018d = stacktrace;
    }

    @v1.d
    public static boolean A(@r7.h a<?> ref) {
        return ref != null && ref.y();
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Lcom/facebook/common/references/a<TT;>; */
    public static a D(@t Closeable t9) {
        return G(t9, f11013k);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;Lcom/facebook/common/references/a$d;)Lcom/facebook/common/references/a<TT;>; */
    public static a E(@t Closeable t9, d leakHandler) {
        if (t9 == null) {
            return null;
        }
        return I(t9, f11013k, leakHandler, leakHandler.b() ? new Throwable() : null);
    }

    public static <T> a<T> G(@t T t9, h<T> resourceReleaser) {
        return H(t9, resourceReleaser, f11014l);
    }

    public static <T> a<T> H(@t T t9, h<T> resourceReleaser, d leakHandler) {
        if (t9 == null) {
            return null;
        }
        return I(t9, resourceReleaser, leakHandler, leakHandler.b() ? new Throwable() : null);
    }

    public static <T> a<T> I(@t T t9, h<T> resourceReleaser, d leakHandler, @r7.h Throwable stacktrace) {
        if (t9 == null) {
            return null;
        }
        if ((t9 instanceof Bitmap) || (t9 instanceof com.facebook.common.references.d)) {
            int i4 = f11012j;
            if (i4 == 1) {
                return new com.facebook.common.references.c(t9, resourceReleaser, leakHandler, stacktrace);
            }
            if (i4 == 2) {
                return new g(t9, resourceReleaser, leakHandler, stacktrace);
            }
            if (i4 == 3) {
                return new e(t9, resourceReleaser, leakHandler, stacktrace);
            }
        }
        return new com.facebook.common.references.b(t9, resourceReleaser, leakHandler, stacktrace);
    }

    public static void J(@c int bitmapCloseableRefType) {
        f11012j = bitmapCloseableRefType;
    }

    public static boolean K() {
        return f11012j == 3;
    }

    @r7.h
    public static <T> a<T> h(@r7.h a<T> ref) {
        if (ref != null) {
            return ref.d();
        }
        return null;
    }

    public static <T> List<a<T>> i(@t Collection<a<T>> refs) {
        if (refs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(refs.size());
        for (a<T> aVar : refs) {
            arrayList.add(h(aVar));
        }
        return arrayList;
    }

    public static void k(@r7.h a<?> ref) {
        if (ref != null) {
            ref.close();
        }
    }

    public static void p(@r7.h Iterable<? extends a<?>> references) {
        if (references != null) {
            for (a<?> aVar : references) {
                k(aVar);
            }
        }
    }

    @Override // 
    /* renamed from: b */
    public abstract a<T> clone();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f11015a) {
                return;
            }
            this.f11015a = true;
            this.f11016b.e();
        }
    }

    @r7.h
    public synchronized a<T> d() {
        if (y()) {
            return clone();
        }
        return null;
    }

    public synchronized T q() {
        j.o(!this.f11015a);
        return (T) j.i(this.f11016b.h());
    }

    @VisibleForTesting
    public synchronized SharedReference<T> r() {
        return this.f11016b;
    }

    public int s() {
        if (y()) {
            return System.identityHashCode(this.f11016b.h());
        }
        return 0;
    }

    public synchronized boolean y() {
        return !this.f11015a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(T t9, h<T> resourceReleaser, d leakHandler, @r7.h Throwable stacktrace) {
        this.f11016b = new SharedReference<>(t9, resourceReleaser);
        this.f11017c = leakHandler;
        this.f11018d = stacktrace;
    }
}
