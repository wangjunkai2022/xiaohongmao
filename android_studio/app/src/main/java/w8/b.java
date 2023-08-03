package w8;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.logger.Level;

/* compiled from: Logger.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0002J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H&J\u0012\u0010\f\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007J\u0012\u0010\r\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007J\u0012\u0010\u000e\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0002J\u001c\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lw8/b;", "", "Lorg/koin/core/logger/Level;", "level", "", "a", "", "Lorg/koin/core/logger/MESSAGE;", "msg", "", "c", "h", "b", "f", "d", "lvl", "g", "Lkotlin/Function0;", ContextChain.TAG_INFRA, "Lorg/koin/core/logger/Level;", "e", "()Lorg/koin/core/logger/Level;", "j", "(Lorg/koin/core/logger/Level;)V", "<init>", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public abstract class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    private Level f94466a;

    public b() {
        this(null, 1, null);
    }

    public b(@g Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.f94466a = level;
    }

    private final boolean a(Level level) {
        return this.f94466a.compareTo(level) <= 0;
    }

    private final void c(Level level, String str) {
        if (a(level)) {
            h(level, str);
        }
    }

    public final void b(@g String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        c(Level.DEBUG, msg);
    }

    public final void d(@g String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        c(Level.ERROR, msg);
    }

    @g
    public final Level e() {
        return this.f94466a;
    }

    public final void f(@g String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        c(Level.INFO, msg);
    }

    public final boolean g(@g Level lvl) {
        Intrinsics.checkNotNullParameter(lvl, "lvl");
        return this.f94466a.compareTo(lvl) <= 0;
    }

    public abstract void h(@g Level level, @g String str);

    public final void i(@g Level lvl, @g Function0<String> msg) {
        Intrinsics.checkNotNullParameter(lvl, "lvl");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (g(lvl)) {
            c(lvl, msg.invoke());
        }
    }

    public final void j(@g Level level) {
        Intrinsics.checkNotNullParameter(level, "<set-?>");
        this.f94466a = level;
    }

    public /* synthetic */ b(Level level, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? Level.INFO : level);
    }
}
