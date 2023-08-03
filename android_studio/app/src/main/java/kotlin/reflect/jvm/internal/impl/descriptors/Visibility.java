package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Visibility.kt */
/* loaded from: classes4.dex */
public abstract class Visibility {
    private final boolean isPublicAPI;
    @g
    private final String name;

    /* JADX INFO: Access modifiers changed from: protected */
    public Visibility(@g String name, boolean z9) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.isPublicAPI = z9;
    }

    @h
    public Integer compareTo(@g Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        return Visibilities.INSTANCE.compareLocal$compiler_common(this, visibility);
    }

    @g
    public String getInternalDisplayName() {
        return this.name;
    }

    public final boolean isPublicAPI() {
        return this.isPublicAPI;
    }

    @g
    public Visibility normalize() {
        return this;
    }

    @g
    public final String toString() {
        return getInternalDisplayName();
    }
}
