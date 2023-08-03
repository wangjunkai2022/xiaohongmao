package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import m8.g;

/* compiled from: NewKotlinTypeChecker.kt */
/* loaded from: classes4.dex */
public final class NewKotlinTypeCheckerImpl implements NewKotlinTypeChecker {
    @g
    private final KotlinTypePreparator kotlinTypePreparator;
    @g
    private final KotlinTypeRefiner kotlinTypeRefiner;
    @g
    private final OverridingUtil overridingUtil;

    public NewKotlinTypeCheckerImpl(@g KotlinTypeRefiner kotlinTypeRefiner, @g KotlinTypePreparator kotlinTypePreparator) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        Intrinsics.checkNotNullParameter(kotlinTypePreparator, "kotlinTypePreparator");
        this.kotlinTypeRefiner = kotlinTypeRefiner;
        this.kotlinTypePreparator = kotlinTypePreparator;
        OverridingUtil createWithTypeRefiner = OverridingUtil.createWithTypeRefiner(getKotlinTypeRefiner());
        Intrinsics.checkNotNullExpressionValue(createWithTypeRefiner, "createWithTypeRefiner(kotlinTypeRefiner)");
        this.overridingUtil = createWithTypeRefiner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker
    public boolean equalTypes(@g KotlinType a10, @g KotlinType b10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return equalTypes(ClassicTypeCheckerStateKt.createClassicTypeCheckerState$default(false, false, null, getKotlinTypePreparator(), getKotlinTypeRefiner(), 6, null), a10.unwrap(), b10.unwrap());
    }

    @g
    public KotlinTypePreparator getKotlinTypePreparator() {
        return this.kotlinTypePreparator;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker
    @g
    public KotlinTypeRefiner getKotlinTypeRefiner() {
        return this.kotlinTypeRefiner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker
    @g
    public OverridingUtil getOverridingUtil() {
        return this.overridingUtil;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker
    public boolean isSubtypeOf(@g KotlinType subtype, @g KotlinType supertype) {
        Intrinsics.checkNotNullParameter(subtype, "subtype");
        Intrinsics.checkNotNullParameter(supertype, "supertype");
        return isSubtypeOf(ClassicTypeCheckerStateKt.createClassicTypeCheckerState$default(true, false, null, getKotlinTypePreparator(), getKotlinTypeRefiner(), 6, null), subtype.unwrap(), supertype.unwrap());
    }

    public final boolean equalTypes(@g TypeCheckerState typeCheckerState, @g UnwrappedType a10, @g UnwrappedType b10) {
        Intrinsics.checkNotNullParameter(typeCheckerState, "<this>");
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return AbstractTypeChecker.INSTANCE.equalTypes(typeCheckerState, a10, b10);
    }

    public final boolean isSubtypeOf(@g TypeCheckerState typeCheckerState, @g UnwrappedType subType, @g UnwrappedType superType) {
        Intrinsics.checkNotNullParameter(typeCheckerState, "<this>");
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return AbstractTypeChecker.isSubtypeOf$default(AbstractTypeChecker.INSTANCE, typeCheckerState, subType, superType, false, 8, null);
    }

    public /* synthetic */ NewKotlinTypeCheckerImpl(KotlinTypeRefiner kotlinTypeRefiner, KotlinTypePreparator kotlinTypePreparator, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(kotlinTypeRefiner, (i4 & 2) != 0 ? KotlinTypePreparator.Default.INSTANCE : kotlinTypePreparator);
    }
}
