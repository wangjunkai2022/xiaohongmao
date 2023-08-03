package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: Annotations.kt */
/* loaded from: classes4.dex */
public final class CompositeAnnotations implements Annotations {
    @g
    private final List<Annotations> delegates;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeAnnotations(@g List<? extends Annotations> delegates) {
        Intrinsics.checkNotNullParameter(delegates, "delegates");
        this.delegates = delegates;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    @h
    public AnnotationDescriptor findAnnotation(@g FqName fqName) {
        Sequence asSequence;
        Sequence mapNotNull;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.delegates);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(asSequence, new CompositeAnnotations$findAnnotation$1(fqName));
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(mapNotNull);
        return (AnnotationDescriptor) firstOrNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean hasAnnotation(@g FqName fqName) {
        Sequence<Annotations> asSequence;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.delegates);
        for (Annotations annotations : asSequence) {
            if (annotations.hasAnnotation(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        List<Annotations> list = this.delegates;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (Annotations annotations : list) {
            if (!annotations.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    @g
    public Iterator<AnnotationDescriptor> iterator() {
        Sequence asSequence;
        Sequence flatMap;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.delegates);
        flatMap = SequencesKt___SequencesKt.flatMap(asSequence, CompositeAnnotations$iterator$1.INSTANCE);
        return flatMap.iterator();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CompositeAnnotations(@m8.g kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations... r2) {
        /*
            r1 = this;
            java.lang.String r0 = "delegates"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.List r2 = kotlin.collections.ArraysKt.toList(r2)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations.<init>(kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations[]):void");
    }
}
