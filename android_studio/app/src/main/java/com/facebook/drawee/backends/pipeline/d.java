package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.l;

/* compiled from: Fresco.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f11117a = d.class;

    /* renamed from: b  reason: collision with root package name */
    private static g f11118b = null;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f11119c = false;

    private d() {
    }

    public static g a() {
        return f11118b;
    }

    public static com.facebook.imagepipeline.core.h b() {
        return c().j();
    }

    public static l c() {
        return l.l();
    }

    public static boolean d() {
        return f11119c;
    }

    public static void e(Context context) {
        g(context, null, null);
    }

    public static void f(Context context, @r7.h com.facebook.imagepipeline.core.i imagePipelineConfig) {
        g(context, imagePipelineConfig, null);
    }

    public static void g(Context context, @r7.h com.facebook.imagepipeline.core.i imagePipelineConfig, @r7.h c draweeConfig) {
        h(context, imagePipelineConfig, draweeConfig, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
        if (com.facebook.imagepipeline.systrace.b.e() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
        if (com.facebook.imagepipeline.systrace.b.e() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
        if (com.facebook.imagepipeline.systrace.b.e() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
        if (com.facebook.imagepipeline.systrace.b.e() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        if (com.facebook.imagepipeline.systrace.b.e() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0089, code lost:
        com.facebook.imagepipeline.systrace.b.c();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void h(android.content.Context r5, @r7.h com.facebook.imagepipeline.core.i r6, @r7.h com.facebook.drawee.backends.pipeline.c r7, boolean r8) {
        /*
            boolean r0 = com.facebook.imagepipeline.systrace.b.e()
            if (r0 == 0) goto Lb
            java.lang.String r0 = "Fresco#initialize"
            com.facebook.imagepipeline.systrace.b.a(r0)
        Lb:
            boolean r0 = com.facebook.drawee.backends.pipeline.d.f11119c
            r1 = 1
            if (r0 == 0) goto L18
            java.lang.Class<?> r0 = com.facebook.drawee.backends.pipeline.d.f11117a
            java.lang.String r2 = "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"
            p0.a.k0(r0, r2)
            goto L1a
        L18:
            com.facebook.drawee.backends.pipeline.d.f11119c = r1
        L1a:
            com.facebook.imagepipeline.core.o.b(r8)
            boolean r8 = y1.a.e()
            if (r8 != 0) goto L97
            boolean r8 = com.facebook.imagepipeline.systrace.b.e()
            if (r8 == 0) goto L2e
            java.lang.String r8 = "Fresco.initialize->SoLoader.init"
            com.facebook.imagepipeline.systrace.b.a(r8)
        L2e:
            java.lang.Class<com.facebook.imagepipeline.nativecode.NativeCodeInitializer> r8 = com.facebook.imagepipeline.nativecode.NativeCodeInitializer.class
            java.lang.String r0 = "init"
            java.lang.Class[] r2 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L4c java.lang.NoSuchMethodException -> L4e java.lang.reflect.InvocationTargetException -> L5d java.lang.IllegalAccessException -> L6c java.lang.ClassNotFoundException -> L7b
            java.lang.Class<android.content.Context> r3 = android.content.Context.class
            r4 = 0
            r2[r4] = r3     // Catch: java.lang.Throwable -> L4c java.lang.NoSuchMethodException -> L4e java.lang.reflect.InvocationTargetException -> L5d java.lang.IllegalAccessException -> L6c java.lang.ClassNotFoundException -> L7b
            java.lang.reflect.Method r8 = r8.getMethod(r0, r2)     // Catch: java.lang.Throwable -> L4c java.lang.NoSuchMethodException -> L4e java.lang.reflect.InvocationTargetException -> L5d java.lang.IllegalAccessException -> L6c java.lang.ClassNotFoundException -> L7b
            r0 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L4c java.lang.NoSuchMethodException -> L4e java.lang.reflect.InvocationTargetException -> L5d java.lang.IllegalAccessException -> L6c java.lang.ClassNotFoundException -> L7b
            r1[r4] = r5     // Catch: java.lang.Throwable -> L4c java.lang.NoSuchMethodException -> L4e java.lang.reflect.InvocationTargetException -> L5d java.lang.IllegalAccessException -> L6c java.lang.ClassNotFoundException -> L7b
            r8.invoke(r0, r1)     // Catch: java.lang.Throwable -> L4c java.lang.NoSuchMethodException -> L4e java.lang.reflect.InvocationTargetException -> L5d java.lang.IllegalAccessException -> L6c java.lang.ClassNotFoundException -> L7b
            boolean r8 = com.facebook.imagepipeline.systrace.b.e()
            if (r8 == 0) goto L97
            goto L89
        L4c:
            r5 = move-exception
            goto L8d
        L4e:
            y1.c r8 = new y1.c     // Catch: java.lang.Throwable -> L4c
            r8.<init>()     // Catch: java.lang.Throwable -> L4c
            y1.a.d(r8)     // Catch: java.lang.Throwable -> L4c
            boolean r8 = com.facebook.imagepipeline.systrace.b.e()
            if (r8 == 0) goto L97
            goto L89
        L5d:
            y1.c r8 = new y1.c     // Catch: java.lang.Throwable -> L4c
            r8.<init>()     // Catch: java.lang.Throwable -> L4c
            y1.a.d(r8)     // Catch: java.lang.Throwable -> L4c
            boolean r8 = com.facebook.imagepipeline.systrace.b.e()
            if (r8 == 0) goto L97
            goto L89
        L6c:
            y1.c r8 = new y1.c     // Catch: java.lang.Throwable -> L4c
            r8.<init>()     // Catch: java.lang.Throwable -> L4c
            y1.a.d(r8)     // Catch: java.lang.Throwable -> L4c
            boolean r8 = com.facebook.imagepipeline.systrace.b.e()
            if (r8 == 0) goto L97
            goto L89
        L7b:
            y1.c r8 = new y1.c     // Catch: java.lang.Throwable -> L4c
            r8.<init>()     // Catch: java.lang.Throwable -> L4c
            y1.a.d(r8)     // Catch: java.lang.Throwable -> L4c
            boolean r8 = com.facebook.imagepipeline.systrace.b.e()
            if (r8 == 0) goto L97
        L89:
            com.facebook.imagepipeline.systrace.b.c()
            goto L97
        L8d:
            boolean r6 = com.facebook.imagepipeline.systrace.b.e()
            if (r6 == 0) goto L96
            com.facebook.imagepipeline.systrace.b.c()
        L96:
            throw r5
        L97:
            android.content.Context r5 = r5.getApplicationContext()
            if (r6 != 0) goto La1
            com.facebook.imagepipeline.core.l.v(r5)
            goto La4
        La1:
            com.facebook.imagepipeline.core.l.w(r6)
        La4:
            i(r5, r7)
            boolean r5 = com.facebook.imagepipeline.systrace.b.e()
            if (r5 == 0) goto Lb0
            com.facebook.imagepipeline.systrace.b.c()
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.drawee.backends.pipeline.d.h(android.content.Context, com.facebook.imagepipeline.core.i, com.facebook.drawee.backends.pipeline.c, boolean):void");
    }

    private static void i(Context context, @r7.h c draweeConfig) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("Fresco.initializeDrawee");
        }
        g gVar = new g(context, draweeConfig);
        f11118b = gVar;
        SimpleDraweeView.k(gVar);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public static f j() {
        return f11118b.get();
    }

    public static void k() {
        f11118b = null;
        SimpleDraweeView.o();
        l.A();
    }
}
