package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaPackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public final class LazyJavaPackageFragmentProvider$getPackageFragment$1 extends Lambda implements Function0<LazyJavaPackageFragment> {
    final /* synthetic */ JavaPackage $jPackage;
    final /* synthetic */ LazyJavaPackageFragmentProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageFragmentProvider$getPackageFragment$1(LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, JavaPackage javaPackage) {
        super(0);
        this.this$0 = lazyJavaPackageFragmentProvider;
        this.$jPackage = javaPackage;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final LazyJavaPackageFragment invoke() {
        LazyJavaResolverContext lazyJavaResolverContext;
        lazyJavaResolverContext = this.this$0.f84755c;
        return new LazyJavaPackageFragment(lazyJavaResolverContext, this.$jPackage);
    }
}
