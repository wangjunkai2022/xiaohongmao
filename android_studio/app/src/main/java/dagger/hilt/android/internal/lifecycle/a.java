package dagger.hilt.android.internal.lifecycle;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistryOwner;
import d6.h;
import dagger.hilt.android.internal.lifecycle.d;
import java.util.Set;

/* compiled from: DefaultViewModelFactories.java */
/* loaded from: classes3.dex */
public final class a {

    /* compiled from: DefaultViewModelFactories.java */
    @dagger.hilt.e({f6.a.class})
    @dagger.hilt.b
    /* renamed from: dagger.hilt.android.internal.lifecycle.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0504a {
        d a();
    }

    /* compiled from: DefaultViewModelFactories.java */
    @dagger.hilt.e({f6.a.class})
    @h
    /* loaded from: classes3.dex */
    interface b {
        @d.a
        @d7.g
        Set<String> a();
    }

    /* compiled from: DefaultViewModelFactories.java */
    @dagger.hilt.e({f6.c.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface c {
        d a();
    }

    /* compiled from: DefaultViewModelFactories.java */
    /* loaded from: classes3.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f62013a;

        /* renamed from: b  reason: collision with root package name */
        private final h6.f f62014b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @u7.a
        public d(@d.a Set<String> keySet, h6.f viewModelComponentBuilder) {
            this.f62013a = keySet;
            this.f62014b = viewModelComponentBuilder;
        }

        private ViewModelProvider.Factory c(SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs, ViewModelProvider.Factory delegate) {
            return new dagger.hilt.android.internal.lifecycle.c(owner, defaultArgs, this.f62013a, (ViewModelProvider.Factory) q6.f.b(delegate), this.f62014b);
        }

        ViewModelProvider.Factory a(ComponentActivity activity, ViewModelProvider.Factory delegateFactory) {
            return c(activity, activity.getIntent() != null ? activity.getIntent().getExtras() : null, delegateFactory);
        }

        ViewModelProvider.Factory b(Fragment fragment, ViewModelProvider.Factory delegateFactory) {
            return c(fragment, fragment.getArguments(), delegateFactory);
        }
    }

    private a() {
    }

    public static ViewModelProvider.Factory a(ComponentActivity activity, ViewModelProvider.Factory delegateFactory) {
        return ((InterfaceC0504a) dagger.hilt.c.a(activity, InterfaceC0504a.class)).a().a(activity, delegateFactory);
    }

    public static ViewModelProvider.Factory b(Fragment fragment, ViewModelProvider.Factory delegateFactory) {
        return ((c) dagger.hilt.c.a(fragment, c.class)).a().b(fragment, delegateFactory);
    }
}
