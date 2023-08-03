package com.facebook.drawee.components;

import android.os.Looper;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: DeferredReleaser.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class a {
    @h

    /* renamed from: a  reason: collision with root package name */
    private static a f11317a;

    /* compiled from: DeferredReleaser.java */
    /* renamed from: com.facebook.drawee.components.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0088a {
        void release();
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            if (f11317a == null) {
                f11317a = new b();
            }
            aVar = f11317a;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public abstract void a(InterfaceC0088a releasable);

    public abstract void d(InterfaceC0088a releasable);
}
