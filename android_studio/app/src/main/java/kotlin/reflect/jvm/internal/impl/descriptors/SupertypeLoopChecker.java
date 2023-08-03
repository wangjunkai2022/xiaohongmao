package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import m8.g;

/* compiled from: SupertypeLoopChecker.kt */
/* loaded from: classes4.dex */
public interface SupertypeLoopChecker {

    /* compiled from: SupertypeLoopChecker.kt */
    /* loaded from: classes4.dex */
    public static final class EMPTY implements SupertypeLoopChecker {
        @g
        public static final EMPTY INSTANCE = new EMPTY();

        private EMPTY() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker
        @g
        public Collection<KotlinType> findLoopsInSupertypesAndDisconnect(@g TypeConstructor currentTypeConstructor, @g Collection<? extends KotlinType> superTypes, @g Function1<? super TypeConstructor, ? extends Iterable<? extends KotlinType>> neighbors, @g Function1<? super KotlinType, Unit> reportLoop) {
            Intrinsics.checkNotNullParameter(currentTypeConstructor, "currentTypeConstructor");
            Intrinsics.checkNotNullParameter(superTypes, "superTypes");
            Intrinsics.checkNotNullParameter(neighbors, "neighbors");
            Intrinsics.checkNotNullParameter(reportLoop, "reportLoop");
            return superTypes;
        }
    }

    @g
    Collection<KotlinType> findLoopsInSupertypesAndDisconnect(@g TypeConstructor typeConstructor, @g Collection<? extends KotlinType> collection, @g Function1<? super TypeConstructor, ? extends Iterable<? extends KotlinType>> function1, @g Function1<? super KotlinType, Unit> function12);
}
