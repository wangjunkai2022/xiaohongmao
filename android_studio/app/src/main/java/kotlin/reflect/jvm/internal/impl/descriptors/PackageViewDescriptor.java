package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import m8.g;

/* compiled from: PackageViewDescriptor.kt */
/* loaded from: classes4.dex */
public interface PackageViewDescriptor extends DeclarationDescriptor {
    @g
    FqName getFqName();

    @g
    List<PackageFragmentDescriptor> getFragments();

    @g
    MemberScope getMemberScope();

    @g
    ModuleDescriptor getModule();

    boolean isEmpty();
}
