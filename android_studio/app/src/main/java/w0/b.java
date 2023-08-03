package w0;

import com.facebook.infer.annotation.Nullsafe;
import r7.h;
import x0.e;

/* compiled from: DebugOverlayImageOriginListener.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private int f94217a = 1;

    @Override // x0.e
    public void a(String controllerId, int imageOrigin, boolean successful, @h String ultimateProducerName) {
        this.f94217a = imageOrigin;
    }

    public int b() {
        return this.f94217a;
    }
}
