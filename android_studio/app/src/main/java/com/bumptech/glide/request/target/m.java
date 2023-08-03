package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: PreloadTarget.java */
/* loaded from: classes.dex */
public final class m<Z> extends e<Z> {

    /* renamed from: e  reason: collision with root package name */
    private static final int f9639e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final Handler f9640f = new Handler(Looper.getMainLooper(), new a());

    /* renamed from: d  reason: collision with root package name */
    private final com.bumptech.glide.k f9641d;

    /* compiled from: PreloadTarget.java */
    /* loaded from: classes.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((m) message.obj).b();
                return true;
            }
            return false;
        }
    }

    private m(com.bumptech.glide.k kVar, int i4, int i10) {
        super(i4, i10);
        this.f9641d = kVar;
    }

    public static <Z> m<Z> c(com.bumptech.glide.k kVar, int i4, int i10) {
        return new m<>(kVar, i4, i10);
    }

    void b() {
        this.f9641d.A(this);
    }

    @Override // com.bumptech.glide.request.target.p
    public void k(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.p
    public void q(@NonNull Z z9, @Nullable com.bumptech.glide.request.transition.f<? super Z> fVar) {
        com.bumptech.glide.request.e e4 = e();
        if (e4 == null || !e4.g()) {
            return;
        }
        f9640f.obtainMessage(1, this).sendToTarget();
    }
}
