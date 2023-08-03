package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.app.Application;
import androidx.activity.ComponentActivity;

/* compiled from: ActivityComponentManager.java */
/* loaded from: classes3.dex */
public class a implements q6.c<Object> {

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f62031a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f62032b = new Object();

    /* renamed from: c  reason: collision with root package name */
    protected final Activity f62033c;

    /* renamed from: d  reason: collision with root package name */
    private final q6.c<f6.b> f62034d;

    /* compiled from: ActivityComponentManager.java */
    @dagger.hilt.e({f6.b.class})
    @dagger.hilt.b
    /* renamed from: dagger.hilt.android.internal.managers.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0506a {
        h6.a a();
    }

    public a(Activity activity) {
        this.f62033c = activity;
        this.f62034d = new b((ComponentActivity) activity);
    }

    protected Object a() {
        if (!(this.f62033c.getApplication() instanceof q6.c)) {
            if (Application.class.equals(this.f62033c.getApplication().getClass())) {
                throw new IllegalStateException("Hilt Activity must be attached to an @HiltAndroidApp Application. Did you forget to specify your Application's class name in your manifest's <application />'s android:name attribute?");
            }
            throw new IllegalStateException("Hilt Activity must be attached to an @AndroidEntryPoint Application. Found: " + this.f62033c.getApplication().getClass());
        }
        return ((InterfaceC0506a) dagger.hilt.c.a(this.f62034d, InterfaceC0506a.class)).a().a(this.f62033c).build();
    }

    @Override // q6.c
    public Object generatedComponent() {
        if (this.f62031a == null) {
            synchronized (this.f62032b) {
                if (this.f62031a == null) {
                    this.f62031a = a();
                }
            }
        }
        return this.f62031a;
    }
}
