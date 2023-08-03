package io.reactivex.disposables;

/* compiled from: ActionDisposable.java */
/* loaded from: classes3.dex */
final class a extends f<n7.a> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f71083b = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(n7.a aVar) {
        super(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.disposables.f
    /* renamed from: b */
    public void a(@m7.e n7.a aVar) {
        try {
            aVar.run();
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }
}
