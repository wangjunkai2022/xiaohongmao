package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaClassMemberScope.kt */
/* loaded from: classes4.dex */
public final class LazyJavaClassMemberScope$isVisibleAsFunctionInCurrentClass$1$1$1 extends Lambda implements Function1<Name, Collection<? extends SimpleFunctionDescriptor>> {
    final /* synthetic */ SimpleFunctionDescriptor $function;
    final /* synthetic */ LazyJavaClassMemberScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope$isVisibleAsFunctionInCurrentClass$1$1$1(SimpleFunctionDescriptor simpleFunctionDescriptor, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(1);
        this.$function = simpleFunctionDescriptor;
        this.this$0 = lazyJavaClassMemberScope;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Collection<SimpleFunctionDescriptor> invoke(@g Name accessorName) {
        Collection searchMethodsByNameWithoutBuiltinMagic;
        Collection searchMethodsInSupertypesWithoutBuiltinMagic;
        List plus;
        List listOf;
        Intrinsics.checkNotNullParameter(accessorName, "accessorName");
        if (Intrinsics.areEqual(this.$function.getName(), accessorName)) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.$function);
            return listOf;
        }
        searchMethodsByNameWithoutBuiltinMagic = this.this$0.searchMethodsByNameWithoutBuiltinMagic(accessorName);
        searchMethodsInSupertypesWithoutBuiltinMagic = this.this$0.searchMethodsInSupertypesWithoutBuiltinMagic(accessorName);
        plus = CollectionsKt___CollectionsKt.plus(searchMethodsByNameWithoutBuiltinMagic, (Iterable) searchMethodsInSupertypesWithoutBuiltinMagic);
        return plus;
    }
}
