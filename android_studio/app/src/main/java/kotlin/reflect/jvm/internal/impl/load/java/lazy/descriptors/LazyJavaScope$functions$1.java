package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaScope.kt */
/* loaded from: classes4.dex */
public final class LazyJavaScope$functions$1 extends Lambda implements Function1<Name, Collection<? extends SimpleFunctionDescriptor>> {
    final /* synthetic */ LazyJavaScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaScope$functions$1(LazyJavaScope lazyJavaScope) {
        super(1);
        this.this$0 = lazyJavaScope;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Collection<SimpleFunctionDescriptor> invoke(@g Name name) {
        MemoizedFunctionToNotNull memoizedFunctionToNotNull;
        List list;
        Intrinsics.checkNotNullParameter(name, "name");
        memoizedFunctionToNotNull = this.this$0.declaredFunctions;
        LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) memoizedFunctionToNotNull.invoke(name));
        this.this$0.retainMostSpecificMethods(linkedHashSet);
        this.this$0.computeNonDeclaredFunctions(linkedHashSet, name);
        list = CollectionsKt___CollectionsKt.toList(this.this$0.getC().getComponents().getSignatureEnhancement().enhanceSignatures(this.this$0.getC(), linkedHashSet));
        return list;
    }
}
