package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.f;

/* compiled from: BitmapContainerTransitionFactory.java */
/* loaded from: classes.dex */
public abstract class a<R> implements g<R> {

    /* renamed from: a  reason: collision with root package name */
    private final g<Drawable> f9660a;

    /* compiled from: BitmapContainerTransitionFactory.java */
    /* renamed from: com.bumptech.glide.request.transition.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private final class C0065a implements f<R> {

        /* renamed from: a  reason: collision with root package name */
        private final f<Drawable> f9661a;

        C0065a(f<Drawable> fVar) {
            this.f9661a = fVar;
        }

        @Override // com.bumptech.glide.request.transition.f
        public boolean a(R r9, f.a aVar) {
            return this.f9661a.a(new BitmapDrawable(aVar.getView().getResources(), a.this.b(r9)), aVar);
        }
    }

    public a(g<Drawable> gVar) {
        this.f9660a = gVar;
    }

    @Override // com.bumptech.glide.request.transition.g
    public f<R> a(DataSource dataSource, boolean z9) {
        return new C0065a(this.f9660a.a(dataSource, z9));
    }

    protected abstract Bitmap b(R r9);
}
