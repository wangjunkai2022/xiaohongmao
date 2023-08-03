package io.reactivex.disposables;

/* compiled from: SubscriptionDisposable.java */
/* loaded from: classes3.dex */
final class i extends f<org.reactivestreams.e> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f71091b = -707001650852963139L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(org.reactivestreams.e eVar) {
        super(eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.disposables.f
    /* renamed from: b */
    public void a(@m7.e org.reactivestreams.e eVar) {
        eVar.cancel();
    }
}
