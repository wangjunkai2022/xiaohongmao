package com.jakewharton.rxbinding4.widget;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;

/* compiled from: TextViewEditorActionEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u00002\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0007¨\u0006\u0007"}, d2 = {"Landroid/widget/TextView;", "Lkotlin/Function1;", "Lcom/jakewharton/rxbinding4/widget/y1;", "", f.b.f83682d, "Lio/reactivex/rxjava3/core/g0;", "b", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxTextView")
/* loaded from: classes3.dex */
public final /* synthetic */ class e1 {
    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<y1> a(@m8.g TextView textView) {
        return c(textView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<y1> b(@m8.g TextView textView, @m8.g Function1<? super y1, Boolean> function1) {
        return new z1(textView, function1);
    }

    public static /* synthetic */ io.reactivex.rxjava3.core.g0 c(TextView textView, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = q4.a.f93143a;
        }
        return b1.d(textView, function1);
    }
}
