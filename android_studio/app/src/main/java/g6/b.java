package g6;

import android.os.Looper;

/* compiled from: ThreadUtil.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static Thread f67845a;

    private b() {
    }

    public static void a() {
        if (!b()) {
            throw new IllegalStateException("Must be called on the Main thread.");
        }
    }

    public static boolean b() {
        if (f67845a == null) {
            f67845a = Looper.getMainLooper().getThread();
        }
        return Thread.currentThread() == f67845a;
    }
}
