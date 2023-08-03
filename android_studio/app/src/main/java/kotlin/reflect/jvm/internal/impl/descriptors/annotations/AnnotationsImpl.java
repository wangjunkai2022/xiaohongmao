package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: AnnotationsImpl.kt */
/* loaded from: classes4.dex */
public final class AnnotationsImpl implements Annotations {
    @g
    private final List<AnnotationDescriptor> annotations;

    /* JADX WARN: Multi-variable type inference failed */
    public AnnotationsImpl(@g List<? extends AnnotationDescriptor> annotations) {
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        this.annotations = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    @h
    public AnnotationDescriptor findAnnotation(@g FqName fqName) {
        return Annotations.DefaultImpls.findAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean hasAnnotation(@g FqName fqName) {
        return Annotations.DefaultImpls.hasAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        return this.annotations.isEmpty();
    }

    @Override // java.lang.Iterable
    @g
    public Iterator<AnnotationDescriptor> iterator() {
        return this.annotations.iterator();
    }

    @g
    public String toString() {
        return this.annotations.toString();
    }
}
