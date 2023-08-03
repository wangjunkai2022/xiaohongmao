package com.facebook.imagepipeline.systrace;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: FrescoSystrace.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final InterfaceC0111b f13371a = new c();
    @h

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f13372b = null;

    /* compiled from: FrescoSystrace.java */
    /* renamed from: com.facebook.imagepipeline.systrace.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0111b {
        InterfaceC0111b a(String key, Object value);

        InterfaceC0111b b(String key, long value);

        InterfaceC0111b c(String key, int value);

        InterfaceC0111b d(String key, double value);

        void flush();
    }

    /* compiled from: FrescoSystrace.java */
    /* loaded from: classes.dex */
    private static final class c implements InterfaceC0111b {
        private c() {
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public InterfaceC0111b a(String key, Object value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public InterfaceC0111b b(String key, long value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public InterfaceC0111b c(String key, int value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public InterfaceC0111b d(String key, double value) {
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public void flush() {
        }
    }

    /* compiled from: FrescoSystrace.java */
    /* loaded from: classes.dex */
    public interface d {
        boolean b();

        void c(String name);

        InterfaceC0111b d(String name);

        void e();
    }

    private b() {
    }

    public static void a(String name) {
        d().c(name);
    }

    public static InterfaceC0111b b(String name) {
        return d().d(name);
    }

    public static void c() {
        d().e();
    }

    private static d d() {
        if (f13372b == null) {
            synchronized (b.class) {
                if (f13372b == null) {
                    f13372b = new com.facebook.imagepipeline.systrace.a();
                }
            }
        }
        return f13372b;
    }

    public static boolean e() {
        return d().b();
    }

    public static void f(d instance) {
        f13372b = instance;
    }
}
