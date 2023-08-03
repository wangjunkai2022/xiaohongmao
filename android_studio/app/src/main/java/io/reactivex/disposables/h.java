package io.reactivex.disposables;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SerialDisposable.java */
/* loaded from: classes3.dex */
public final class h implements c {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<c> f71090a;

    public h() {
        this.f71090a = new AtomicReference<>();
    }

    @m7.f
    public c a() {
        c cVar = this.f71090a.get();
        return cVar == DisposableHelper.DISPOSED ? d.a() : cVar;
    }

    public boolean b(@m7.f c cVar) {
        return DisposableHelper.replace(this.f71090a, cVar);
    }

    public boolean c(@m7.f c cVar) {
        return DisposableHelper.set(this.f71090a, cVar);
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this.f71090a);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f71090a.get());
    }

    public h(@m7.f c cVar) {
        this.f71090a = new AtomicReference<>(cVar);
    }
}
