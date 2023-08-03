package io.sentry.android.timber;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.SentryLevel;
import io.sentry.f;
import io.sentry.h4;
import io.sentry.n0;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import timber.log.Timber;

/* compiled from: SentryTimberTree.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010:\u001a\u000208\u0012\u0006\u0010<\u001a\u00020\u000f\u0012\u0006\u0010=\u001a\u00020\u000f¢\u0006\u0004\b>\u0010?J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002JC\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J,\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\"\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J1\u0010\u001b\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ;\u0010\u001e\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J1\u0010!\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b!\u0010\u001cJ;\u0010\"\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\"\u0010\u001fJ\u0012\u0010#\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J1\u0010$\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b$\u0010\u001cJ;\u0010%\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b%\u0010\u001fJ\u0012\u0010&\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J1\u0010'\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b'\u0010\u001cJ;\u0010(\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b(\u0010\u001fJ\u0012\u0010)\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J1\u0010*\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b*\u0010\u001cJ;\u0010+\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b+\u0010\u001fJ\u0012\u0010,\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J1\u0010-\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b-\u0010\u001cJ;\u0010.\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b.\u0010\u001fJ\u0012\u0010/\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J9\u00100\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b0\u00101JC\u00102\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b2\u0010\u000eJ\u001a\u00103\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J,\u00104\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0014R\u001c\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u00106R\u0014\u0010:\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u00109R\u0014\u0010<\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010;R\u0014\u0010=\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010;¨\u0006@"}, d2 = {"Lio/sentry/android/timber/e;", "Ltimber/log/Timber$c;", "", "I", "", t.b.f83857b, "", "throwable", "message", "", "", "args", "", "H", "(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V", "Lio/sentry/SentryLevel;", "level", "minLevel", "", "G", "sentryLevel", y.b.f83916d, "Lio/sentry/protocol/g;", "msg", ExifInterface.LONGITUDE_EAST, "D", "F", "u", "(Ljava/lang/String;[Ljava/lang/Object;)V", "t", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V", "v", "a", "c", "b", "k", "m", "l", y.b.f83919g, "z", y.b.f83920h, "d", "f", "e", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "C", "B", "q", "(ILjava/lang/String;[Ljava/lang/Object;)V", "s", "r", "p", "Ljava/lang/ThreadLocal;", "Ljava/lang/ThreadLocal;", "pendingTag", "Lio/sentry/n0;", "Lio/sentry/n0;", "hub", "Lio/sentry/SentryLevel;", "minEventLevel", "minBreadcrumbLevel", "<init>", "(Lio/sentry/n0;Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V", "sentry-android-timber_release"}, k = 1, mv = {1, 4, 3})
/* loaded from: classes4.dex */
public final class e extends Timber.c {

    /* renamed from: b  reason: collision with root package name */
    private final ThreadLocal<String> f83018b;

    /* renamed from: c  reason: collision with root package name */
    private final n0 f83019c;

    /* renamed from: d  reason: collision with root package name */
    private final SentryLevel f83020d;

    /* renamed from: e  reason: collision with root package name */
    private final SentryLevel f83021e;

