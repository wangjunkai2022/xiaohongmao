package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import m8.g;
import m8.h;

/* compiled from: AbstractTypeChecker.kt */
/* loaded from: classes4.dex */
public class TypeCheckerState {
    private final boolean allowedTypeVariable;
    private int argumentsDepth;
    private final boolean isErrorTypeEqualsToAnything;
    private final boolean isStubTypeEqualsToAnything;
    @g
    private final AbstractTypePreparator kotlinTypePreparator;
    @g
    private final AbstractTypeRefiner kotlinTypeRefiner;
    @h
    private ArrayDeque<SimpleTypeMarker> supertypesDeque;
    private boolean supertypesLocked;
    @h
    private Set<SimpleTypeMarker> supertypesSet;
    @g
    private final TypeSystemContext typeSystemContext;

    /* compiled from: AbstractTypeChecker.kt */
    /* loaded from: classes4.dex */
    public interface ForkPointContext {

        /* compiled from: AbstractTypeChecker.kt */
        /* loaded from: classes4.dex */
        public static final class Default implements ForkPointContext {
            private boolean result;

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.ForkPointContext
            public void fork(@g Function0<Boolean> block) {
                Intrinsics.checkNotNullParameter(block, "block");
                if (this.result) {
                    return;
                }
                this.result = block.invoke().booleanValue();
            }

            public final boolean getResult() {
                return this.result;
            }
        }

        void fork(@g Function0<Boolean> function0);
    }

    /* compiled from: AbstractTypeChecker.kt */
    /* loaded from: classes4.dex */
    public enum LowerCapturedTypePolicy {
        CHECK_ONLY_LOWER,
        CHECK_SUBTYPE_AND_LOWER,
        SKIP_LOWER
    }

    /* compiled from: AbstractTypeChecker.kt */
    /* loaded from: classes4.dex */
    public static abstract class SupertypesPolicy {

        /* compiled from: AbstractTypeChecker.kt */
        /* loaded from: classes4.dex */
        public static abstract class DoCustomTransform extends SupertypesPolicy {
            public DoCustomTransform() {
                super(null);
            }
        }

        /* compiled from: AbstractTypeChecker.kt */
        /* loaded from: classes4.dex */
        public static final class LowerIfFlexible extends SupertypesPolicy {
            @g
            public static final LowerIfFlexible INSTANCE = new LowerIfFlexible();

            private LowerIfFlexible() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            @g
            public SimpleTypeMarker transformType(@g TypeCheckerState state, @g KotlinTypeMarker type) {
                Intrinsics.checkNotNullParameter(state, "state");
                Intrinsics.checkNotNullParameter(type, "type");
                return state.getTypeSystemContext().lowerBoundIfFlexible(type);
            }
        }

        /* compiled from: AbstractTypeChecker.kt */
        /* loaded from: classes4.dex */
        public static final class None extends SupertypesPolicy {
            @g
            public static final None INSTANCE = new None();

            private None() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            public /* bridge */ /* synthetic */ SimpleTypeMarker transformType(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                return (SimpleTypeMarker) transformType(typeCheckerState, kotlinTypeMarker);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            @g
            public Void transformType(@g TypeCheckerState state, @g KotlinTypeMarker type) {
                Intrinsics.checkNotNullParameter(state, "state");
                Intrinsics.checkNotNullParameter(type, "type");
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        /* compiled from: AbstractTypeChecker.kt */
        /* loaded from: classes4.dex */
        public static final class UpperIfFlexible extends SupertypesPolicy {
            @g
            public static final UpperIfFlexible INSTANCE = new UpperIfFlexible();

            private UpperIfFlexible() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            @g
            public SimpleTypeMarker transformType(@g TypeCheckerState state, @g KotlinTypeMarker type) {
                Intrinsics.checkNotNullParameter(state, "state");
                Intrinsics.checkNotNullParameter(type, "type");
                return state.getTypeSystemContext().upperBoundIfFlexible(type);
            }
        }

        private SupertypesPolicy() {
        }

        public /* synthetic */ SupertypesPolicy(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public abstract SimpleTypeMarker transformType(@g TypeCheckerState typeCheckerState, @g KotlinTypeMarker kotlinTypeMarker);
    }

    public TypeCheckerState(boolean z9, boolean z10, boolean z11, @g TypeSystemContext typeSystemContext, @g AbstractTypePreparator kotlinTypePreparator, @g AbstractTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(typeSystemContext, "typeSystemContext");
        Intrinsics.checkNotNullParameter(kotlinTypePreparator, "kotlinTypePreparator");
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.isErrorTypeEqualsToAnything = z9;
        this.isStubTypeEqualsToAnything = z10;
        this.allowedTypeVariable = z11;
        this.typeSystemContext = typeSystemContext;
        this.kotlinTypePreparator = kotlinTypePreparator;
        this.kotlinTypeRefiner = kotlinTypeRefiner;
    }

    public static /* synthetic */ Boolean addSubtypeConstraint$default(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z9, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 4) != 0) {
                z9 = false;
            }
            return typeCheckerState.addSubtypeConstraint(kotlinTypeMarker, kotlinTypeMarker2, z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addSubtypeConstraint");
    }

    @h
    public Boolean addSubtypeConstraint(@g KotlinTypeMarker subType, @g KotlinTypeMarker superType, boolean z9) {
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return null;
    }

    public final void clear() {
        ArrayDeque<SimpleTypeMarker> arrayDeque = this.supertypesDeque;
        Intrinsics.checkNotNull(arrayDeque);
        arrayDeque.clear();
        Set<SimpleTypeMarker> set = this.supertypesSet;
        Intrinsics.checkNotNull(set);
        set.clear();
        this.supertypesLocked = false;
    }

    public boolean customIsSubtypeOf(@g KotlinTypeMarker subType, @g KotlinTypeMarker superType) {
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return true;
    }

    @g
    public LowerCapturedTypePolicy getLowerCapturedTypePolicy(@g SimpleTypeMarker subType, @g CapturedTypeMarker superType) {
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER;
    }

    @h
    public final ArrayDeque<SimpleTypeMarker> getSupertypesDeque() {
        return this.supertypesDeque;
    }

    @h
    public final Set<SimpleTypeMarker> getSupertypesSet() {
        return this.supertypesSet;
    }

    @g
    public final TypeSystemContext getTypeSystemContext() {
        return this.typeSystemContext;
    }

    public final void initialize() {
        this.supertypesLocked = true;
        if (this.supertypesDeque == null) {
            this.supertypesDeque = new ArrayDeque<>(4);
        }
        if (this.supertypesSet == null) {
            this.supertypesSet = SmartSet.Companion.create();
        }
    }

    public final boolean isAllowedTypeVariable(@g KotlinTypeMarker type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return this.allowedTypeVariable && this.typeSystemContext.isTypeVariableType(type);
    }

    public final boolean isErrorTypeEqualsToAnything() {
        return this.isErrorTypeEqualsToAnything;
    }

    public final boolean isStubTypeEqualsToAnything() {
        return this.isStubTypeEqualsToAnything;
    }

    @g
    public final KotlinTypeMarker prepareType(@g KotlinTypeMarker type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return this.kotlinTypePreparator.prepareType(type);
    }

    @g
    public final KotlinTypeMarker refineType(@g KotlinTypeMarker type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return this.kotlinTypeRefiner.refineType(type);
    }

    public boolean runForkingPoint(@g Function1<? super ForkPointContext, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ForkPointContext.Default r02 = new ForkPointContext.Default();
        block.invoke(r02);
        return r02.getResult();
    }
}
