package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import m8.g;

/* loaded from: classes4.dex */
public interface TypeProjection extends TypeArgumentMarker {
    @g
    Variance getProjectionKind();

    @g
    KotlinType getType();

    boolean isStarProjection();

    @g
    TypeProjection refine(@g KotlinTypeRefiner kotlinTypeRefiner);
}
