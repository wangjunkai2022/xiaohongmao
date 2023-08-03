package dagger.internal;

/* compiled from: ProviderOfLazy.java */
/* loaded from: classes3.dex */
public final class q<T> implements u7.c<d6.e<T>> {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f62071b = false;

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<T> f62072a;

    private q(u7.c<T> cVar) {
        this.f62072a = cVar;
    }

    public static <T> u7.c<d6.e<T>> a(u7.c<T> cVar) {
        return new q((u7.c) p.b(cVar));
    }

    @Override // u7.c
    /* renamed from: b */
    public d6.e<T> get() {
        return g.a(this.f62072a);
    }
}
