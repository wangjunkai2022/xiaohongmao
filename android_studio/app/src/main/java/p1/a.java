package p1;

import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
import v1.t;

/* compiled from: FrescoInstrumenter.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static volatile InterfaceC0833a f93075a;

    /* compiled from: FrescoInstrumenter.java */
    /* renamed from: p1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0833a {
        @Nullable
        Runnable a(Runnable runnable, String tag);

        boolean b();

        void c(Object token, Throwable th);

        @Nullable
        Object d(String tag);

        @Nullable
        Object e(Object token, @Nullable String tag);

        @Nullable
        void f(Object token);
    }

    @Nullable
    public static Runnable a(@Nullable @t Runnable runnable, @Nullable String tag) {
        InterfaceC0833a interfaceC0833a = f93075a;
        if (interfaceC0833a == null || runnable == null) {
            return runnable;
        }
        if (tag == null) {
            tag = "";
        }
        return interfaceC0833a.a(runnable, tag);
    }

    public static boolean b() {
        InterfaceC0833a interfaceC0833a = f93075a;
        if (interfaceC0833a == null) {
            return false;
        }
        return interfaceC0833a.b();
    }

    public static void c(@Nullable Object token, Throwable th) {
        InterfaceC0833a interfaceC0833a = f93075a;
        if (interfaceC0833a == null || token == null) {
            return;
        }
        interfaceC0833a.c(token, th);
    }

    @Nullable
    public static Object d(@Nullable String tag) {
        InterfaceC0833a interfaceC0833a = f93075a;
        if (interfaceC0833a == null || tag == null) {
            return null;
        }
        return interfaceC0833a.d(tag);
    }

    @Nullable
    public static Object e(@Nullable Object token, @Nullable String tag) {
        InterfaceC0833a interfaceC0833a = f93075a;
        if (interfaceC0833a == null || token == null) {
            return null;
        }
        return interfaceC0833a.e(token, tag);
    }

    public static void f(@Nullable Object token) {
        InterfaceC0833a interfaceC0833a = f93075a;
        if (interfaceC0833a == null || token == null) {
            return;
        }
        interfaceC0833a.f(token);
    }

    public static void g(@Nullable InterfaceC0833a instrumenter) {
        f93075a = instrumenter;
    }
}
