package dagger.hilt.android.internal.managers;

import android.content.Context;
import androidx.activity.ComponentActivity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import dagger.hilt.android.a;
import java.util.HashSet;
import java.util.Set;

/* compiled from: ActivityRetainedComponentManager.java */
/* loaded from: classes3.dex */
final class b implements q6.c<f6.b> {

    /* renamed from: a  reason: collision with root package name */
    private final ViewModelProvider f62035a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile f6.b f62036b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f62037c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityRetainedComponentManager.java */
    /* loaded from: classes3.dex */
    public class a implements ViewModelProvider.Factory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f62038a;

        a(final Context val$context) {
            this.f62038a = val$context;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> aClass) {
            return new c(((InterfaceC0507b) dagger.hilt.android.e.d(this.f62038a, InterfaceC0507b.class)).e().build());
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
            return androidx.lifecycle.i.b(this, cls, creationExtras);
        }
    }

    /* compiled from: ActivityRetainedComponentManager.java */
    @dagger.hilt.e({p6.a.class})
    @dagger.hilt.b
    /* renamed from: dagger.hilt.android.internal.managers.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0507b {
        h6.b e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityRetainedComponentManager.java */
    /* loaded from: classes3.dex */
    public static final class c extends ViewModel {

        /* renamed from: a  reason: collision with root package name */
        private final f6.b f62040a;

        c(f6.b component) {
            this.f62040a = component;
        }

        f6.b a() {
            return this.f62040a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            ((e) ((d) dagger.hilt.c.a(this.f62040a, d.class)).b()).c();
        }
    }

    /* compiled from: ActivityRetainedComponentManager.java */
    @dagger.hilt.e({f6.b.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface d {
        dagger.hilt.android.a b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityRetainedComponentManager.java */
    @n6.a
    /* loaded from: classes3.dex */
    public static final class e implements dagger.hilt.android.a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<a.InterfaceC0502a> f62041a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        private boolean f62042b = false;

        private void d() {
            if (this.f62042b) {
                throw new IllegalStateException("There was a race between the call to add/remove an OnClearedListener and onCleared(). This can happen when posting to the Main thread from a background thread, which is not supported.");
            }
        }

        @Override // dagger.hilt.android.a
        public void a(@NonNull a.InterfaceC0502a listener) {
            g6.b.a();
            d();
            this.f62041a.add(listener);
        }

        @Override // dagger.hilt.android.a
        public void b(@NonNull a.InterfaceC0502a listener) {
            g6.b.a();
            d();
            this.f62041a.remove(listener);
        }

        void c() {
            g6.b.a();
            this.f62042b = true;
            for (a.InterfaceC0502a interfaceC0502a : this.f62041a) {
                interfaceC0502a.a();
            }
        }
    }

    /* compiled from: ActivityRetainedComponentManager.java */
    @dagger.hilt.e({f6.b.class})
    @d6.h
    /* loaded from: classes3.dex */
    static abstract class f {
        f() {
        }

        @d6.a
        abstract dagger.hilt.android.a a(e impl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ComponentActivity activity) {
        this.f62035a = c(activity, activity);
    }

    private f6.b a() {
        return ((c) this.f62035a.get(c.class)).a();
    }

    private ViewModelProvider c(ViewModelStoreOwner owner, Context context) {
        return new ViewModelProvider(owner, new a(context));
    }

    @Override // q6.c
    /* renamed from: b */
    public f6.b generatedComponent() {
        if (this.f62036b == null) {
            synchronized (this.f62037c) {
                if (this.f62036b == null) {
                    this.f62036b = a();
                }
            }
        }
        return this.f62036b;
    }
}
