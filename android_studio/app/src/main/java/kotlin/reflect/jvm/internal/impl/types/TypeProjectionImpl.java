package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import m8.g;

/* loaded from: classes4.dex */
public class TypeProjectionImpl extends TypeProjectionBase {
    private final Variance projection;
    private final KotlinType type;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 4 || i4 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 4 || i4 == 5) ? 2 : 3];
        switch (i4) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "type";
                break;
            case 4:
            case 5:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
                break;
            case 6:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "projection";
                break;
        }
        if (i4 == 4) {
            objArr[1] = "getProjectionKind";
        } else if (i4 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (i4 == 3) {
            objArr[2] = "replaceType";
        } else if (i4 != 4 && i4 != 5) {
            if (i4 != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "refine";
            }
        }
        String format = String.format(str, objArr);
        if (i4 != 4 && i4 != 5) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public TypeProjectionImpl(@g Variance variance, @g KotlinType kotlinType) {
        if (variance == null) {
            $$$reportNull$$$0(0);
        }
        if (kotlinType == null) {
            $$$reportNull$$$0(1);
        }
        this.projection = variance;
        this.type = kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    @g
    public Variance getProjectionKind() {
        Variance variance = this.projection;
        if (variance == null) {
            $$$reportNull$$$0(4);
        }
        return variance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    @g
    public KotlinType getType() {
        KotlinType kotlinType = this.type;
        if (kotlinType == null) {
            $$$reportNull$$$0(5);
        }
        return kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public boolean isStarProjection() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    @g
    public TypeProjection refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            $$$reportNull$$$0(6);
        }
        return new TypeProjectionImpl(this.projection, kotlinTypeRefiner.refineType((KotlinTypeMarker) this.type));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TypeProjectionImpl(@g KotlinType kotlinType) {
        this(Variance.INVARIANT, kotlinType);
        if (kotlinType == null) {
            $$$reportNull$$$0(2);
        }
    }
}
