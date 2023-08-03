package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import m8.g;
import m8.h;

/* compiled from: typeParameterUtils.kt */
/* loaded from: classes4.dex */
public final class PossiblyInnerType {
    @g
    private final List<TypeProjection> arguments;
    @g
    private final ClassifierDescriptorWithTypeParameters classifierDescriptor;
    @h
    private final PossiblyInnerType outerType;

    /* JADX WARN: Multi-variable type inference failed */
    public PossiblyInnerType(@g ClassifierDescriptorWithTypeParameters classifierDescriptor, @g List<? extends TypeProjection> arguments, @h PossiblyInnerType possiblyInnerType) {
        Intrinsics.checkNotNullParameter(classifierDescriptor, "classifierDescriptor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        this.classifierDescriptor = classifierDescriptor;
        this.arguments = arguments;
        this.outerType = possiblyInnerType;
    }

    @g
    public final List<TypeProjection> getArguments() {
        return this.arguments;
    }

    @g
    public final ClassifierDescriptorWithTypeParameters getClassifierDescriptor() {
        return this.classifierDescriptor;
    }

    @h
    public final PossiblyInnerType getOuterType() {
        return this.outerType;
    }
}
