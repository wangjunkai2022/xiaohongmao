package me.imid.swipebacklayout.lib.app;

import android.app.Activity;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import me.imid.swipebacklayout.lib.SwipeBackLayout;

/* compiled from: SwipeBackListenerActivityAdapter.java */
/* loaded from: classes4.dex */
public class c implements SwipeBackLayout.c {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Activity> f87564a;

    public c(@NonNull Activity activity) {
        this.f87564a = new WeakReference<>(activity);
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.b
    public void a(int i4, float f10) {
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.c
    public void b() {
        Activity activity = this.f87564a.get();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.b
    public void c() {
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.b
    public void d(int i4) {
        Activity activity = this.f87564a.get();
        if (activity != null) {
            me.imid.swipebacklayout.lib.c.b(activity);
        }
    }
}
