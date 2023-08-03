package p8;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.logger.Level;

/* compiled from: KoinAndroidApplication.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\n"}, d2 = {"Lp8/a;", "", "Landroid/content/Context;", "context", "Lorg/koin/core/logger/Level;", "androidLoggerLevel", "Lorg/koin/core/a;", "b", "<init>", "()V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final a f93117a = new a();

    private a() {
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final org.koin.core.a a(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c(context, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final org.koin.core.a b(@g Context context, @g Level androidLoggerLevel) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(androidLoggerLevel, "androidLoggerLevel");
        return org.koin.android.ext.koin.a.d(org.koin.android.ext.koin.a.a(org.koin.core.a.f92408c.a(), context), androidLoggerLevel);
    }

    public static /* synthetic */ org.koin.core.a c(Context context, Level level, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            level = Level.INFO;
        }
        return b(context, level);
    }
}
