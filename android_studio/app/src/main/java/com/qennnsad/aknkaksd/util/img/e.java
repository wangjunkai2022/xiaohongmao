package com.qennnsad.aknkaksd.util.img;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.j;
import com.bumptech.glide.k;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.bitmap.c0;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.request.target.p;
import com.bumptech.glide.request.transition.c;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import m8.h;

/* compiled from: GlideUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001f\u0010 JE\u0010\f\u001a\u00020\u000b\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0003\u0010\t\u001a\u00020\b2\b\b\u0003\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\rJ'\u0010\u000e\u001a\u00020\u000b\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJE\u0010\u0011\u001a\u00020\u000b\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00062\b\b\u0003\u0010\t\u001a\u00020\b2\b\b\u0003\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0011\u0010\rJ6\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00132\u0006\u0010\u0012\u001a\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0001\u0010\u0018\u001a\u00020\bJ%\u0010\u001a\u001a\u00020\u000b\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001a\u0010\u000fJ0\u0010\u001e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001d\"\b\b\u0000\u0010\u0003*\u00020\u00142\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001b¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/util/img/e;", "", "Landroid/widget/ImageView;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/net/Uri;", "uri", "", com.google.android.exoplayer2.text.ttml.d.f25747z0, "", "placeholder", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "", "g", "(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V", ContextChain.TAG_INFRA, "(Landroid/widget/ImageView;Landroid/net/Uri;)V", "centerCrop", "e", "targetView", "Lcom/bumptech/glide/j;", "Landroid/graphics/drawable/Drawable;", "origBuilder", "Lcom/bumptech/glide/request/h;", "origTransforms", "placeHolderResId", "a", "d", "Lkotlin/Function1;", "cacheListener", "Lcom/bumptech/glide/request/g;", "b", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @m8.g

    /* renamed from: a */
    public static final e f54753a = new e();

    /* compiled from: GlideUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J4\u0010\n\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0016JE\u0010\r\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00018\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/qennnsad/aknkaksd/util/img/e$a", "Lcom/bumptech/glide/request/g;", "Lcom/bumptech/glide/load/engine/GlideException;", "p0", "", "p1", "Lcom/bumptech/glide/request/target/p;", "p2", "", "p3", "b", "Lcom/bumptech/glide/load/DataSource;", "p4", "a", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/p;Lcom/bumptech/glide/load/DataSource;Z)Z", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements com.bumptech.glide.request.g<T> {

        /* renamed from: a */
        final /* synthetic */ Function1<Boolean, Unit> f54754a;

        /* JADX WARN: Multi-variable type inference failed */
        a(Function1<? super Boolean, Unit> function1) {
            this.f54754a = function1;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: a */
        public boolean c(@h Drawable drawable, @h Object obj, @h p pVar, @h DataSource dataSource, boolean z9) {
            this.f54754a.invoke(Boolean.TRUE);
            return false;
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@h GlideException glideException, @h Object obj, @h p<T> pVar, boolean z9) {
            this.f54754a.invoke(Boolean.FALSE);
            return false;
        }
    }

    private e() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ com.bumptech.glide.request.g c(e eVar, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = null;
        }
        return eVar.b(function1);
    }

    @JvmStatic
    public static final <T extends ImageView> void e(@m8.g T t9, @h Uri uri, boolean z9, @DrawableRes int i4, @DrawableRes int i10) {
        com.bumptech.glide.request.h B;
        boolean contains$default;
        j<Drawable> d4;
        String str;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        com.bumptech.glide.request.h hVar = new com.bumptech.glide.request.h();
        if (z9) {
            B = hVar.f();
        } else {
            B = hVar.B();
        }
        Intrinsics.checkNotNullExpressionValue(B, "RequestOptions().run {\n …    fitCenter()\n        }");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) String.valueOf(uri), (CharSequence) ".gif", false, 2, (Object) null);
        k F = com.bumptech.glide.c.F(t9);
        if (contains$default) {
            d4 = F.y().d(uri);
            str = "asGif().load(uri)";
        } else {
            d4 = F.d(uri);
            str = "load(uri)";
        }
        Intrinsics.checkNotNullExpressionValue(d4, str);
        j<Drawable> a10 = d4.a(B);
        e eVar = f54753a;
        Intrinsics.checkNotNull(a10);
        eVar.a(t9, a10, B, i4);
        a10.G1(com.bumptech.glide.load.resource.drawable.d.m()).x(i10).z(R.drawable.empty).k1(t9);
    }

    public static /* synthetic */ void f(ImageView imageView, Uri uri, boolean z9, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z9 = true;
        }
        if ((i11 & 4) != 0) {
            i4 = R.mipmap.ic_launcher;
        }
        if ((i11 & 8) != 0) {
            i10 = R.mipmap.ic_launcher;
        }
        e(imageView, uri, z9, i4, i10);
    }

    @JvmStatic
    public static final <T extends ImageView> void g(@m8.g T t9, @h Uri uri, boolean z9, @DrawableRes int i4, @DrawableRes int i10) {
        boolean contains$default;
        j<Drawable> d4;
        String str;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        com.bumptech.glide.request.h J0 = new com.bumptech.glide.request.h().f().J0(z9 ? new n() : new c0(25));
        Intrinsics.checkNotNullExpressionValue(J0, "RequestOptions()\n       …transform(transformation)");
        com.bumptech.glide.request.h hVar = J0;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) String.valueOf(uri), (CharSequence) ".gif", false, 2, (Object) null);
        k F = com.bumptech.glide.c.F(t9);
        if (contains$default) {
            d4 = F.y().d(uri);
            str = "asGif().load(uri)";
        } else {
            d4 = F.d(uri);
            str = "load(uri)";
        }
        Intrinsics.checkNotNullExpressionValue(d4, str);
        j<Drawable> a10 = d4.a(hVar);
        e eVar = f54753a;
        Intrinsics.checkNotNull(a10);
        eVar.a(t9, a10, hVar, i4);
        a10.G1(com.bumptech.glide.load.resource.drawable.d.m()).x(i10).z(R.drawable.empty).k1(t9);
    }

    public static /* synthetic */ void h(ImageView imageView, Uri uri, boolean z9, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z9 = false;
        }
        if ((i11 & 4) != 0) {
            i4 = R.mipmap.ic_launcher;
        }
        if ((i11 & 8) != 0) {
            i10 = R.mipmap.ic_launcher;
        }
        g(imageView, uri, z9, i4, i10);
    }

    @JvmStatic
    public static final <T extends ImageView> void i(@m8.g T t9, @h Uri uri) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        com.bumptech.glide.request.transition.c a10 = new c.a().b(true).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder().setCrossFadeEnabled(true).build()");
        com.bumptech.glide.request.h J0 = new com.bumptech.glide.request.h().f().J0(new n());
        Intrinsics.checkNotNullExpressionValue(J0, "RequestOptions()\n       … .transform(CircleCrop())");
        com.bumptech.glide.c.F(t9).d(uri).a(J0).w0(R.mipmap.ic_launcher).G1(com.bumptech.glide.load.resource.drawable.d.p(a10)).x(R.drawable.ic_default_head_small).z(R.drawable.empty).k1(t9);
    }

    @m8.g
    public final j<Drawable> a(@m8.g ImageView targetView, @m8.g j<Drawable> origBuilder, @m8.g com.bumptech.glide.request.h origTransforms, @DrawableRes int i4) {
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        Intrinsics.checkNotNullParameter(origBuilder, "origBuilder");
        Intrinsics.checkNotNullParameter(origTransforms, "origTransforms");
        j<Drawable> a10 = com.bumptech.glide.c.F(targetView).n(Integer.valueOf(i4)).F0(0.25f).a(origTransforms);
        Intrinsics.checkNotNullExpressionValue(a10, "with(targetView)\n       …   .apply(origTransforms)");
        j<Drawable> D1 = origBuilder.D1(a10);
        Intrinsics.checkNotNullExpressionValue(D1, "origBuilder.thumbnail(thumbnail)");
        return D1;
    }

    @h
    public final <T extends Drawable> com.bumptech.glide.request.g<T> b(@h Function1<? super Boolean, Unit> function1) {
        if (function1 == null) {
            return null;
        }
        return new a(function1);
    }

    public final <T extends ImageView> void d(@m8.g T t9, @h Uri uri) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        g(t9, uri, true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
    }
}
