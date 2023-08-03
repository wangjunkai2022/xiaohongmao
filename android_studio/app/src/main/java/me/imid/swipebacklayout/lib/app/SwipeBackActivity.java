package me.imid.swipebacklayout.lib.app;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import me.imid.swipebacklayout.lib.SwipeBackLayout;

/* loaded from: classes4.dex */
public class SwipeBackActivity extends AppCompatActivity implements a {

    /* renamed from: a  reason: collision with root package name */
    private b f87560a;

    @Override // me.imid.swipebacklayout.lib.app.a
    public void e(boolean z9) {
        f().setEnableGesture(z9);
    }

    @Override // me.imid.swipebacklayout.lib.app.a
    public SwipeBackLayout f() {
        return this.f87560a.b();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public View findViewById(int i4) {
        b bVar;
        View findViewById = super.findViewById(i4);
        return (findViewById != null || (bVar = this.f87560a) == null) ? findViewById : bVar.a(i4);
    }

    @Override // me.imid.swipebacklayout.lib.app.a
    public void o() {
        me.imid.swipebacklayout.lib.c.b(this);
        f().t();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b bVar = new b(this);
        this.f87560a = bVar;
        bVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.f87560a.d();
    }
}
