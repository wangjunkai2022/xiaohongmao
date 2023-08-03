package bolts;

import bolts.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnobservedErrorNotifier.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private h<?> f3107a;

    public j(h<?> hVar) {
        this.f3107a = hVar;
    }

    public void a() {
        this.f3107a = null;
    }

    protected void finalize() throws Throwable {
        h.q G;
        try {
            h<?> hVar = this.f3107a;
            if (hVar != null && (G = h.G()) != null) {
                G.a(hVar, new UnobservedTaskException(hVar.E()));
            }
        } finally {
            super.finalize();
        }
    }
}
