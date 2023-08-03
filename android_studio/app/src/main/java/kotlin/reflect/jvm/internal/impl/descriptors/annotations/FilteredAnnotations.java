package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: Annotations.kt */
/* loaded from: classes4.dex */
public final class FilteredAnnotations implements Annotations {
    @g
    private final Annotations delegate;
    @g
    private final Function1<FqName, Boolean> fqNameFilter;
    private final boolean isDefinitelyNewInference;

    /* JADX WARN: Multi-variable type inference failed */
    public FilteredAnnotations(@g Annotations delegate, boolean z9, @g Function1<? super FqName, Boolean> fqNameFilter) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(fqNameFilter, "fqNameFilter");
        this.delegate = delegate;
        this.isDefinitelyNewInference = z9;
        this.fqNameFilter = fqNameFilter;
    }

    private final boolean shouldBeReturned(AnnotationDescriptor annotationDescriptor) {
        FqName fqName = annotationDescriptor.getFqName();
        return fqName != null && this.fqNameFilter.invoke(fqName).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    @h
    public AnnotationDescriptor findAnnotation(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        if (this.fqNameFilter.invoke(fqName).booleanValue()) {
            return this.delegate.findAnnotation(fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean hasAnnotation(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        if (this.fqNameFilter.invoke(fqName).booleanValue()) {
            return this.delegate.hasAnnotation(fqName);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        boolean z9;
        Annotations<AnnotationDescriptor> annotations = this.delegate;
        if (!(annotations instanceof Collection) || !((Collection) annotations).isEmpty()) {
            for (AnnotationDescriptor annotationDescriptor : annotations) {
                if (shouldBeReturned(annotationDescriptor)) {
                    z9 = true;
                    break;
                }
            }
        }
        z9 = false;
        return this.isDefinitelyNewInference ? !z9 : z9;
    }

    @Override // java.lang.Iterable
    @g
    public Iterator<AnnotationDescriptor> iterator() {
        Annotations annotations = this.delegate;
        ArrayList arrayList = new ArrayList();
        for (AnnotationDescriptor annotationDescriptor : annotations) {
            if (shouldBeReturned(annotationDescriptor)) {
                arrayList.add(annotationDescriptor);
            }
        }
        return arrayList.iterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FilteredAnnotations(@g Annotations delegate, @g Function1<? super FqName, Boolean> fqNameFilter) {
        this(delegate, false, fqNameFilter);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(fqNameFilter, "fqNameFilter");
    }
}
