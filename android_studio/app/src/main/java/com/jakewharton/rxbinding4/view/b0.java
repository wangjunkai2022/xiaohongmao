package com.jakewharton.rxbinding4.view;

import android.view.View;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewVisibilityConsumer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00040\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¨\u0006\u0006"}, d2 = {"Landroid/view/View;", "", "visibilityWhenFalse", "Lq7/g;", "", "b", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/view/RxView")
/* loaded from: classes3.dex */
public final /* synthetic */ class b0 {

    /* compiled from: ViewVisibilityConsumer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "value", "", "a", "(Ljava/lang/Boolean;)V"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    static final class a<T> implements q7.g<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f43842a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43843b;

        a(View view, int i4) {
            this.f43842a = view;
            this.f43843b = i4;
        }

        @Override // q7.g
        /* renamed from: a */
        public final void accept(Boolean value) {
            View view = this.f43842a;
            Intrinsics.checkExpressionValueIsNotNull(value, "value");
            view.setVisibility(value.booleanValue() ? 0 : this.f43843b);
        }
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final q7.g<? super Boolean> a(@m8.g View view) {
        return i.D(view, 0, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final q7.g<? super Boolean> b(@m8.g View view, int i4) {
        boolean z9 = true;
        if (i4 != 0) {
            if (i4 != 4 && i4 != 8) {
                z9 = false;
            }
            if (z9) {
                return new a(view, i4);
            }
            throw new IllegalArgumentException("Must set visibility to INVISIBLE or GONE when false.".toString());
        }
        throw new IllegalArgumentException("Setting visibility to VISIBLE when false would have no effect.".toString());
    }

    public static /* synthetic */ q7.g c(View view, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 8;
        }
        return i.C(view, i4);
    }
}
