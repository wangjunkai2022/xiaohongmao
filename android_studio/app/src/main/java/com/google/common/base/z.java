package com.google.common.base;

import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Platform.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f32327a = Logger.getLogger(z.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final y f32328b = e();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Platform.java */
    /* loaded from: classes2.dex */
    public static final class b implements y {
        private b() {
        }

        @Override // com.google.common.base.y
        public g a(String str) {
            return new t(Pattern.compile(str));
        }

        @Override // com.google.common.base.y
        public boolean b() {
            return true;
        }
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(String str) {
        a0.E(str);
        return f32328b.a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(@NullableDecl String str) {
        if (j(str)) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(double d4) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Enum<T>> Optional<T> d(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = j.a(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.of(cls.cast(weakReference.get()));
    }

    private static y e() {
        return new b();
    }

    private static void f(ServiceConfigurationError serviceConfigurationError) {
        f32327a.log(Level.WARNING, "Error loading regex compiler, falling back to next option", (Throwable) serviceConfigurationError);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(@NullableDecl String str) {
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h() {
        return f32328b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d i(d dVar) {
        return dVar.K();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(@NullableDecl String str) {
        return str == null || str.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long k() {
        return System.nanoTime();
    }
}
