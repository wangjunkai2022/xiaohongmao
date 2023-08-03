package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;

/* compiled from: ThumbnailRequestCoordinator.java */
/* loaded from: classes.dex */
public class k implements RequestCoordinator, e {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final RequestCoordinator f9592a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f9593b;

    /* renamed from: c  reason: collision with root package name */
    private volatile e f9594c;

    /* renamed from: d  reason: collision with root package name */
    private volatile e f9595d;
    @GuardedBy("requestLock")

    /* renamed from: e  reason: collision with root package name */
    private RequestCoordinator.RequestState f9596e;
    @GuardedBy("requestLock")

    /* renamed from: f  reason: collision with root package name */
    private RequestCoordinator.RequestState f9597f;
    @GuardedBy("requestLock")

    /* renamed from: g  reason: collision with root package name */
    private boolean f9598g;

    public k(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f9596e = requestState;
        this.f9597f = requestState;
        this.f9593b = obj;
        this.f9592a = requestCoordinator;
    }

    @GuardedBy("requestLock")
    private boolean k() {
        RequestCoordinator requestCoordinator = this.f9592a;
        return requestCoordinator == null || requestCoordinator.j(this);
    }

    @GuardedBy("requestLock")
    private boolean l() {
        RequestCoordinator requestCoordinator = this.f9592a;
        return requestCoordinator == null || requestCoordinator.b(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        RequestCoordinator requestCoordinator = this.f9592a;
        return requestCoordinator == null || requestCoordinator.c(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.e
    public boolean a() {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = this.f9595d.a() || this.f9594c.a();
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean b(e eVar) {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = l() && eVar.equals(this.f9594c) && !a();
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean c(e eVar) {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = m() && (eVar.equals(this.f9594c) || this.f9596e != RequestCoordinator.RequestState.SUCCESS);
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.e
    public void clear() {
        synchronized (this.f9593b) {
            this.f9598g = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f9596e = requestState;
            this.f9597f = requestState;
            this.f9595d.clear();
            this.f9594c.clear();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void d(e eVar) {
        synchronized (this.f9593b) {
            if (!eVar.equals(this.f9594c)) {
                this.f9597f = RequestCoordinator.RequestState.FAILED;
                return;
            }
            this.f9596e = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator requestCoordinator = this.f9592a;
            if (requestCoordinator != null) {
                requestCoordinator.d(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean e() {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = this.f9596e == RequestCoordinator.RequestState.CLEARED;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void f(e eVar) {
        synchronized (this.f9593b) {
            if (eVar.equals(this.f9595d)) {
                this.f9597f = RequestCoordinator.RequestState.SUCCESS;
                return;
            }
            this.f9596e = RequestCoordinator.RequestState.SUCCESS;
            RequestCoordinator requestCoordinator = this.f9592a;
            if (requestCoordinator != null) {
                requestCoordinator.f(this);
            }
            if (!this.f9597f.a()) {
                this.f9595d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean g() {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = this.f9596e == RequestCoordinator.RequestState.SUCCESS;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        RequestCoordinator root;
        synchronized (this.f9593b) {
            RequestCoordinator requestCoordinator = this.f9592a;
            root = requestCoordinator != null ? requestCoordinator.getRoot() : this;
        }
        return root;
    }

    @Override // com.bumptech.glide.request.e
    public boolean h(e eVar) {
        if (eVar instanceof k) {
            k kVar = (k) eVar;
            if (this.f9594c == null) {
                if (kVar.f9594c != null) {
                    return false;
                }
            } else if (!this.f9594c.h(kVar.f9594c)) {
                return false;
            }
            if (this.f9595d == null) {
                if (kVar.f9595d != null) {
                    return false;
                }
            } else if (!this.f9595d.h(kVar.f9595d)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.e
    public void i() {
        synchronized (this.f9593b) {
            this.f9598g = true;
            if (this.f9596e != RequestCoordinator.RequestState.SUCCESS) {
                RequestCoordinator.RequestState requestState = this.f9597f;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f9597f = requestState2;
                    this.f9595d.i();
                }
            }
            if (this.f9598g) {
                RequestCoordinator.RequestState requestState3 = this.f9596e;
                RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                if (requestState3 != requestState4) {
                    this.f9596e = requestState4;
                    this.f9594c.i();
                }
            }
            this.f9598g = false;
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean isRunning() {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = this.f9596e == RequestCoordinator.RequestState.RUNNING;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean j(e eVar) {
        boolean z9;
        synchronized (this.f9593b) {
            z9 = k() && eVar.equals(this.f9594c) && this.f9596e != RequestCoordinator.RequestState.PAUSED;
        }
        return z9;
    }

    public void n(e eVar, e eVar2) {
        this.f9594c = eVar;
        this.f9595d = eVar2;
    }

    @Override // com.bumptech.glide.request.e
    public void pause() {
        synchronized (this.f9593b) {
            if (!this.f9597f.a()) {
                this.f9597f = RequestCoordinator.RequestState.PAUSED;
                this.f9595d.pause();
            }
            if (!this.f9596e.a()) {
                this.f9596e = RequestCoordinator.RequestState.PAUSED;
                this.f9594c.pause();
            }
        }
    }
}
