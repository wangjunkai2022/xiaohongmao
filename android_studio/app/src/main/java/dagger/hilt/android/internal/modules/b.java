package dagger.hilt.android.internal.modules;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import dagger.internal.h;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ActivityModule_ProvideFragmentActivityFactory.java */
@r
@dagger.internal.e
@s("dagger.Reusable")
/* loaded from: classes3.dex */
public final class b implements h<FragmentActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Activity> f62052a;

    public b(u7.c<Activity> activityProvider) {
        this.f62052a = activityProvider;
    }

    public static b a(u7.c<Activity> activityProvider) {
        return new b(activityProvider);
    }

    public static FragmentActivity c(Activity activity) {
        return (FragmentActivity) p.f(a.b(activity));
    }

    @Override // u7.c
    /* renamed from: b */
    public FragmentActivity get() {
        return c(this.f62052a.get());
    }
}
