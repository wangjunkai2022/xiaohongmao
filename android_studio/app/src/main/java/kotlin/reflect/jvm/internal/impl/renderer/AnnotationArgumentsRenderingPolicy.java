package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
public enum AnnotationArgumentsRenderingPolicy {
    NO_ARGUMENTS(false, false, 3, null),
    UNLESS_EMPTY(true, false, 2, null),
    ALWAYS_PARENTHESIZED(true, true);
    
    private final boolean includeAnnotationArguments;
    private final boolean includeEmptyAnnotationArguments;

    AnnotationArgumentsRenderingPolicy(boolean z9, boolean z10) {
        this.includeAnnotationArguments = z9;
        this.includeEmptyAnnotationArguments = z10;
    }

    public final boolean getIncludeAnnotationArguments() {
        return this.includeAnnotationArguments;
    }

    public final boolean getIncludeEmptyAnnotationArguments() {
        return this.includeEmptyAnnotationArguments;
    }

    /* synthetic */ AnnotationArgumentsRenderingPolicy(boolean z9, boolean z10, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? false : z9, (i4 & 2) != 0 ? false : z10);
    }
}
