package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaPackageScope.kt */
/* loaded from: classes4.dex */
public final class LazyJavaPackageScope$knownClassNamesInPackage$1 extends Lambda implements Function0<Set<? extends String>> {
    final /* synthetic */ LazyJavaResolverContext $c;
    final /* synthetic */ LazyJavaPackageScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageScope$knownClassNamesInPackage$1(LazyJavaResolverContext lazyJavaResolverContext, LazyJavaPackageScope lazyJavaPackageScope) {
        super(0);
        this.$c = lazyJavaResolverContext;
        this.this$0 = lazyJavaPackageScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final Set<? extends String> invoke() {
        return this.$c.getComponents().getFinder().knownClassNamesInPackage(this.this$0.getOwnerDescriptor().getFqName());
    }
}
