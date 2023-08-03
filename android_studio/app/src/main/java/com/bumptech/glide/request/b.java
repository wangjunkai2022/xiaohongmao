package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;

/* compiled from: ErrorRequestCoordinator.java */
/* loaded from: classes.dex */
public final class b implements RequestCoordinator, e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f9537a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final RequestCoordinator f9538b;

    /* renamed from: c  reason: collision with root package name */
    private volatile e f9539c;

    /* renamed from: d  reason: collision with root package name */
    private volatile e f9540d;
    @GuardedBy("requestLock")

    /* renamed from: e  reason: collision with root package name */
    private RequestCoordinator.RequestState f9541e;
    @GuardedBy("requestLock")

    /* renamed from: f  reason: collision with root package name */
    private RequestCoordinator.RequestState f9542f;

    public b(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f9541e = requestState;
        this.f9542f = requestState;
        this.f9537a = obj;
        this.f9538b = requestCoordinator;
    }

    @GuardedBy("requestLock")
    private boolean k(e eVar) {
        return eVar.equals(this.f9539c) || (this.f9541e == RequestCoordinator.RequestState.FAILED && eVar.equals(this.f9540d));
    }

    @GuardedBy("requestLock")
    private boolean l() {
        RequestCoordinator requestCoordinator = this.f9538b;
        return requestCoordinator == null || requestCoordinator.j(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        RequestCoordinator requestCoordinator = this.f9538b;
        return requestCoordinator == null || requestCoordinator.b(this);
    }

    @GuardedBy("requestLock")
    private boolean n() {
        RequestCoordinator requestCoordinator = this.f9538b;
        return requestCoordinator == null || requestCoordinator.c(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.e
    public boolean a() {
        boolean z9;
        synchronized (this.f9537a) {
            z9 = this.f9539c.a() || this.f9540d.a();
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean b(e eVar) {
        boolean z9;
        synchronized (this.f9537a) {
            z9 = m() && k(eVar);
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean c(e eVar) {
        boolean z9;
        synchronized (this.f9537a) {
            z9 = n() && k(eVar);
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.e
    public void clear() {
        synchronized (this.f9537a) {
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f9541e = requestState;
            this.f9539c.clear();
            if (this.f9542f != requestState) {
                this.f9542f = requestState;
                this.f9540d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void d(e eVar) {
        synchronized (this.f9537a) {
            if (!eVar.equals(this.f9540d)) {
                this.f9541e = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator.RequestState requestState = this.f9542f;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f9542f = requestState2;
                    this.f9540d.i();
                }
                return;
            }
            this.f9542f = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator requestCoordinator = this.f9538b;
            if (requestCoordinator != null) {
                requestCoordinator.d(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean e() {
        boolean z9;
        synchronized (this.f9537a) {
            RequestCoordinator.RequestState requestState = this.f9541e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
            z9 = requestState == requestState2 && this.f9542f == requestState2;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void f(e eVar) {
        synchronized (this.f9537a) {
            if (eVar.equals(this.f9539c)) {
                this.f9541e = RequestCoordinator.RequestState.SUCCESS;
            } else if (eVar.equals(this.f9540d)) {
                this.f9542f = RequestCoordinator.RequestState.SUCCESS;
            }
            RequestCoordinator requestCoordinator = this.f9538b;
            if (requestCoordinator != null) {
                requestCoordinator.f(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean g() {
        boolean z9;
        synchronized (this.f9537a) {
            RequestCoordinator.RequestState requestState = this.f9541e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
            z9 = requestState == requestState2 || this.f9542f == requestState2;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator root;
        synchronized (this.f9537a) {
            RequestCoordinator requestCoordinator = this.f9538b;
            root = requestCoordinator != null ? requestCoordinator.getRoot() : this;
        }
        return root;
    }

    @Override // com.bumptech.glide.request.e
    public boolean h(e eVar) {
        if (eVar instanceof b) {
            b bVar = (b) eVar;
            return this.f9539c.h(bVar.f9539c) && this.f9540d.h(bVar.f9540d);
        }
        return false;
    }

    @Override // com.bumptech.glide.request.e
    public void i() {
        synchronized (this.f9537a) {
            RequestCoordinator.RequestState requestState = this.f9541e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2) {
                this.f9541e = requestState2;
                this.f9539c.i();
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean isRunning() {
        boolean z9;
        synchronized (this.f9537a) {
            RequestCoordinator.RequestState requestState = this.f9541e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            z9 = requestState == requestState2 || this.f9542f == requestState2;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean j(e eVar) {
        boolean z9;
        synchronized (this.f9537a) {
            z9 = l() && k(eVar);
        }
        return z9;
    }

    public void o(e eVar, e eVar2) {
        this.f9539c = eVar;
        this.f9540d = eVar2;
    }

    @Override // com.bumptech.glide.request.e
    public void pause() {
        synchronized (this.f9537a) {
            RequestCoordinator.RequestState requestState = this.f9541e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState == requestState2) {
                this.f9541e = RequestCoordinator.RequestState.PAUSED;
                this.f9539c.pause();
            }
            if (this.f9542f == requestState2) {
                this.f9542f = RequestCoordinator.RequestState.PAUSED;
                this.f9540d.pause();
            }
        }
    }
}
