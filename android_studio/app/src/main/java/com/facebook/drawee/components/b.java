package com.facebook.drawee.components;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import com.facebook.drawee.components.a;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeferredReleaserConcurrentImpl.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b extends com.facebook.drawee.components.a {

    /* renamed from: b  reason: collision with root package name */
    private final Object f11318b = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f11322f = new a();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<a.InterfaceC0088a> f11320d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<a.InterfaceC0088a> f11321e = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final Handler f11319c = new Handler(Looper.getMainLooper());

    /* compiled from: DeferredReleaserConcurrentImpl.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            synchronized (b.this.f11318b) {
                ArrayList arrayList = b.this.f11321e;
                b bVar = b.this;
                bVar.f11321e = bVar.f11320d;
                b.this.f11320d = arrayList;
            }
            int size = b.this.f11321e.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((a.InterfaceC0088a) b.this.f11321e.get(i4)).release();
            }
            b.this.f11321e.clear();
        }
    }

    @Override // com.facebook.drawee.components.a
    @AnyThread
    public void a(a.InterfaceC0088a releasable) {
        synchronized (this.f11318b) {
            this.f11320d.remove(releasable);
        }
    }

    @Override // com.facebook.drawee.components.a
    @AnyThread
    public void d(a.InterfaceC0088a releasable) {
        if (!com.facebook.drawee.components.a.c()) {
            releasable.release();
            return;
        }
        synchronized (this.f11318b) {
            if (this.f11320d.contains(releasable)) {
                return;
            }
            this.f11320d.add(releasable);
            boolean z9 = true;
            if (this.f11320d.size() != 1) {
                z9 = false;
            }
            if (z9) {
                this.f11319c.post(this.f11322f);
            }
        }
    }
}
