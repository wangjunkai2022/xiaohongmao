package dagger.hilt.android.internal.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.AbstractSavedStateViewModelFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import d6.h;
import dagger.hilt.android.internal.lifecycle.d;
import java.util.Map;
import java.util.Set;

/* compiled from: HiltViewModelFactory.java */
/* loaded from: classes3.dex */
public final class c implements ViewModelProvider.Factory {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f62017a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewModelProvider.Factory f62018b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractSavedStateViewModelFactory f62019c;

    /* compiled from: HiltViewModelFactory.java */
    /* loaded from: classes3.dex */
    class a extends AbstractSavedStateViewModelFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h6.f f62020a;

        a(final h6.f val$viewModelComponentBuilder) {
            this.f62020a = val$viewModelComponentBuilder;
        }

        @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
        @NonNull
        protected <T extends ViewModel> T create(@NonNull String key, @NonNull Class<T> modelClass, @NonNull SavedStateHandle handle) {
            u7.c<ViewModel> cVar = ((InterfaceC0505c) dagger.hilt.c.a(this.f62020a.a(handle).build(), InterfaceC0505c.class)).a().get(modelClass.getName());
            if (cVar != null) {
                return (T) cVar.get();
            }
            throw new IllegalStateException("Expected the @HiltViewModel-annotated class '" + modelClass.getName() + "' to be available in the multi-binding of @HiltViewModelMap but none was found.");
        }
    }

    /* compiled from: HiltViewModelFactory.java */
    @dagger.hilt.e({f6.a.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    interface b {
        @d.a
        Set<String> c();

        h6.f p();
    }

    /* compiled from: HiltViewModelFactory.java */
    @dagger.hilt.e({f6.f.class})
    @dagger.hilt.b
    /* renamed from: dagger.hilt.android.internal.lifecycle.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0505c {
        @dagger.hilt.android.internal.lifecycle.d
        Map<String, u7.c<ViewModel>> a();
    }

    /* compiled from: HiltViewModelFactory.java */
    @dagger.hilt.e({f6.f.class})
    @h
    /* loaded from: classes3.dex */
    interface d {
        @dagger.hilt.android.internal.lifecycle.d
        @d7.g
        Map<String, ViewModel> a();
    }

    public c(@NonNull SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs, @NonNull Set<String> hiltViewModelKeys, @NonNull ViewModelProvider.Factory delegateFactory, @NonNull h6.f viewModelComponentBuilder) {
        this.f62017a = hiltViewModelKeys;
        this.f62018b = delegateFactory;
        this.f62019c = new a(viewModelComponentBuilder);
    }

    public static ViewModelProvider.Factory a(@NonNull Activity activity, @NonNull SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs, @NonNull ViewModelProvider.Factory delegateFactory) {
        b bVar = (b) dagger.hilt.c.a(activity, b.class);
        return new c(owner, defaultArgs, bVar.c(), delegateFactory, bVar.p());
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> modelClass, @NonNull CreationExtras extras) {
        if (this.f62017a.contains(modelClass.getName())) {
            return (T) this.f62019c.create(modelClass, extras);
        }
        return (T) this.f62018b.create(modelClass, extras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> modelClass) {
        if (this.f62017a.contains(modelClass.getName())) {
            return (T) this.f62019c.create(modelClass);
        }
        return (T) this.f62018b.create(modelClass);
    }
}
