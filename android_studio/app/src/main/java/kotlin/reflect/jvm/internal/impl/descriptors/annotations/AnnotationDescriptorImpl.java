package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import io.sentry.protocol.v;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public class AnnotationDescriptorImpl implements AnnotationDescriptor {
    private final KotlinType annotationType;
    private final SourceElement source;
    private final Map<Name, ConstantValue<?>> valueArguments;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 3 || i4 == 4 || i4 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 3 || i4 == 4 || i4 == 5) ? 2 : 3];
        if (i4 == 1) {
            objArr[0] = "valueArguments";
        } else if (i4 == 2) {
            objArr[0] = v.b.f83881a;
        } else if (i4 == 3 || i4 == 4 || i4 == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (i4 == 3) {
            objArr[1] = "getType";
        } else if (i4 == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (i4 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i4 != 3 && i4 != 4 && i4 != 5) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        if (i4 != 3 && i4 != 4 && i4 != 5) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public AnnotationDescriptorImpl(@g KotlinType kotlinType, @g Map<Name, ConstantValue<?>> map, @g SourceElement sourceElement) {
        if (kotlinType == null) {
            $$$reportNull$$$0(0);
        }
        if (map == null) {
            $$$reportNull$$$0(1);
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(2);
        }
        this.annotationType = kotlinType;
        this.valueArguments = map;
        this.source = sourceElement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public Map<Name, ConstantValue<?>> getAllValueArguments() {
        Map<Name, ConstantValue<?>> map = this.valueArguments;
        if (map == null) {
            $$$reportNull$$$0(4);
        }
        return map;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @h
    public FqName getFqName() {
        return AnnotationDescriptor.DefaultImpls.getFqName(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public SourceElement getSource() {
        SourceElement sourceElement = this.source;
        if (sourceElement == null) {
            $$$reportNull$$$0(5);
        }
        return sourceElement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    @g
    public KotlinType getType() {
        KotlinType kotlinType = this.annotationType;
        if (kotlinType == null) {
            $$$reportNull$$$0(3);
        }
        return kotlinType;
    }

    public String toString() {
        return DescriptorRenderer.FQ_NAMES_IN_TYPES.renderAnnotation(this, null);
    }
}
