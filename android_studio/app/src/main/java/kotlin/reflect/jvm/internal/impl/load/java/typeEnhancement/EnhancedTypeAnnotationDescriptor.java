package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: typeEnhancement.kt */
/* loaded from: classes4.dex */
final class EnhancedTypeAnnotationDescriptor implements AnnotationDescriptor {
    @g
    public static final EnhancedTypeAnnotationDescriptor INSTANCE = new EnhancedTypeAnnotationDescriptor();

    private EnhancedTypeAnnotationDescriptor() {
    }

    private final Void throwError() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public Map<Name, ConstantValue<?>> getAllValueArguments() {
        throwError();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @h
    public FqName getFqName() {
        return AnnotationDescriptor.DefaultImpls.getFqName(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public SourceElement getSource() {
        throwError();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public KotlinType getType() {
        throwError();
        throw null;
    }

    @g
    public String toString() {
        return "[EnhancedType]";
    }
}
