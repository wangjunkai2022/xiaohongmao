package w8;

import java.io.PrintStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.logger.Level;

/* compiled from: PrintLogger.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\u001c\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¨\u0006\u000b"}, d2 = {"Lw8/d;", "Lw8/b;", "Lorg/koin/core/logger/Level;", "level", "", "Lorg/koin/core/logger/MESSAGE;", "msg", "", "h", "<init>", "(Lorg/koin/core/logger/Level;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class d extends b {
    public d() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@g Level level) {
        super(level);
        Intrinsics.checkNotNullParameter(level, "level");
    }

    @Override // w8.b
    public void h(@g Level level, @g String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (e().compareTo(level) <= 0) {
            PrintStream printStream = level.compareTo(Level.ERROR) >= 0 ? System.err : System.out;
            printStream.println('[' + level + "] [Koin] " + msg);
        }
    }

    public /* synthetic */ d(Level level, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? Level.INFO : level);
    }
}
