package s8;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.StateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: ViewModelResolver.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a+\u0010\u0005\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a$\u0010\t\u001a\u00020\b\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0007¨\u0006\n"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModelProvider;", "Ls8/c;", "viewModelParameters", "b", "(Landroidx/lifecycle/ViewModelProvider;Ls8/c;)Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/scope/Scope;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class d {
    @g
    @u8.b
    public static final <T extends ViewModel> ViewModelProvider.Factory a(@g Scope scope, @g c<T> viewModelParameters) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        return (viewModelParameters.d() == null || viewModelParameters.e() == null) ? new t8.a(scope, viewModelParameters) : new StateViewModelFactory(scope, viewModelParameters);
    }

    @g
    public static final <T extends ViewModel> T b(@g ViewModelProvider viewModelProvider, @g c<T> viewModelParameters) {
        Intrinsics.checkNotNullParameter(viewModelProvider, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        Class<T> javaClass = JvmClassMappingKt.getJavaClass((KClass) viewModelParameters.a());
        if (viewModelParameters.c() != null) {
            T t9 = (T) viewModelProvider.get(viewModelParameters.c().toString(), javaClass);
            Intrinsics.checkNotNullExpressionValue(t9, "{\n        get(viewModelP…tring(), javaClass)\n    }");
            return t9;
        }
        T t10 = (T) viewModelProvider.get(javaClass);
        Intrinsics.checkNotNullExpressionValue(t10, "{\n        get(javaClass)\n    }");
        return t10;
    }
}
