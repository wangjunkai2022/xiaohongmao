package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.j;

/* compiled from: ViewPropertyAnimationFactory.java */
/* loaded from: classes.dex */
public class i<R> implements g<R> {

    /* renamed from: a  reason: collision with root package name */
    private final j.a f9677a;

    /* renamed from: b  reason: collision with root package name */
    private j<R> f9678b;

    public i(j.a aVar) {
        this.f9677a = aVar;
    }

    @Override // com.bumptech.glide.request.transition.g
    public f<R> a(DataSource dataSource, boolean z9) {
        if (dataSource != DataSource.MEMORY_CACHE && z9) {
            if (this.f9678b == null) {
                this.f9678b = new j<>(this.f9677a);
            }
            return this.f9678b;
        }
        return e.b();
    }
}
