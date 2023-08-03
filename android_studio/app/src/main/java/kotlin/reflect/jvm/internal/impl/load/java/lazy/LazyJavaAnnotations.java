package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationMapper;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: LazyJavaAnnotations.kt */
/* loaded from: classes4.dex */
public final class LazyJavaAnnotations implements Annotations {
    @g
    private final MemoizedFunctionToNullable<JavaAnnotation, AnnotationDescriptor> annotationDescriptors;
    @g
    private final JavaAnnotationOwner annotationOwner;
    private final boolean areAnnotationsFreshlySupported;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84754c;

    public LazyJavaAnnotations(@g LazyJavaResolverContext c10, @g JavaAnnotationOwner annotationOwner, boolean z9) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(annotationOwner, "annotationOwner");
        this.f84754c = c10;
        this.annotationOwner = annotationOwner;
        this.areAnnotationsFreshlySupported = z9;
        this.annotationDescriptors = c10.getComponents().getStorageManager().createMemoizedFunctionWithNullableValues(new LazyJavaAnnotations$annotationDescriptors$1(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    @h
    public AnnotationDescriptor findAnnotation(@g FqName fqName) {
        AnnotationDescriptor invoke;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        JavaAnnotation findAnnotation = this.annotationOwner.findAnnotation(fqName);
        return (findAnnotation == null || (invoke = this.annotationDescriptors.invoke(findAnnotation)) == null) ? JavaAnnotationMapper.INSTANCE.findMappedJavaAnnotation(fqName, this.annotationOwner, this.f84754c) : invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean hasAnnotation(@g FqName fqName) {
        return Annotations.DefaultImpls.hasAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        return this.annotationOwner.getAnnotations().isEmpty() && !this.annotationOwner.isDeprecatedInJavaDoc();
    }

    @Override // java.lang.Iterable
    @g
    public Iterator<AnnotationDescriptor> iterator() {
        Sequence asSequence;
        Sequence map;
        Sequence plus;
        Sequence filterNotNull;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.annotationOwner.getAnnotations());
        map = SequencesKt___SequencesKt.map(asSequence, this.annotationDescriptors);
        plus = SequencesKt___SequencesKt.plus(map, JavaAnnotationMapper.INSTANCE.findMappedJavaAnnotation(StandardNames.FqNames.deprecated, this.annotationOwner, this.f84754c));
        filterNotNull = SequencesKt___SequencesKt.filterNotNull(plus);
        return filterNotNull.iterator();
    }

    public /* synthetic */ LazyJavaAnnotations(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotationOwner javaAnnotationOwner, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, javaAnnotationOwner, (i4 & 4) != 0 ? false : z9);
    }
}
