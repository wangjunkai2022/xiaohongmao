package y2;

import android.os.SystemClock;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class k implements g {

    /* renamed from: a  reason: collision with root package name */
    private static final k f94698a = new k();

    private k() {
    }

    @NonNull
    @u2.a
    public static g d() {
        return f94698a;
    }

    @Override // y2.g
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // y2.g
    public final long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // y2.g
    public final long c() {
        return SystemClock.currentThreadTimeMillis();
    }

    @Override // y2.g
    public final long nanoTime() {
        return System.nanoTime();
    }
}
