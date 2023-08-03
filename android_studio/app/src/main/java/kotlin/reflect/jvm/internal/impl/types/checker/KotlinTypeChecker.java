package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import m8.g;

/* loaded from: classes4.dex */
public interface KotlinTypeChecker {
    public static final KotlinTypeChecker DEFAULT = NewKotlinTypeChecker.Companion.getDefault();

    /* loaded from: classes4.dex */
    public interface TypeConstructorEquality {
        boolean equals(@g TypeConstructor typeConstructor, @g TypeConstructor typeConstructor2);
    }

    boolean equalTypes(@g KotlinType kotlinType, @g KotlinType kotlinType2);

    boolean isSubtypeOf(@g KotlinType kotlinType, @g KotlinType kotlinType2);
}
