package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;
import m8.h;

/* compiled from: AnnotationDescriptor.kt */
/* loaded from: classes4.dex */
public interface AnnotationDescriptor {

    /* compiled from: AnnotationDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static FqName getFqName(@g AnnotationDescriptor annotationDescriptor) {
            ClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
            if (annotationClass != null) {
                if (ErrorUtils.isError(annotationClass)) {
                    annotationClass = null;
                }
                if (annotationClass != null) {
                    return DescriptorUtilsKt.fqNameOrNull(annotationClass);
                }
                return null;
            }
            return null;
        }
    }

    @g
    Map<Name, ConstantValue<?>> getAllValueArguments();

    @h
    FqName getFqName();

    @g
    SourceElement getSource();

    @g
    KotlinType getType();
}
