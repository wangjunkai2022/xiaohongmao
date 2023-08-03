package org.koin.androidx.fragment.dsl;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: FragmentOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroidx/fragment/app/Fragment;", "R", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentOfKt$fragmentOf$1 extends Lambda implements Function2<Scope, a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0<R> f92171a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentOfKt$fragmentOf$1(Function0<? extends R> function0) {
        super(2);
        this.f92171a = function0;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Ly8/a;)TR; */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final Fragment invoke(@g Scope _factoryInstanceFactory, @g a it) {
        Intrinsics.checkNotNullParameter(_factoryInstanceFactory, "$this$_factoryInstanceFactory");
        Intrinsics.checkNotNullParameter(it, "it");
        return (Fragment) this.f92171a.invoke();
    }
}
