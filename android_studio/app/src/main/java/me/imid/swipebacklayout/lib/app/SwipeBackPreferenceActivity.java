package me.imid.swipebacklayout.lib.app;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.View;
import me.imid.swipebacklayout.lib.SwipeBackLayout;

/* loaded from: classes4.dex */
public class SwipeBackPreferenceActivity extends PreferenceActivity implements a {

    /* renamed from: a  reason: collision with root package name */
    private b f87561a;

    @Override // me.imid.swipebacklayout.lib.app.a
    public void e(boolean z9) {
        f().setEnableGesture(z9);
    }

    @Override // me.imid.swipebacklayout.lib.app.a
    public SwipeBackLayout f() {
        return this.f87561a.b();
    }

    @Override // android.app.Activity
    public View findViewById(int i4) {
        b bVar;
        View findViewById = super.findViewById(i4);
        return (findViewById != null || (bVar = this.f87561a) == null) ? findViewById : bVar.a(i4);
    }

    @Override // me.imid.swipebacklayout.lib.app.a
    public void o() {
        f().t();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b bVar = new b(this);
        this.f87561a = bVar;
        bVar.c();
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.f87561a.d();
    }
}
