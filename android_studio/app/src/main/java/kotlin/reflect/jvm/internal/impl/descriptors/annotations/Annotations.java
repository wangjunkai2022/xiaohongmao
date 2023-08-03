package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: Annotations.kt */
/* loaded from: classes4.dex */
public interface Annotations extends Iterable<AnnotationDescriptor>, KMappedMarker {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Annotations.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final Annotations EMPTY = new Annotations() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1
            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            @h
            public Void findAnnotation(@g FqName fqName) {
                Intrinsics.checkNotNullParameter(fqName, "fqName");
                return null;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            public /* bridge */ /* synthetic */ AnnotationDescriptor findAnnotation(FqName fqName) {
                return (AnnotationDescriptor) findAnnotation(fqName);
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            public boolean hasAnnotation(@g FqName fqName) {
                return Annotations.DefaultImpls.hasAnnotation(this, fqName);
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            public boolean isEmpty() {
                return true;
            }

            @Override // java.lang.Iterable
            @g
            public Iterator<AnnotationDescriptor> iterator() {
                List emptyList;
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList.iterator();
            }

            @g
            public String toString() {
                return "EMPTY";
            }
        };

        private Companion() {
        }

        @g
        public final Annotations create(@g List<? extends AnnotationDescriptor> annotations) {
            Intrinsics.checkNotNullParameter(annotations, "annotations");
            return annotations.isEmpty() ? EMPTY : new AnnotationsImpl(annotations);
        }

        @g
        public final Annotations getEMPTY() {
            return EMPTY;
        }
    }

    /* compiled from: Annotations.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static AnnotationDescriptor findAnnotation(@g Annotations annotations, @g FqName fqName) {
            AnnotationDescriptor annotationDescriptor;
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            while (true) {
                if (!it.hasNext()) {
                    annotationDescriptor = null;
                    break;
                }
                annotationDescriptor = it.next();
                if (Intrinsics.areEqual(annotationDescriptor.getFqName(), fqName)) {
                    break;
                }
            }
            return annotationDescriptor;
        }

        public static boolean hasAnnotation(@g Annotations annotations, @g FqName fqName) {
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            return annotations.findAnnotation(fqName) != null;
        }
    }

    @h
    AnnotationDescriptor findAnnotation(@g FqName fqName);

    boolean hasAnnotation(@g FqName fqName);

    boolean isEmpty();
}
