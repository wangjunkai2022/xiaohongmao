package m0;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: NoOpDiskTrimmableRegistry.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c implements b {
    @h

    /* renamed from: a  reason: collision with root package name */
    private static c f86941a;

    private c() {
    }

    public static synchronized c c() {
        c cVar;
        synchronized (c.class) {
            if (f86941a == null) {
                f86941a = new c();
            }
            cVar = f86941a;
        }
        return cVar;
    }

    @Override // m0.b
    public void a(a trimmable) {
    }

    @Override // m0.b
    public void b(a trimmable) {
    }
}
