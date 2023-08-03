package dagger.hilt.android.internal.managers;

/* compiled from: ApplicationComponentManager.java */
/* loaded from: classes3.dex */
public final class d implements q6.c<Object> {

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f62044a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f62045b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final f f62046c;

    public d(f componentCreator) {
        this.f62046c = componentCreator;
    }

    @Override // q6.c
    public Object generatedComponent() {
        if (this.f62044a == null) {
            synchronized (this.f62045b) {
                if (this.f62044a == null) {
                    this.f62044a = this.f62046c.get();
                }
            }
        }
        return this.f62044a;
    }
}
