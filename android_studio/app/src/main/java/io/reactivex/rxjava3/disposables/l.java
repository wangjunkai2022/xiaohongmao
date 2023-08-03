package io.reactivex.rxjava3.disposables;

/* compiled from: SubscriptionDisposable.java */
/* loaded from: classes4.dex */
final class l extends i<org.reactivestreams.e> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f76160b = -707001650852963139L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(org.reactivestreams.e value) {
        super(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.disposables.i
    /* renamed from: b */
    public void a(@p7.e org.reactivestreams.e value) {
        value.cancel();
    }
}
