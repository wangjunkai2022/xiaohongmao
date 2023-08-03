package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: PackageFragmentProviderImpl.kt */
/* loaded from: classes4.dex */
final class PackageFragmentProviderImpl$getSubPackagesOf$1 extends Lambda implements Function1<PackageFragmentDescriptor, FqName> {
    public static final PackageFragmentProviderImpl$getSubPackagesOf$1 INSTANCE = new PackageFragmentProviderImpl$getSubPackagesOf$1();

    PackageFragmentProviderImpl$getSubPackagesOf$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final FqName invoke(@g PackageFragmentDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getFqName();
    }
}