    public e(@g n0 hub, @g SentryLevel minEventLevel, @g SentryLevel minBreadcrumbLevel) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(minEventLevel, "minEventLevel");
        Intrinsics.checkNotNullParameter(minBreadcrumbLevel, "minBreadcrumbLevel");
        this.f83019c = hub;
        this.f83020d = minEventLevel;
        this.f83021e = minBreadcrumbLevel;
        this.f83018b = new ThreadLocal<>();
    }

    private final void D(SentryLevel sentryLevel, io.sentry.protocol.g gVar, Throwable th) {
        if (G(sentryLevel, this.f83021e)) {
            f fVar = null;
            String message = th != null ? th.getMessage() : null;
            if (gVar.e() != null) {
                fVar = new f();
                fVar.w(sentryLevel);
                fVar.u("Timber");
                String d4 = gVar.d();
                if (d4 == null) {
                    d4 = gVar.e();
                }
                fVar.x(d4);
            } else if (message != null) {
                fVar = f.g(message);
                fVar.u(h4.b.f83287e);
            }
            if (fVar != null) {
                this.f83019c.g(fVar);
            }
        }
    }

    private final void E(SentryLevel sentryLevel, String str, io.sentry.protocol.g gVar, Throwable th) {
        if (G(sentryLevel, this.f83020d)) {
            h4 h4Var = new h4();
            h4Var.L0(sentryLevel);
            if (th != null) {
                h4Var.l0(th);
            }
            if (str != null) {
                h4Var.j0("TimberTag", str);
            }
            h4Var.N0(gVar);
            h4Var.M0("Timber");
            this.f83019c.k(h4Var);
        }
    }

    private final SentryLevel F(int i4) {
        switch (i4) {
            case 2:
                return SentryLevel.DEBUG;
            case 3:
                return SentryLevel.DEBUG;
            case 4:
                return SentryLevel.INFO;
            case 5:
                return SentryLevel.WARNING;
            case 6:
                return SentryLevel.ERROR;
            case 7:
                return SentryLevel.FATAL;
            default:
                return SentryLevel.DEBUG;
        }
    }

    private final boolean G(SentryLevel sentryLevel, SentryLevel sentryLevel2) {
        return sentryLevel.ordinal() >= sentryLevel2.ordinal();
    }

    private final void H(int i4, Throwable th, String str, Object... objArr) {
        String I = I();
        int i10 = 0;
        if ((str == null || str.length() == 0) && th == null) {
            return;
        }
        SentryLevel F = F(i4);
        io.sentry.protocol.g gVar = new io.sentry.protocol.g();
        gVar.h(str);
        if (!(str == null || str.length() == 0)) {
            if (true ^ (objArr.length == 0)) {
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                String format = String.format(str, Arrays.copyOf(copyOf, copyOf.length));
                Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
                gVar.g(format);
            }
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        int length = objArr.length;
        while (i10 < length) {
            Object obj = objArr[i10];
            i10++;
            arrayList.add(String.valueOf(obj));
        }
        gVar.i(arrayList);
        E(F, I, gVar, th);
        D(F, gVar, th);
    }

    private final String I() {
        String str = this.f83018b.get();
        if (str != null) {
            this.f83018b.remove();
        }
        return str;
    }

    @Override // timber.log.Timber.c
    public void A(@h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.A(str, Arrays.copyOf(args, args.length));
        H(7, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void B(@h Throwable th) {
        super.B(th);
        H(7, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void C(@h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.C(th, str, Arrays.copyOf(args, args.length));
        H(7, th, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void a(@h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.a(str, Arrays.copyOf(args, args.length));
        H(3, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void b(@h Throwable th) {
        super.b(th);
        H(3, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void c(@h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.c(th, str, Arrays.copyOf(args, args.length));
        H(3, th, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void d(@h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.d(str, Arrays.copyOf(args, args.length));
        H(6, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void e(@h Throwable th) {
        super.e(th);
        H(6, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void f(@h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.f(th, str, Arrays.copyOf(args, args.length));
        H(6, th, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void k(@h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.a(str, Arrays.copyOf(args, args.length));
        H(4, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void l(@h Throwable th) {
        super.l(th);
        H(4, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void m(@h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.m(th, str, Arrays.copyOf(args, args.length));
        H(4, th, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    protected void p(int i4, @h String str, @g String message, @h Throwable th) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.f83018b.set(str);
    }

    @Override // timber.log.Timber.c
    public void q(int i4, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.q(i4, str, Arrays.copyOf(args, args.length));
        H(i4, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void r(int i4, @h Throwable th) {
        super.r(i4, th);
        H(i4, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void s(int i4, @h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.s(i4, th, str, Arrays.copyOf(args, args.length));
        H(i4, th, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void u(@h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.u(str, Arrays.copyOf(args, args.length));
        H(2, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void v(@h Throwable th) {
        super.v(th);
        H(2, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void w(@h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.w(th, str, Arrays.copyOf(args, args.length));
        H(2, th, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void x(@h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.x(str, Arrays.copyOf(args, args.length));
        H(5, null, str, Arrays.copyOf(args, args.length));
    }

    @Override // timber.log.Timber.c
    public void y(@h Throwable th) {
        super.y(th);
        H(5, th, null, new Object[0]);
    }

    @Override // timber.log.Timber.c
    public void z(@h Throwable th, @h String str, @g Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.z(th, str, Arrays.copyOf(args, args.length));
        H(5, th, str, Arrays.copyOf(args, args.length));
    }
}
