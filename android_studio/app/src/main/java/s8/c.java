package s8;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;

/* compiled from: ViewModelParameter.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001Be\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0004\u0018\u0001`\u000f\u0012\u0016\b\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0018\u00010\rj\u0004\u0018\u0001`\u0015\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\"\u0010#R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR%\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0004\u0018\u0001`\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R%\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0018\u00010\rj\u0004\u0018\u0001`\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013R\u0017\u0010\u0019\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Ls8/c;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KClass;", "clazz", "Lkotlin/reflect/KClass;", "a", "()Lkotlin/reflect/KClass;", "Lz8/a;", "qualifier", "Lz8/a;", "c", "()Lz8/a;", "Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", t.b.f83859d, "Lkotlin/jvm/functions/Function0;", "e", "()Lkotlin/jvm/functions/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "b", "Landroidx/lifecycle/ViewModelStoreOwner;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "f", "()Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/savedstate/SavedStateRegistryOwner;", "registryOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "d", "()Landroidx/savedstate/SavedStateRegistryOwner;", "<init>", "(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class c<T> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final KClass<T> f93286a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final z8.a f93287b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final Function0<Bundle> f93288c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private final Function0<y8.a> f93289d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final ViewModelStoreOwner f93290e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private final SavedStateRegistryOwner f93291f;

    /* JADX WARN: Multi-variable type inference failed */
    public c(@g KClass<T> clazz, @h z8.a aVar, @h Function0<Bundle> function0, @h Function0<? extends y8.a> function02, @g ViewModelStoreOwner viewModelStoreOwner, @h SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "viewModelStoreOwner");
        this.f93286a = clazz;
        this.f93287b = aVar;
        this.f93288c = function0;
        this.f93289d = function02;
        this.f93290e = viewModelStoreOwner;
        this.f93291f = savedStateRegistryOwner;
    }

    @g
    public final KClass<T> a() {
        return this.f93286a;
    }

    @h
    public final Function0<y8.a> b() {
        return this.f93289d;
    }

    @h
    public final z8.a c() {
        return this.f93287b;
    }

    @h
    public final SavedStateRegistryOwner d() {
        return this.f93291f;
    }

    @h
    public final Function0<Bundle> e() {
        return this.f93288c;
    }

    @g
    public final ViewModelStoreOwner f() {
        return this.f93290e;
    }

    public /* synthetic */ c(KClass kClass, z8.a aVar, Function0 function0, Function0 function02, ViewModelStoreOwner viewModelStoreOwner, SavedStateRegistryOwner savedStateRegistryOwner, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, (i4 & 2) != 0 ? null : aVar, (i4 & 4) != 0 ? null : function0, (i4 & 8) != 0 ? null : function02, viewModelStoreOwner, (i4 & 32) != 0 ? null : savedStateRegistryOwner);
    }
}
