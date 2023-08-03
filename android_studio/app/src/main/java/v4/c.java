package v4;

import io.sentry.protocol.y;
import kotlin.Metadata;
import m8.g;

/* compiled from: LogUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0018\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0018\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0018\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bJ \u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b¨\u0006\u0011"}, d2 = {"Lv4/c;", "", "", y.b.f83916d, "msg", "", "j", "h", "a", "l", "c", "", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "e", "d", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f94195a = "SVGALog";

    /* renamed from: b  reason: collision with root package name */
    public static final c f94196b = new c();

    private c() {
    }

    public static /* synthetic */ void b(c cVar, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = f94195a;
        }
        cVar.a(str, str2);
    }

    public static /* synthetic */ void f(c cVar, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = f94195a;
        }
        cVar.c(str, str2);
    }

    public static /* synthetic */ void g(c cVar, String str, String str2, Throwable th, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = f94195a;
        }
        cVar.d(str, str2, th);
    }

    public static /* synthetic */ void i(c cVar, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = f94195a;
        }
        cVar.h(str, str2);
    }

    public static /* synthetic */ void k(c cVar, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = f94195a;
        }
        cVar.j(str, str2);
    }

    public static /* synthetic */ void m(c cVar, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = f94195a;
        }
        cVar.l(str, str2);
    }

    public final void a(@g String str, @g String str2) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.debug(str, str2);
        }
    }

    public final void c(@g String str, @g String str2) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.b(str, str2, null);
        }
    }

    public final void d(@g String str, @g String str2, @g Throwable th) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.b(str, str2, th);
        }
    }

    public final void e(@g String str, @g Throwable th) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.b(str, th.getMessage(), th);
        }
    }

    public final void h(@g String str, @g String str2) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.d(str, str2);
        }
    }

    public final void j(@g String str, @g String str2) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.c(str, str2);
        }
    }

    public final void l(@g String str, @g String str2) {
        b a10;
        d dVar = d.f94199c;
        if (dVar.c() && (a10 = dVar.a()) != null) {
            a10.a(str, str2);
        }
    }
}
