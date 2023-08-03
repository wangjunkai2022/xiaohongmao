package org.koin.androidx.viewmodel.dsl;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.instance.b;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: ModuleExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ModuleExtKt$viewModel$1 extends Lambda implements Function2<Scope, a, T> {
    public static final ModuleExtKt$viewModel$1 INSTANCE = new ModuleExtKt$viewModel$1();

    public ModuleExtKt$viewModel$1() {
        super(2);
    }

    /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Ly8/a;)TT; */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final ViewModel invoke(@g Scope factory, @g a it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (ViewModel) b.e(factory, Reflection.getOrCreateKotlinClass(Object.class), it);
    }
}
