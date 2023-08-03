package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: InvalidModuleException.kt */
/* loaded from: classes4.dex */
public final class InvalidModuleException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidModuleException(@g String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
