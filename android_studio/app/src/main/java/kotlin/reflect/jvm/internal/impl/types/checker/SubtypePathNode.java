package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: utils.kt */
/* loaded from: classes4.dex */
final class SubtypePathNode {
    @h
    private final SubtypePathNode previous;
    @g
    private final KotlinType type;

    public SubtypePathNode(@g KotlinType type, @h SubtypePathNode subtypePathNode) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.previous = subtypePathNode;
    }

    @h
    public final SubtypePathNode getPrevious() {
        return this.previous;
    }

    @g
    public final KotlinType getType() {
        return this.type;
    }
}
