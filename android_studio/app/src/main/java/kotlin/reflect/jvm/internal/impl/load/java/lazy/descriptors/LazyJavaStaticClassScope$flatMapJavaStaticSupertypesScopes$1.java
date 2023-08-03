package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: LazyJavaStaticClassScope.kt */
/* loaded from: classes4.dex */
final class LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1<N> implements DFS.Neighbors {
    public static final LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1<N> INSTANCE = new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LazyJavaStaticClassScope.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function1<KotlinType, ClassDescriptor> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final ClassDescriptor invoke(KotlinType kotlinType) {
            ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof ClassDescriptor) {
                return (ClassDescriptor) declarationDescriptor;
            }
            return null;
        }
    }

    LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    @g
    public final Iterable<ClassDescriptor> getNeighbors(ClassDescriptor classDescriptor) {
        Sequence asSequence;
        Sequence mapNotNull;
        Iterable<ClassDescriptor> asIterable;
        Collection<KotlinType> mo1364getSupertypes = classDescriptor.getTypeConstructor().mo1364getSupertypes();
        Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "it.typeConstructor.supertypes");
        asSequence = CollectionsKt___CollectionsKt.asSequence(mo1364getSupertypes);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(asSequence, AnonymousClass1.INSTANCE);
        asIterable = SequencesKt___SequencesKt.asIterable(mapNotNull);
        return asIterable;
    }
}
