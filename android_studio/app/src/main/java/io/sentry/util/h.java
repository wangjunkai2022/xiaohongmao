package io.sentry.util;

import io.sentry.b0;
import io.sentry.o0;
import io.sentry.t5;
import io.sentry.util.h;
import m8.a;

/* compiled from: HintUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class h {

    /* compiled from: HintUtils.java */
    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface a<T> {
        void accept(@m8.g T t9);
    }

    /* compiled from: HintUtils.java */
    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface b {
        void a(@m8.h Object obj, @m8.g Class<?> cls);
    }

    /* compiled from: HintUtils.java */
    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface c<T> {
        void accept(@m8.h T t9);
    }

    private h() {
    }

    public static b0 e(Object obj) {
        b0 b0Var = new b0();
        r(b0Var, obj);
        return b0Var;
    }

    @m8.h
    public static Object f(@m8.g b0 b0Var) {
        return b0Var.e(t5.f83978a);
    }

    public static boolean g(@m8.g b0 b0Var, @m8.g Class<?> cls) {
        return cls.isInstance(f(b0Var));
    }

    public static boolean h(@m8.g b0 b0Var) {
        return Boolean.TRUE.equals(b0Var.f(t5.f83979b, Boolean.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(Object obj, Class cls) {
    }

    public static <T> void m(@m8.g b0 b0Var, @m8.g Class<T> cls, final c<Object> cVar) {
        o(b0Var, cls, d.f84063a, new b() { // from class: io.sentry.util.f
            @Override // io.sentry.util.h.b
            public final void a(Object obj, Class cls2) {
                h.c.this.accept(obj);
            }
        });
    }

    public static <T> void n(@m8.g b0 b0Var, @m8.g Class<T> cls, a<T> aVar) {
        o(b0Var, cls, aVar, g.f84066a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void o(@m8.g b0 b0Var, @m8.g Class<T> cls, a<T> aVar, b bVar) {
        Object f10 = f(b0Var);
        if (g(b0Var, cls) && f10 != null) {
            aVar.accept(f10);
        } else {
            bVar.a(f10, cls);
        }
    }

    public static <T> void p(@m8.g b0 b0Var, @m8.g Class<T> cls, final o0 o0Var, a<T> aVar) {
        o(b0Var, cls, aVar, new b() { // from class: io.sentry.util.e
            @Override // io.sentry.util.h.b
            public final void a(Object obj, Class cls2) {
                k.a(cls2, obj, o0.this);
            }
        });
    }

    public static void q(@m8.g b0 b0Var, @m8.g String str) {
        if (str.startsWith(t5.f83980c) || str.startsWith(t5.f83982e) || str.startsWith(t5.f83981d)) {
            b0Var.m(t5.f83979b, Boolean.TRUE);
        }
    }

    public static void r(@m8.g b0 b0Var, Object obj) {
        b0Var.m(t5.f83978a, obj);
    }

    public static boolean s(@m8.g b0 b0Var) {
        return !g(b0Var, io.sentry.hints.d.class) || g(b0Var, io.sentry.hints.c.class);
    }
}
