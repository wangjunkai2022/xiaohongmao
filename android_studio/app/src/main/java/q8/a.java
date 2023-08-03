package q8;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.logger.Level;
import w8.b;
import w8.c;

/* compiled from: AndroidLogger.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001c\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\f"}, d2 = {"Lq8/a;", "Lw8/b;", "", "Lorg/koin/core/logger/MESSAGE;", "msg", "Lorg/koin/core/logger/Level;", "level", "", "k", "h", "<init>", "(Lorg/koin/core/logger/Level;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a extends b {

    /* compiled from: AndroidLogger.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: q8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public /* synthetic */ class C0834a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Level.values().length];
            iArr[Level.DEBUG.ordinal()] = 1;
            iArr[Level.INFO.ordinal()] = 2;
            iArr[Level.ERROR.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public a() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@g Level level) {
        super(level);
        Intrinsics.checkNotNullParameter(level, "level");
    }

    private final void k(String str, Level level) {
        int i4 = C0834a.$EnumSwitchMapping$0[level.ordinal()];
        if (i4 == 1) {
            Log.d(c.f94467a, str);
        } else if (i4 == 2) {
            Log.i(c.f94467a, str);
        } else if (i4 != 3) {
            Log.e(c.f94467a, str);
        } else {
            Log.e(c.f94467a, str);
        }
    }

    @Override // w8.b
    public void h(@g Level level, @g String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (e().compareTo(level) <= 0) {
            k(msg, level);
        }
    }

    public /* synthetic */ a(Level level, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? Level.INFO : level);
    }
}
