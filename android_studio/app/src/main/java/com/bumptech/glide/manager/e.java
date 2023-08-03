package com.bumptech.glide.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.c;

/* compiled from: DefaultConnectivityMonitor.java */
/* loaded from: classes.dex */
final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9435a;

    /* renamed from: b  reason: collision with root package name */
    final c.a f9436b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull Context context, @NonNull c.a aVar) {
        this.f9435a = context.getApplicationContext();
        this.f9436b = aVar;
    }

    private void b() {
        r.a(this.f9435a).d(this.f9436b);
    }

    private void c() {
        r.a(this.f9435a).f(this.f9436b);
    }

    @Override // com.bumptech.glide.manager.m
    public void a() {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStart() {
        b();
    }

    @Override // com.bumptech.glide.manager.m
    public void onStop() {
        c();
    }
}
