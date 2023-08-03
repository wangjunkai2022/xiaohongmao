package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class q1<TListener> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private TListener f29167a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f29168b = false;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ e f29169c;

    public q1(e eVar, TListener tlistener) {
        this.f29169c = eVar;
        this.f29167a = tlistener;
    }

    protected abstract void a(TListener tlistener);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b();

    public final void c() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f29167a;
            if (this.f29168b) {
                String obj = toString();
                StringBuilder sb = new StringBuilder(obj.length() + 47);
                sb.append("Callback proxy ");
                sb.append(obj);
                sb.append(" being reused. This is not safe.");
                Log.w("GmsClient", sb.toString());
            }
        }
        if (tlistener != null) {
            try {
                a(tlistener);
            } catch (RuntimeException e4) {
                throw e4;
            }
        }
        synchronized (this) {
            this.f29168b = true;
        }
        e();
    }

    public final void d() {
        synchronized (this) {
            this.f29167a = null;
        }
    }

    public final void e() {
        ArrayList arrayList;
        ArrayList arrayList2;
        d();
        arrayList = this.f29169c.f29090r;
        synchronized (arrayList) {
            arrayList2 = this.f29169c.f29090r;
            arrayList2.remove(this);
        }
    }
}
