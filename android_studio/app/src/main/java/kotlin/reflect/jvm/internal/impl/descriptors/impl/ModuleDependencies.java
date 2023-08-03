package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;
import m8.g;

/* compiled from: ModuleDescriptorImpl.kt */
/* loaded from: classes4.dex */
public interface ModuleDependencies {
    @g
    List<ModuleDescriptorImpl> getAllDependencies();

    @g
    List<ModuleDescriptorImpl> getDirectExpectedByDependencies();

    @g
    Set<ModuleDescriptorImpl> getModulesWhoseInternalsAreVisible();
}
