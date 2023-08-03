package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import m8.g;
import m8.h;

/* compiled from: ResolutionAnchorProvider.kt */
/* loaded from: classes4.dex */
public final class ResolutionAnchorProviderKt {
    @g
    private static final ModuleCapability<ResolutionAnchorProvider> RESOLUTION_ANCHOR_PROVIDER_CAPABILITY = new ModuleCapability<>("ResolutionAnchorProvider");

    @h
    public static final ModuleDescriptor getResolutionAnchorIfAny(@g ModuleDescriptor moduleDescriptor) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        ResolutionAnchorProvider resolutionAnchorProvider = (ResolutionAnchorProvider) moduleDescriptor.getCapability(RESOLUTION_ANCHOR_PROVIDER_CAPABILITY);
        if (resolutionAnchorProvider != null) {
            return resolutionAnchorProvider.getResolutionAnchor(moduleDescriptor);
        }
        return null;
    }
}
