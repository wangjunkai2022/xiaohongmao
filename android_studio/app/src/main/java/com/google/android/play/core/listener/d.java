package com.google.android.play.core.listener;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.google.android.play.core.internal.e1;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.i1;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected final h f31788a;

    /* renamed from: b  reason: collision with root package name */
    private final IntentFilter f31789b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31790c;

    /* renamed from: d  reason: collision with root package name */
    protected final Set f31791d = new HashSet();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f31792e = null;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f31793f = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(h hVar, IntentFilter intentFilter, Context context) {
        this.f31788a = hVar;
        this.f31789b = intentFilter;
        this.f31790c = e1.a(context);
    }

    private final void b() {
        c cVar;
        if ((this.f31793f || !this.f31791d.isEmpty()) && this.f31792e == null) {
            c cVar2 = new c(this, null);
            this.f31792e = cVar2;
            this.f31790c.registerReceiver(cVar2, this.f31789b);
        }
        if (this.f31793f || !this.f31791d.isEmpty() || (cVar = this.f31792e) == null) {
            return;
        }
        this.f31790c.unregisterReceiver(cVar);
        this.f31792e = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Context context, Intent intent);

    public final synchronized void c() {
        this.f31788a.d("clearListeners", new Object[0]);
        this.f31791d.clear();
        b();
    }

    public final synchronized void d(a aVar) {
        this.f31788a.d("registerListener", new Object[0]);
        i1.a(aVar, "Registered Play Core listener should not be null.");
        this.f31791d.add(aVar);
        b();
    }

    public final synchronized void e(boolean z9) {
        this.f31793f = z9;
        b();
    }

    public final synchronized void f(a aVar) {
        this.f31788a.d("unregisterListener", new Object[0]);
        i1.a(aVar, "Unregistered Play Core listener should not be null.");
        this.f31791d.remove(aVar);
        b();
    }

    public final synchronized void g(Object obj) {
        Iterator it = new HashSet(this.f31791d).iterator();
        while (it.hasNext()) {
            ((a) it.next()).onStateUpdate(obj);
        }
    }

    public final synchronized boolean h() {
        return this.f31792e != null;
    }
}
