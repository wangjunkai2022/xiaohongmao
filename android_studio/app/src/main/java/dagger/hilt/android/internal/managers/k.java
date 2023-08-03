package dagger.hilt.android.internal.managers;

import android.app.Application;
import android.app.Service;

/* compiled from: ServiceComponentManager.java */
/* loaded from: classes3.dex */
public final class k implements q6.c<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Service f62050a;

    /* renamed from: b  reason: collision with root package name */
    private Object f62051b;

    /* compiled from: ServiceComponentManager.java */
    @dagger.hilt.e({p6.a.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface a {
        h6.d a();
    }

    public k(Service service) {
        this.f62050a = service;
    }

    private Object a() {
        Application application = this.f62050a.getApplication();
        q6.f.d(application instanceof q6.c, "Hilt service must be attached to an @AndroidEntryPoint Application. Found: %s", application.getClass());
        return ((a) dagger.hilt.c.a(application, a.class)).a().a(this.f62050a).build();
    }

    @Override // q6.c
    public Object generatedComponent() {
        if (this.f62051b == null) {
            this.f62051b = a();
        }
        return this.f62051b;
    }
}
