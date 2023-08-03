package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: typeEnhancement.kt */
/* loaded from: classes4.dex */
public final class EnhancedTypeAnnotations implements Annotations {
    @g
    private final FqName fqNameToMatch;

    public EnhancedTypeAnnotations(@g FqName fqNameToMatch) {
        Intrinsics.checkNotNullParameter(fqNameToMatch, "fqNameToMatch");
        this.fqNameToMatch = fqNameToMatch;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean hasAnnotation(@g FqName fqName) {
        return Annotations.DefaultImpls.hasAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        return false;
    }

    @Override // java.lang.Iterable
    @g
    public Iterator<AnnotationDescriptor> iterator() {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList.iterator();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    @h
    public EnhancedTypeAnnotationDescriptor findAnnotation(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        if (Intrinsics.areEqual(fqName, this.fqNameToMatch)) {
            return EnhancedTypeAnnotationDescriptor.INSTANCE;
        }
        return null;
    }
}
