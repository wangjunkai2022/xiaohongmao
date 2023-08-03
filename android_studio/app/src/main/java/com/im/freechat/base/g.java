package com.im.freechat.base;

import android.content.Context;
import androidx.annotation.StringRes;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import m8.h;

/* compiled from: IBaseUi.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H&J\b\u0010\b\u001a\u00020\u0006H&J\b\u0010\n\u001a\u00020\tH&J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H&J\u0012\u0010\u000f\u001a\u00020\u00062\b\b\u0001\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H&J\u0012\u0010\u0011\u001a\u00020\u00062\b\b\u0001\u0010\u000e\u001a\u00020\rH&J-\u0010\u0014\u001a\u00020\u00062\b\b\u0001\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H&¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0006H&¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/base/g;", "", "", "msg", "", "isCancelable", "", "e", "a", "Landroid/content/Context;", "f", "message", "d", "", "resId", "g", "c", ContextChain.TAG_INFRA, "", "args", "b", "(I[Ljava/lang/Object;)V", "h", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public interface g {

    /* compiled from: IBaseUi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class a {
        public static /* synthetic */ void a(g gVar, String str, boolean z9, int i4, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoadingDialog");
            }
            if ((i4 & 1) != 0) {
                str = gVar.f().getString(b.s.z9);
            }
            if ((i4 & 2) != 0) {
                z9 = true;
            }
            gVar.e(str, z9);
        }
    }

    void a();

    void b(@StringRes int i4, @m8.g Object... objArr);

    void c(@m8.g String str);

    void d(@m8.g String str);

    void e(@h String str, boolean z9);

    @m8.g
    Context f();

    void g(@StringRes int i4);

    void h();

    void i(@StringRes int i4);
}
