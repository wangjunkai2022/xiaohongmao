package com.qennnsad.aknkaksd.util.toast;

import android.content.Context;
import android.widget.Toast;
import androidx.annotation.StringRes;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.toast.CustomToast;
import io.sentry.protocol.y;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ToastUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J\u001c\u0010\t\u001a\u00020\b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007J\u0018\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0007J\u001c\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007J$\u0010\u0011\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0003J$\u0010\u0012\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007J\u001c\u0010\u0013\u001a\u00020\b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007J\u001c\u0010\u0014\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007J\u001c\u0010\u0015\u001a\u00020\b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007J\u001c\u0010\u0016\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0002H\u0007R\u0014\u0010\u0018\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0017R\u001c\u0010\u000b\u001a\n \u0019*\u0004\u0018\u00010\n0\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/util/toast/a;", "", "", "", "t", "", "message", "long", "", "l", "Landroid/content/Context;", "context", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "msg", "j", "msgRes", ContextChain.TAG_INFRA, "r", "p", "d", "b", y.b.f83919g, "v", "Ljava/lang/String;", "TAG", "kotlin.jvm.PlatformType", "g", "()Landroid/content/Context;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final a f55051a = new a();
    @g

    /* renamed from: b  reason: collision with root package name */
    private static final String f55052b = "ToastUtils";

    private a() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void a(@StringRes int i4) {
        e(i4, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void b(@StringRes int i4, boolean z9) {
        d(f55051a.g().getString(i4), z9);
    }

    @JvmStatic
    @JvmOverloads
    public static final void c(@h String str) {
        f(str, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void d(@h String str, boolean z9) {
        a aVar = f55051a;
        o0.a(f55052b, "Error: " + str);
        Context context = aVar.g();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        CustomToast a10 = new CustomToast.a(context, CustomToast.Type.Failure, str).a();
        a10.setDuration(aVar.t(z9));
        a10.show();
    }

    public static /* synthetic */ void e(int i4, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        b(i4, z9);
    }

    public static /* synthetic */ void f(String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        d(str, z9);
    }

    private final Context g() {
        return BaseBeautyApplication.Companion.b().getApplicationContext();
    }

    @JvmStatic
    @JvmOverloads
    public static final void h(@StringRes int i4) {
        m(i4, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void i(@StringRes int i4, boolean z9) {
        l(f55051a.g().getString(i4), z9);
    }

    @JvmStatic
    public static final void j(@g Context context, @g l.a msg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg instanceof l.a.c) {
            l.a.c cVar = (l.a.c) msg;
            int b10 = cVar.b();
            Object[] a10 = cVar.a();
            n(context.getString(b10, Arrays.copyOf(a10, a10.length)), false, 2, null);
        } else if (msg instanceof l.a.d) {
            n(((l.a.d) msg).a(), false, 2, null);
        } else if (msg instanceof l.a.C0412a) {
            f(((l.a.C0412a) msg).a(), false, 2, null);
        } else if (msg instanceof l.a.b) {
            l.a.b bVar = (l.a.b) msg;
            int b11 = bVar.b();
            Object[] a11 = bVar.a();
            f(context.getString(b11, Arrays.copyOf(a11, a11.length)), false, 2, null);
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void k(@h String str) {
        n(str, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void l(@h String str, boolean z9) {
        a aVar = f55051a;
        o0.a(f55052b, "Toast: " + str);
        Context context = aVar.g();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        CustomToast a10 = new CustomToast.a(context, CustomToast.Type.Normal, str).a();
        a10.setDuration(aVar.t(z9));
        a10.show();
    }

    public static /* synthetic */ void m(int i4, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        i(i4, z9);
    }

    public static /* synthetic */ void n(String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        l(str, z9);
    }

    @JvmStatic
    @JvmOverloads
    public static final void o(@h Context context, @g String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        q(context, message, false, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void p(@h Context context, @g String message, boolean z9) {
        Intrinsics.checkNotNullParameter(message, "message");
        a aVar = f55051a;
        o0.a(f55052b, "Classic..");
        if (context == null) {
            context = aVar.g();
        }
        r(context, message, z9);
    }

    public static /* synthetic */ void q(Context context, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        p(context, str, z9);
    }

    @JvmStatic
    private static final void r(Context context, String str, boolean z9) {
        if (context == null) {
            return;
        }
        a aVar = f55051a;
        o0.a(f55052b, "Simple: " + str);
        Toast.makeText(context, str, aVar.t(z9)).show();
    }

    static /* synthetic */ void s(Context context, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        r(context, str, z9);
    }

    private final int t(boolean z9) {
        return z9 ? 1 : 0;
    }

    @JvmStatic
    @JvmOverloads
    public static final void u(@StringRes int i4) {
        y(i4, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void v(@StringRes int i4, boolean z9) {
        z(f55051a.g().getString(i4, Boolean.valueOf(z9)), false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void w(@h String str) {
        z(str, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void x(@h String str, boolean z9) {
        a aVar = f55051a;
        o0.a(f55052b, "Warn: " + str);
        Context context = aVar.g();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        CustomToast a10 = new CustomToast.a(context, CustomToast.Type.Warn, str).a();
        a10.setDuration(aVar.t(z9));
        a10.show();
    }

    public static /* synthetic */ void y(int i4, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        v(i4, z9);
    }

    public static /* synthetic */ void z(String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        x(str, z9);
    }
}
