package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import m8.g;

/* compiled from: AbstractTypeChecker.kt */
/* loaded from: classes4.dex */
final class AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4 extends Lambda implements Function1<TypeCheckerState.ForkPointContext, Unit> {
    final /* synthetic */ TypeCheckerState $state;
    final /* synthetic */ SimpleTypeMarker $superType;
    final /* synthetic */ List<SimpleTypeMarker> $supertypesWithSameConstructor;
    final /* synthetic */ TypeSystemContext $this_with;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractTypeChecker.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function0<Boolean> {
        final /* synthetic */ TypeCheckerState $state;
        final /* synthetic */ SimpleTypeMarker $subTypeArguments;
        final /* synthetic */ SimpleTypeMarker $superType;
        final /* synthetic */ TypeSystemContext $this_with;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TypeCheckerState typeCheckerState, TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
            super(0);
            this.$state = typeCheckerState;
            this.$this_with = typeSystemContext;
            this.$subTypeArguments = simpleTypeMarker;
            this.$superType = simpleTypeMarker2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final Boolean invoke() {
            return Boolean.valueOf(AbstractTypeChecker.INSTANCE.isSubtypeForSameConstructor(this.$state, this.$this_with.asArgumentList(this.$subTypeArguments), this.$superType));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4(List<? extends SimpleTypeMarker> list, TypeCheckerState typeCheckerState, TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        super(1);
        this.$supertypesWithSameConstructor = list;
        this.$state = typeCheckerState;
        this.$this_with = typeSystemContext;
        this.$superType = simpleTypeMarker;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TypeCheckerState.ForkPointContext forkPointContext) {
        invoke2(forkPointContext);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g TypeCheckerState.ForkPointContext runForkingPoint) {
        Intrinsics.checkNotNullParameter(runForkingPoint, "$this$runForkingPoint");
        for (SimpleTypeMarker simpleTypeMarker : this.$supertypesWithSameConstructor) {
            runForkingPoint.fork(new AnonymousClass1(this.$state, this.$this_with, simpleTypeMarker, this.$superType));
        }
    }
}
