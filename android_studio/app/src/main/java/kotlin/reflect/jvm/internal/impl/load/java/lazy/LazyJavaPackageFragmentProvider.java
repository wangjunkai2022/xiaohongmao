package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.CacheWithNotNullValues;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;

/* compiled from: LazyJavaPackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public final class LazyJavaPackageFragmentProvider implements PackageFragmentProviderOptimized {
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84755c;
    @g
    private final CacheWithNotNullValues<FqName, LazyJavaPackageFragment> packageFragments;

    public LazyJavaPackageFragmentProvider(@g JavaResolverComponents components) {
        Lazy lazyOf;
        Intrinsics.checkNotNullParameter(components, "components");
        TypeParameterResolver.EMPTY empty = TypeParameterResolver.EMPTY.INSTANCE;
        lazyOf = LazyKt__LazyKt.lazyOf(null);
        LazyJavaResolverContext lazyJavaResolverContext = new LazyJavaResolverContext(components, empty, lazyOf);
        this.f84755c = lazyJavaResolverContext;
        this.packageFragments = lazyJavaResolverContext.getStorageManager().createCacheWithNotNullValues();
    }

    private final LazyJavaPackageFragment getPackageFragment(FqName fqName) {
        JavaPackage findPackage$default = JavaClassFinder.DefaultImpls.findPackage$default(this.f84755c.getComponents().getFinder(), fqName, false, 2, null);
        if (findPackage$default == null) {
            return null;
        }
        return this.packageFragments.computeIfAbsent(fqName, new LazyJavaPackageFragmentProvider$getPackageFragment$1(this, findPackage$default));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(@g FqName fqName, @g Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        CollectionsKt.addIfNotNull(packageFragments, getPackageFragment(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @Deprecated(message = "for usages use #packageFragments(FqName) at final point, for impl use #collectPackageFragments(FqName, MutableCollection<PackageFragmentDescriptor>)")
    @g
    public List<LazyJavaPackageFragment> getPackageFragments(@g FqName fqName) {
        List<LazyJavaPackageFragment> listOfNotNull;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getPackageFragment(fqName));
        return listOfNotNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public /* bridge */ /* synthetic */ Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        return getSubPackagesOf(fqName, (Function1<? super Name, Boolean>) function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        return JavaClassFinder.DefaultImpls.findPackage$default(this.f84755c.getComponents().getFinder(), fqName, false, 2, null) == null;
    }

    @g
    public String toString() {
        return "LazyJavaPackageFragmentProvider of module " + this.f84755c.getComponents().getModule();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @g
    public List<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> nameFilter) {
        List<FqName> emptyList;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        LazyJavaPackageFragment packageFragment = getPackageFragment(fqName);
        List<FqName> subPackageFqNames$descriptors_jvm = packageFragment != null ? packageFragment.getSubPackageFqNames$descriptors_jvm() : null;
        if (subPackageFqNames$descriptors_jvm == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return subPackageFqNames$descriptors_jvm;
    }
}
