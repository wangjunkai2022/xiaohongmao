package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractTypeConstructor.kt */
/* loaded from: classes4.dex */
public final class AbstractTypeConstructor$supertypes$3 extends Lambda implements Function1<AbstractTypeConstructor.Supertypes, Unit> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractTypeConstructor.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass2 extends Lambda implements Function1<TypeConstructor, Iterable<? extends KotlinType>> {
        final /* synthetic */ AbstractTypeConstructor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AbstractTypeConstructor abstractTypeConstructor) {
            super(1);
            this.this$0 = abstractTypeConstructor;
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        public final Iterable<KotlinType> invoke(@g TypeConstructor it) {
            Collection computeNeighbours;
            Intrinsics.checkNotNullParameter(it, "it");
            computeNeighbours = this.this$0.computeNeighbours(it, true);
            return computeNeighbours;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractTypeConstructor.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass3 extends Lambda implements Function1<KotlinType, Unit> {
        final /* synthetic */ AbstractTypeConstructor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(AbstractTypeConstructor abstractTypeConstructor) {
            super(1);
            this.this$0 = abstractTypeConstructor;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(KotlinType kotlinType) {
            invoke2(kotlinType);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@g KotlinType it) {
            Intrinsics.checkNotNullParameter(it, "it");
            this.this$0.reportScopesLoopError(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$3(AbstractTypeConstructor abstractTypeConstructor) {
        super(1);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AbstractTypeConstructor.Supertypes supertypes) {
        invoke2(supertypes);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g AbstractTypeConstructor.Supertypes supertypes) {
        Intrinsics.checkNotNullParameter(supertypes, "supertypes");
        Collection<KotlinType> findLoopsInSupertypesAndDisconnect = this.this$0.getSupertypeLoopChecker().findLoopsInSupertypesAndDisconnect(this.this$0, supertypes.getAllSupertypes(), new AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1(this.this$0), new AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2(this.this$0));
        if (findLoopsInSupertypesAndDisconnect.isEmpty()) {
            KotlinType defaultSupertypeIfEmpty = this.this$0.defaultSupertypeIfEmpty();
            findLoopsInSupertypesAndDisconnect = defaultSupertypeIfEmpty != null ? CollectionsKt__CollectionsJVMKt.listOf(defaultSupertypeIfEmpty) : null;
            if (findLoopsInSupertypesAndDisconnect == null) {
                findLoopsInSupertypesAndDisconnect = CollectionsKt__CollectionsKt.emptyList();
            }
        }
        if (this.this$0.getShouldReportCyclicScopeWithCompanionWarning()) {
            SupertypeLoopChecker supertypeLoopChecker = this.this$0.getSupertypeLoopChecker();
            AbstractTypeConstructor abstractTypeConstructor = this.this$0;
            supertypeLoopChecker.findLoopsInSupertypesAndDisconnect(abstractTypeConstructor, findLoopsInSupertypesAndDisconnect, new AnonymousClass2(abstractTypeConstructor), new AnonymousClass3(this.this$0));
        }
        AbstractTypeConstructor abstractTypeConstructor2 = this.this$0;
        List<KotlinType> list = findLoopsInSupertypesAndDisconnect instanceof List ? (List) findLoopsInSupertypesAndDisconnect : null;
        if (list == null) {
            list = CollectionsKt___CollectionsKt.toList(findLoopsInSupertypesAndDisconnect);
        }
        supertypes.setSupertypesWithoutCycles(abstractTypeConstructor2.processSupertypesWithoutCycles(list));
    }
}
