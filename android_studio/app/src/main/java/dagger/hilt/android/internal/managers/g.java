package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager;

/* compiled from: FragmentComponentManager.java */
/* loaded from: classes3.dex */
public class g implements q6.c<Object> {

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f62047a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f62048b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Fragment f62049c;

    /* compiled from: FragmentComponentManager.java */
    @dagger.hilt.e({f6.a.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface a {
        h6.c q();
    }

    public g(Fragment fragment) {
        this.f62049c = fragment;
    }

    private Object a() {
        q6.f.c(this.f62049c.getHost(), "Hilt Fragments must be attached before creating the component.");
        q6.f.d(this.f62049c.getHost() instanceof q6.c, "Hilt Fragments must be attached to an @AndroidEntryPoint Activity. Found: %s", this.f62049c.getHost().getClass());
        f(this.f62049c);
        return ((a) dagger.hilt.c.a(this.f62049c.getHost(), a.class)).q().a(this.f62049c).build();
    }

    public static ContextWrapper b(Context base, Fragment fragment) {
        return new ViewComponentManager.FragmentContextWrapper(base, fragment);
    }

    public static ContextWrapper c(LayoutInflater baseInflater, Fragment fragment) {
        return new ViewComponentManager.FragmentContextWrapper(baseInflater, fragment);
    }

    public static final Context d(Context context) {
        while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    public static final void e(Fragment fragment) {
        q6.f.b(fragment);
        if (fragment.getArguments() == null) {
            fragment.setArguments(new Bundle());
        }
    }

    protected void f(Fragment fragment) {
    }

    @Override // q6.c
    public Object generatedComponent() {
        if (this.f62047a == null) {
            synchronized (this.f62048b) {
                if (this.f62047a == null) {
                    this.f62047a = a();
                }
            }
        }
        return this.f62047a;
    }
}
