package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: LazyJavaClassMemberScope.kt */
/* loaded from: classes4.dex */
/* synthetic */ class LazyJavaClassMemberScope$computeNonDeclaredFunctions$3 extends FunctionReference implements Function1<Name, Collection<? extends SimpleFunctionDescriptor>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(Object obj) {
        super(1, obj);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @g
    public final String getName() {
        return "searchMethodsByNameWithoutBuiltinMagic";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(LazyJavaClassMemberScope.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final String getSignature() {
        return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Collection<SimpleFunctionDescriptor> invoke(@g Name p02) {
        Collection<SimpleFunctionDescriptor> searchMethodsByNameWithoutBuiltinMagic;
        Intrinsics.checkNotNullParameter(p02, "p0");
        searchMethodsByNameWithoutBuiltinMagic = ((LazyJavaClassMemberScope) this.receiver).searchMethodsByNameWithoutBuiltinMagic(p02);
        return searchMethodsByNameWithoutBuiltinMagic;
    }
}
