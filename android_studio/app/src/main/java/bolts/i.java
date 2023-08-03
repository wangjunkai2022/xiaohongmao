package bolts;

/* compiled from: TaskCompletionSource.java */
/* loaded from: classes.dex */
public class i<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final h<TResult> f3106a = new h<>();

    public h<TResult> a() {
        return this.f3106a;
    }

    public void b() {
        if (!e()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void c(Exception exc) {
        if (!f(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }

    public void d(TResult tresult) {
        if (!g(tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public boolean e() {
        return this.f3106a.V();
    }

    public boolean f(Exception exc) {
        return this.f3106a.W(exc);
    }

    public boolean g(TResult tresult) {
        return this.f3106a.X(tresult);
    }
}
