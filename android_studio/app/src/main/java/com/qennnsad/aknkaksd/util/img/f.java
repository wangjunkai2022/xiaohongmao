package com.qennnsad.aknkaksd.util.img;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.j;
import com.bumptech.glide.k;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import m8.h;

/* compiled from: GlideUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a=\u0010\b\u001a\u00020\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\f"}, d2 = {"Landroid/widget/ImageView;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/net/Uri;", "uri", "Lkotlin/Function1;", "", "", "cacheListener", "a", "(Landroid/widget/ImageView;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V", "Landroid/content/Context;", "c", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {
    public static final <T extends ImageView> void a(@m8.g T t9, @h Uri uri, @h Function1<? super Boolean, Unit> function1) {
        boolean contains$default;
        j<Drawable> m12;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) String.valueOf(uri), (CharSequence) ".gif", false, 2, (Object) null);
        k F = com.bumptech.glide.c.F(t9);
        if (contains$default) {
            m12 = F.y().d(uri).m1(e.f54753a.b(function1));
            Intrinsics.checkNotNullExpressionValue(m12, "asGif()\n                …eListener(cacheListener))");
        } else {
            m12 = F.d(uri).m1(e.f54753a.b(function1));
            Intrinsics.checkNotNullExpressionValue(m12, "load(uri)\n              …eListener(cacheListener))");
        }
        m12.l0(function1 != null).z(R.drawable.empty).k1(t9);
    }

    public static /* synthetic */ void b(ImageView imageView, Uri uri, Function1 function1, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            function1 = null;
        }
        a(imageView, uri, function1);
    }

    public static final void c(@m8.g Context context, @m8.g Uri uri) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        com.bumptech.glide.c.E(context).d(uri).r(com.bumptech.glide.load.engine.j.f8864e).y1();
    }
}
