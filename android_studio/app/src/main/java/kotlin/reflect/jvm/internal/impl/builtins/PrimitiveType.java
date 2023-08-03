package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: PrimitiveType.kt */
/* loaded from: classes4.dex */
public enum PrimitiveType {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");
    
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final Set<PrimitiveType> NUMBER_TYPES;
    @g
    private final Lazy arrayTypeFqName$delegate;
    @g
    private final Name arrayTypeName;
    @g
    private final Lazy typeFqName$delegate;
    @g
    private final Name typeName;

    /* compiled from: PrimitiveType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        PrimitiveType primitiveType;
        PrimitiveType primitiveType2;
        PrimitiveType primitiveType3;
        PrimitiveType primitiveType4;
        PrimitiveType primitiveType5;
        PrimitiveType primitiveType6;
        Set<PrimitiveType> of;
        of = SetsKt__SetsKt.setOf((Object[]) new PrimitiveType[]{r0, primitiveType, primitiveType2, primitiveType3, primitiveType4, primitiveType5, primitiveType6});
        NUMBER_TYPES = of;
    }

    PrimitiveType(String str) {
        Lazy lazy;
        Lazy lazy2;
        Name identifier = Name.identifier(str);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(typeName)");
        this.typeName = identifier;
        Name identifier2 = Name.identifier(str + "Array");
        Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(\"${typeName}Array\")");
        this.arrayTypeName = identifier2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new PrimitiveType$typeFqName$2(this));
        this.typeFqName$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new PrimitiveType$arrayTypeFqName$2(this));
        this.arrayTypeFqName$delegate = lazy2;
    }

    @g
    public final FqName getArrayTypeFqName() {
        return (FqName) this.arrayTypeFqName$delegate.getValue();
    }

    @g
    public final Name getArrayTypeName() {
        return this.arrayTypeName;
    }

    @g
    public final FqName getTypeFqName() {
        return (FqName) this.typeFqName$delegate.getValue();
    }

    @g
    public final Name getTypeName() {
        return this.typeName;
    }
}
