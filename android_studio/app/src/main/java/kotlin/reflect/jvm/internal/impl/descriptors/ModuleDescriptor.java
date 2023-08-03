package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ModuleDescriptor.kt */
/* loaded from: classes4.dex */
public interface ModuleDescriptor extends DeclarationDescriptor {

    /* compiled from: ModuleDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static <R, D> R accept(@g ModuleDescriptor moduleDescriptor, @g DeclarationDescriptorVisitor<R, D> visitor, D d4) {
            Intrinsics.checkNotNullParameter(visitor, "visitor");
            return visitor.visitModuleDeclaration(moduleDescriptor, d4);
        }

        @h
        public static DeclarationDescriptor getContainingDeclaration(@g ModuleDescriptor moduleDescriptor) {
            return null;
        }
    }

    @g
    KotlinBuiltIns getBuiltIns();

    @h
    <T> T getCapability(@g ModuleCapability<T> moduleCapability);

    @g
    List<ModuleDescriptor> getExpectedByModules();

    @g
    PackageViewDescriptor getPackage(@g FqName fqName);

    @g
    Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> function1);

    boolean shouldSeeInternalsOf(@g ModuleDescriptor moduleDescriptor);
}
