package t8;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.i;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.scope.Scope;
import s8.c;

/* compiled from: DefaultViewModelFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001d\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0006\u001a\u00028\u0001\"\b\b\u0001\u0010\u0002*\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lt8/a;", "Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModelProvider$Factory;", "Ljava/lang/Class;", "modelClass", "create", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/scope/Scope;", "scope", "Lorg/koin/core/scope/Scope;", "b", "()Lorg/koin/core/scope/Scope;", "Ls8/c;", "parameters", "Ls8/c;", "a", "()Ls8/c;", "<init>", "(Lorg/koin/core/scope/Scope;Ls8/c;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a<T extends ViewModel> implements ViewModelProvider.Factory {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Scope f93858a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final c<T> f93859b;

    public a(@g Scope scope, @g c<T> parameters) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.f93858a = scope;
        this.f93859b = parameters;
    }

    @g
    public final c<T> a() {
        return this.f93859b;
    }

    @g
    public final Scope b() {
        return this.f93858a;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @g
    public <T extends ViewModel> T create(@g Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) this.f93858a.p(this.f93859b.a(), this.f93859b.c(), this.f93859b.b());
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
        return i.b(this, cls, creationExtras);
    }
}
