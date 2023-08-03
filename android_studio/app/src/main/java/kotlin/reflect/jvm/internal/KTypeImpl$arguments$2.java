package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* compiled from: KTypeImpl.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/KTypeProjection;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
final class KTypeImpl$arguments$2 extends Lambda implements Function0<List<? extends KTypeProjection>> {
    final /* synthetic */ Function0<Type> $computeJavaType;
    final /* synthetic */ KTypeImpl this$0;

    /* compiled from: KTypeImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.INVARIANT.ordinal()] = 1;
            iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KTypeImpl$arguments$2(KTypeImpl kTypeImpl, Function0<? extends Type> function0) {
        super(0);
        this.this$0 = kTypeImpl;
        this.$computeJavaType = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final List<Type> m1356invoke$lambda0(Lazy<? extends List<? extends Type>> lazy) {
        return (List) lazy.getValue();
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends KTypeProjection> invoke() {
        Lazy lazy;
        int collectionSizeOrDefault;
        KTypeProjection invariant;
        List<? extends KTypeProjection> emptyList;
        List<TypeProjection> arguments = this.this$0.getType().getArguments();
        if (arguments.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new KTypeImpl$arguments$2$parameterizedTypeArguments$2(this.this$0));
        Function0<Type> function0 = this.$computeJavaType;
        KTypeImpl kTypeImpl = this.this$0;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arguments, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i4 = 0;
        for (Object obj : arguments) {
            int i10 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TypeProjection typeProjection = (TypeProjection) obj;
            if (typeProjection.isStarProjection()) {
                invariant = KTypeProjection.Companion.getSTAR();
            } else {
                KotlinType type = typeProjection.getType();
                Intrinsics.checkNotNullExpressionValue(type, "typeProjection.type");
                KTypeImpl kTypeImpl2 = new KTypeImpl(type, function0 == null ? null : new KTypeImpl$arguments$2$1$type$1(kTypeImpl, i4, lazy));
                int i11 = WhenMappings.$EnumSwitchMapping$0[typeProjection.getProjectionKind().ordinal()];
                if (i11 == 1) {
                    invariant = KTypeProjection.Companion.invariant(kTypeImpl2);
                } else if (i11 == 2) {
                    invariant = KTypeProjection.Companion.contravariant(kTypeImpl2);
                } else if (i11 != 3) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    invariant = KTypeProjection.Companion.covariant(kTypeImpl2);
                }
            }
            arrayList.add(invariant);
            i4 = i10;
        }
        return arrayList;
    }
}
