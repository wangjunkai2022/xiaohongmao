package i3;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Finalizer.java */
/* loaded from: classes2.dex */
public class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f69303d = Logger.getLogger(a.class.getName());

    /* renamed from: e  reason: collision with root package name */
    private static final String f69304e = "com.google.common.base.FinalizableReference";
    @NullableDecl

    /* renamed from: f  reason: collision with root package name */
    private static final Constructor<Thread> f69305f;
    @NullableDecl

    /* renamed from: g  reason: collision with root package name */
    private static final Field f69306g;

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Class<?>> f69307a;

    /* renamed from: b  reason: collision with root package name */
    private final PhantomReference<Object> f69308b;

    /* renamed from: c  reason: collision with root package name */
    private final ReferenceQueue<Object> f69309c;

    static {
        Constructor<Thread> b10 = b();
        f69305f = b10;
        f69306g = b10 == null ? d() : null;
    }

    private a(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.f69309c = referenceQueue;
        this.f69307a = new WeakReference<>(cls);
        this.f69308b = phantomReference;
    }

    private boolean a(Reference<?> reference) {
        Method c10 = c();
        if (c10 == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.f69308b) {
                return false;
            }
            try {
                c10.invoke(reference, new Object[0]);
            } catch (Throwable th) {
                f69303d.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
            reference = this.f69309c.poll();
        } while (reference != null);
        return true;
    }

    @NullableDecl
    private static Constructor<Thread> b() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    @NullableDecl
    private Method c() {
        Class<?> cls = this.f69307a.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", new Class[0]);
        } catch (NoSuchMethodException e4) {
            throw new AssertionError(e4);
        }
    }

    @NullableDecl
    private static Field d() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            f69303d.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(10:5|6|7|(1:9)|10|11|12|(1:14)|16|17)|24|(0)|10|11|12|(0)|16|17) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        i3.a.f69303d.log(java.util.logging.Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #0 {all -> 0x005a, blocks: (B:15:0x0052, B:17:0x0056), top: B:25:0x0052 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void e(java.lang.Class<?> r6, java.lang.ref.ReferenceQueue<java.lang.Object> r7, java.lang.ref.PhantomReference<java.lang.Object> r8) {
        /*
            java.lang.String r0 = r6.getName()
            java.lang.String r1 = "com.google.common.base.m"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L68
            i3.a r0 = new i3.a
            r0.<init>(r6, r7, r8)
            java.lang.Class<i3.a> r6 = i3.a.class
            java.lang.String r6 = r6.getName()
            java.lang.reflect.Constructor<java.lang.Thread> r7 = i3.a.f69305f
            r8 = 1
            r1 = 0
            if (r7 == 0) goto L47
            r2 = 0
            r4 = 5
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L3d
            r5 = 0
            r4[r5] = r1     // Catch: java.lang.Throwable -> L3d
            r4[r8] = r0     // Catch: java.lang.Throwable -> L3d
            r5 = 2
            r4[r5] = r6     // Catch: java.lang.Throwable -> L3d
            r5 = 3
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L3d
            r4[r5] = r2     // Catch: java.lang.Throwable -> L3d
            r2 = 4
            java.lang.Boolean r3 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L3d
            r4[r2] = r3     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r7 = r7.newInstance(r4)     // Catch: java.lang.Throwable -> L3d
            java.lang.Thread r7 = (java.lang.Thread) r7     // Catch: java.lang.Throwable -> L3d
            goto L48
        L3d:
            r7 = move-exception
            java.util.logging.Logger r2 = i3.a.f69303d
            java.util.logging.Level r3 = java.util.logging.Level.INFO
            java.lang.String r4 = "Failed to create a thread without inherited thread-local values"
            r2.log(r3, r4, r7)
        L47:
            r7 = r1
        L48:
            if (r7 != 0) goto L4f
            java.lang.Thread r7 = new java.lang.Thread
            r7.<init>(r1, r0, r6)
        L4f:
            r7.setDaemon(r8)
            java.lang.reflect.Field r6 = i3.a.f69306g     // Catch: java.lang.Throwable -> L5a
            if (r6 == 0) goto L64
            r6.set(r7, r1)     // Catch: java.lang.Throwable -> L5a
            goto L64
        L5a:
            r6 = move-exception
            java.util.logging.Logger r8 = i3.a.f69303d
            java.util.logging.Level r0 = java.util.logging.Level.INFO
            java.lang.String r1 = "Failed to clear thread local values inherited by reference finalizer thread."
            r8.log(r0, r1, r6)
        L64:
            r7.start()
            return
        L68:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "Expected com.google.common.base.FinalizableReference."
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: i3.a.e(java.lang.Class, java.lang.ref.ReferenceQueue, java.lang.ref.PhantomReference):void");
    }

    @Override // java.lang.Runnable
    public void run() {
        while (a(this.f69309c.remove())) {
        }
    }
}
