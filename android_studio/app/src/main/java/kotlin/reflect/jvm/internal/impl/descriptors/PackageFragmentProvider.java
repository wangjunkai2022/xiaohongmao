package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: PackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public interface PackageFragmentProvider {
    @Deprecated(message = "for usages use #packageFragments(FqName) at final point, for impl use #collectPackageFragments(FqName, MutableCollection<PackageFragmentDescriptor>)")
    @g
    List<PackageFragmentDescriptor> getPackageFragments(@g FqName fqName);

    @g
    Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> function1);
}
