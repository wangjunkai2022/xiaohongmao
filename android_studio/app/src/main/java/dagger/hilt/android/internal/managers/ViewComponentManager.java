package dagger.hilt.android.internal.managers;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: classes3.dex */
public final class ViewComponentManager implements q6.c<Object> {

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f62022a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f62023b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final boolean f62024c;

    /* renamed from: d  reason: collision with root package name */
    private final View f62025d;

    @dagger.hilt.e({f6.a.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface a {
        h6.e f();
    }

    @dagger.hilt.e({f6.c.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface b {
        h6.g g();
    }

    public ViewComponentManager(View view, boolean hasFragmentBindings) {
        this.f62025d = view;
        this.f62024c = hasFragmentBindings;
    }

    private Object a() {
        q6.c<?> b10 = b(false);
        if (this.f62024c) {
            return ((b) dagger.hilt.c.a(b10, b.class)).g().a(this.f62025d).build();
        }
        return ((a) dagger.hilt.c.a(b10, a.class)).f().a(this.f62025d).build();
    }

    private q6.c<?> b(boolean allowMissing) {
        if (this.f62024c) {
            Context c10 = c(FragmentContextWrapper.class, allowMissing);
            if (c10 instanceof FragmentContextWrapper) {
                return (q6.c) ((FragmentContextWrapper) c10).d();
            }
            if (allowMissing) {
                return null;
            }
            Context c11 = c(q6.c.class, allowMissing);
            q6.f.d(!(c11 instanceof q6.c), "%s, @WithFragmentBindings Hilt view must be attached to an @AndroidEntryPoint Fragment. Was attached to context %s", this.f62025d.getClass(), c11.getClass().getName());
        } else {
            Context c12 = c(q6.c.class, allowMissing);
            if (c12 instanceof q6.c) {
                return (q6.c) c12;
            }
            if (allowMissing) {
                return null;
            }
        }
        throw new IllegalStateException(String.format("%s, Hilt view must be attached to an @AndroidEntryPoint Fragment or Activity.", this.f62025d.getClass()));
    }

    private Context c(Class<?> parentType, boolean allowMissing) {
        Context e4 = e(this.f62025d.getContext(), parentType);
        if (e4 == g6.a.a(e4.getApplicationContext())) {
            q6.f.d(allowMissing, "%s, Hilt view cannot be created using the application context. Use a Hilt Fragment or Activity context.", this.f62025d.getClass());
            return null;
        }
        return e4;
    }

    private static Context e(Context context, Class<?> target) {
        while ((context instanceof ContextWrapper) && !target.isInstance(context)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    public q6.c<?> d() {
        return b(true);
    }

    @Override // q6.c
    public Object generatedComponent() {
        if (this.f62022a == null) {
            synchronized (this.f62023b) {
                if (this.f62022a == null) {
                    this.f62022a = a();
                }
            }
        }
        return this.f62022a;
    }

    /* loaded from: classes3.dex */
    public static final class FragmentContextWrapper extends ContextWrapper {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f62026a;

        /* renamed from: b  reason: collision with root package name */
        private LayoutInflater f62027b;

        /* renamed from: c  reason: collision with root package name */
        private LayoutInflater f62028c;

        /* renamed from: d  reason: collision with root package name */
        private final LifecycleEventObserver f62029d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FragmentContextWrapper(Context base, Fragment fragment) {
            super((Context) q6.f.b(base));
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager.FragmentContextWrapper.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        FragmentContextWrapper.this.f62026a = null;
                        FragmentContextWrapper.this.f62027b = null;
                        FragmentContextWrapper.this.f62028c = null;
                    }
                }
            };
            this.f62029d = lifecycleEventObserver;
            this.f62027b = null;
            Fragment fragment2 = (Fragment) q6.f.b(fragment);
            this.f62026a = fragment2;
            fragment2.getLifecycle().addObserver(lifecycleEventObserver);
        }

        Fragment d() {
            q6.f.c(this.f62026a, "The fragment has already been destroyed.");
            return this.f62026a;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String name) {
            if (!"layout_inflater".equals(name)) {
                return getBaseContext().getSystemService(name);
            }
            if (this.f62028c == null) {
                if (this.f62027b == null) {
                    this.f62027b = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
                }
                this.f62028c = this.f62027b.cloneInContext(this);
            }
            return this.f62028c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public FragmentContextWrapper(LayoutInflater baseInflater, Fragment fragment) {
            super((Context) q6.f.b(((LayoutInflater) q6.f.b(baseInflater)).getContext()));
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager.FragmentContextWrapper.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        FragmentContextWrapper.this.f62026a = null;
                        FragmentContextWrapper.this.f62027b = null;
                        FragmentContextWrapper.this.f62028c = null;
                    }
                }
            };
            this.f62029d = lifecycleEventObserver;
            this.f62027b = baseInflater;
            Fragment fragment2 = (Fragment) q6.f.b(fragment);
            this.f62026a = fragment2;
            fragment2.getLifecycle().addObserver(lifecycleEventObserver);
        }
    }
}
