package androidx.lifecycle;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewModelProvider.kt */
/* loaded from: classes.dex */
public final /* synthetic */ class i {
    static {
        ViewModelProvider.Factory.Companion companion = ViewModelProvider.Factory.Companion;
    }

    @m8.g
    public static ViewModel a(ViewModelProvider.Factory factory, @m8.g Class modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    @m8.g
    public static ViewModel b(ViewModelProvider.Factory factory, @m8.g Class modelClass, @m8.g CreationExtras extras) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return factory.create(modelClass);
    }

    @JvmStatic
    @m8.g
    public static ViewModelProvider.Factory c(@m8.g ViewModelInitializer<?>... viewModelInitializerArr) {
        return ViewModelProvider.Factory.Companion.from(viewModelInitializerArr);
    }
}
