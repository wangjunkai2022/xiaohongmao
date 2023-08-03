package s0;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SystemClock.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: b  reason: collision with root package name */
    private static final e f93233b = new e();

    private e() {
    }

    public static e a() {
        return f93233b;
    }

    @Override // s0.a
    public long now() {
        return System.currentTimeMillis();
    }
}
