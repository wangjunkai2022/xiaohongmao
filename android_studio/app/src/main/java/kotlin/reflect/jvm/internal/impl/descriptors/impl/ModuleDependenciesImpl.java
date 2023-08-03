package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ModuleDescriptorImpl.kt */
/* loaded from: classes4.dex */
public final class ModuleDependenciesImpl implements ModuleDependencies {
    @g
    private final List<ModuleDescriptorImpl> allDependencies;
    @g
    private final Set<ModuleDescriptorImpl> allExpectedByDependencies;
    @g
    private final List<ModuleDescriptorImpl> directExpectedByDependencies;
    @g
    private final Set<ModuleDescriptorImpl> modulesWhoseInternalsAreVisible;

    public ModuleDependenciesImpl(@g List<ModuleDescriptorImpl> allDependencies, @g Set<ModuleDescriptorImpl> modulesWhoseInternalsAreVisible, @g List<ModuleDescriptorImpl> directExpectedByDependencies, @g Set<ModuleDescriptorImpl> allExpectedByDependencies) {
        Intrinsics.checkNotNullParameter(allDependencies, "allDependencies");
        Intrinsics.checkNotNullParameter(modulesWhoseInternalsAreVisible, "modulesWhoseInternalsAreVisible");
        Intrinsics.checkNotNullParameter(directExpectedByDependencies, "directExpectedByDependencies");
        Intrinsics.checkNotNullParameter(allExpectedByDependencies, "allExpectedByDependencies");
        this.allDependencies = allDependencies;
        this.modulesWhoseInternalsAreVisible = modulesWhoseInternalsAreVisible;
        this.directExpectedByDependencies = directExpectedByDependencies;
        this.allExpectedByDependencies = allExpectedByDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDependencies
    @g
    public List<ModuleDescriptorImpl> getAllDependencies() {
        return this.allDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDependencies
    @g
    public List<ModuleDescriptorImpl> getDirectExpectedByDependencies() {
        return this.directExpectedByDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDependencies
    @g
    public Set<ModuleDescriptorImpl> getModulesWhoseInternalsAreVisible() {
        return this.modulesWhoseInternalsAreVisible;
    }
}
