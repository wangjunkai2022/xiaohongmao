package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ErrorModuleDescriptor.kt */
/* loaded from: classes4.dex */
public final class ErrorModuleDescriptor implements ModuleDescriptor {
    @g
    public static final ErrorModuleDescriptor INSTANCE = new ErrorModuleDescriptor();
    @g
    private static final List<ModuleDescriptor> allDependencyModules;
    @g
    private static final Set<ModuleDescriptor> allExpectedByModules;
    @g
    private static final KotlinBuiltIns builtIns;
    @g
    private static final List<ModuleDescriptor> expectedByModules;
    @g
    private static final Name stableName;

    static {
        List<ModuleDescriptor> emptyList;
        List<ModuleDescriptor> emptyList2;
        Set<ModuleDescriptor> emptySet;
        Name special = Name.special(ErrorEntity.ERROR_MODULE.getDebugText());
        Intrinsics.checkNotNullExpressionValue(special, "special(ErrorEntity.ERROR_MODULE.debugText)");
        stableName = special;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        allDependencyModules = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        expectedByModules = emptyList2;
        emptySet = SetsKt__SetsKt.emptySet();
        allExpectedByModules = emptySet;
        builtIns = DefaultBuiltIns.Companion.getInstance();
    }

    private ErrorModuleDescriptor() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @h
    public <R, D> R accept(@g DeclarationDescriptorVisitor<R, D> visitor, D d4) {
        Intrinsics.checkNotNullParameter(visitor, "visitor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        return Annotations.Companion.getEMPTY();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public KotlinBuiltIns getBuiltIns() {
        return builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @h
    public <T> T getCapability(@g ModuleCapability<T> capability) {
        Intrinsics.checkNotNullParameter(capability, "capability");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @h
    public DeclarationDescriptor getContainingDeclaration() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public List<ModuleDescriptor> getExpectedByModules() {
        return expectedByModules;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Named
    @g
    public Name getName() {
        return getStableName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public DeclarationDescriptor getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public PackageViewDescriptor getPackage(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        throw new IllegalStateException("Should not be called!");
    }

    @g
    public Name getStableName() {
        return stableName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> nameFilter) {
        List emptyList;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public boolean shouldSeeInternalsOf(@g ModuleDescriptor targetModule) {
        Intrinsics.checkNotNullParameter(targetModule, "targetModule");
        return false;
    }
}
