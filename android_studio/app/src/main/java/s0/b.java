package s0;

import android.os.SystemClock;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: CurrentThreadTimeClock.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b implements a {
    @Override // s0.a
    public long now() {
        return SystemClock.currentThreadTimeMillis();
    }
}
