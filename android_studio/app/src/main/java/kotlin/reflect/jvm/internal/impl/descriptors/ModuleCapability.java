package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ModuleCapability.kt */
/* loaded from: classes4.dex */
public final class ModuleCapability<T> {
    @g
    private final String name;

    public ModuleCapability(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
    }

    @g
    public String toString() {
        return this.name;
    }
}
