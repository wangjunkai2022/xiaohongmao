package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import m8.g;

/* compiled from: PackageFragmentDescriptor.kt */
/* loaded from: classes4.dex */
public interface PackageFragmentDescriptor extends ClassOrPackageFragmentDescriptor {
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    ModuleDescriptor getContainingDeclaration();

    @g
    FqName getFqName();

    @g
    MemberScope getMemberScope();
}
