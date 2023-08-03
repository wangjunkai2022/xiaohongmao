package w8;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.logger.Level;

/* compiled from: EmptyLogger.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u001c\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¨\u0006\u000b"}, d2 = {"Lw8/a;", "Lw8/b;", "Lorg/koin/core/logger/Level;", "level", "", "Lorg/koin/core/logger/MESSAGE;", "msg", "", "h", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a extends b {
    public a() {
        super(Level.NONE);
    }

    @Override // w8.b
    public void h(@g Level level, @g String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
