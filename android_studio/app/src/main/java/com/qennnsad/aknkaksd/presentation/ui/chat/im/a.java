package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import android.app.Activity;
import android.content.Intent;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatDetailsActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001aQ\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroid/app/Activity;", "", k4.b.f84734a, "", "searchedMessageId", "highlightedMessageId", "", k4.b.f84737d, k4.b.f84738e, "", "e", "(Landroid/app/Activity;ILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;)V", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @JvmOverloads
    public static final void a(@m8.g Activity activity, int i4) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        f(activity, i4, null, null, null, null, 30, null);
    }

    @JvmOverloads
    public static final void b(@m8.g Activity activity, int i4, @m8.h Long l10) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        f(activity, i4, l10, null, null, null, 28, null);
    }

    @JvmOverloads
    public static final void c(@m8.g Activity activity, int i4, @m8.h Long l10, @m8.h Long l11) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        f(activity, i4, l10, l11, null, null, 24, null);
    }

    @JvmOverloads
    public static final void d(@m8.g Activity activity, int i4, @m8.h Long l10, @m8.h Long l11, @m8.h List<Long> list) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        f(activity, i4, l10, l11, list, null, 16, null);
    }

    @JvmOverloads
    public static final void e(@m8.g Activity activity, int i4, @m8.h Long l10, @m8.h Long l11, @m8.h List<Long> list, @m8.h Integer num) {
        Long[] lArr;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intent intent = new Intent(activity, ChatDetailsActivity.class);
        intent.putExtra(k4.b.f84734a, i4);
        intent.putExtra(k4.b.f84735b, l10);
        intent.putExtra(k4.b.f84736c, l11);
        if (list != null) {
            Object[] array = list.toArray(new Long[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            lArr = (Long[]) array;
        } else {
            lArr = null;
        }
        intent.putExtra(k4.b.f84737d, (Serializable) lArr);
        intent.putExtra(k4.b.f84738e, num);
        activity.startActivity(intent);
    }

    public static /* synthetic */ void f(Activity activity, int i4, Long l10, Long l11, List list, Integer num, int i10, Object obj) {
        e(activity, i4, (i10 & 2) != 0 ? null : l10, (i10 & 4) != 0 ? null : l11, (i10 & 8) != 0 ? null : list, (i10 & 16) != 0 ? null : num);
    }
}
