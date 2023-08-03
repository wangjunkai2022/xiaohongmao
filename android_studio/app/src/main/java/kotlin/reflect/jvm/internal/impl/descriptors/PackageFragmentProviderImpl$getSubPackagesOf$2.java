package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: PackageFragmentProviderImpl.kt */
/* loaded from: classes4.dex */
final class PackageFragmentProviderImpl$getSubPackagesOf$2 extends Lambda implements Function1<FqName, Boolean> {
    final /* synthetic */ FqName $fqName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PackageFragmentProviderImpl$getSubPackagesOf$2(FqName fqName) {
        super(1);
        this.$fqName = fqName;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g FqName it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!it.isRoot() && Intrinsics.areEqual(it.parent(), this.$fqName));
    }
}
