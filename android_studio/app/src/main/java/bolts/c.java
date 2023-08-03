package bolts;

import java.util.Locale;
import java.util.concurrent.CancellationException;

/* compiled from: CancellationToken.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final e f3028a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(e eVar) {
        this.f3028a = eVar;
    }

    public boolean a() {
        return this.f3028a.q();
    }

    public d b(Runnable runnable) {
        return this.f3028a.s(runnable);
    }

    public void c() throws CancellationException {
        this.f3028a.y();
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.f3028a.q()));
    }
}
