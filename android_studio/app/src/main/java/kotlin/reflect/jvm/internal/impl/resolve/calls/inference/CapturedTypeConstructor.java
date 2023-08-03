package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeConstructorMarker;
import m8.g;

/* compiled from: CapturedTypeConstructor.kt */
/* loaded from: classes4.dex */
public interface CapturedTypeConstructor extends TypeConstructor, CapturedTypeConstructorMarker {
    @g
    TypeProjection getProjection();
}
