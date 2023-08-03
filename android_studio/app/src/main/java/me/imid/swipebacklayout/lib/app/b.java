package me.imid.swipebacklayout.lib.app;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import me.imid.swipebacklayout.lib.SwipeBackLayout;
import me.imid.swipebacklayout.lib.b;

/* compiled from: SwipeBackActivityHelper.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Activity f87562a;

    /* renamed from: b  reason: collision with root package name */
    private SwipeBackLayout f87563b;

    public b(Activity activity) {
        this.f87562a = activity;
    }

    public View a(int i4) {
        SwipeBackLayout swipeBackLayout = this.f87563b;
        if (swipeBackLayout != null) {
            return swipeBackLayout.findViewById(i4);
        }
        return null;
    }

    public SwipeBackLayout b() {
        return this.f87563b;
    }

    public void c() {
        this.f87562a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.f87562a.getWindow().getDecorView().setBackgroundDrawable(null);
        this.f87563b = (SwipeBackLayout) LayoutInflater.from(this.f87562a).inflate(b.i.T, (ViewGroup) null);
    }

    public void d() {
        this.f87563b.p(this.f87562a);
    }
}
