package com.qennnsad.aknkaksd.util.fresco;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.drawee.backends.pipeline.d;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.h;
import com.facebook.imagepipeline.image.g;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.qennnsad.aknkaksd.util.a1;
import com.qennnsad.aknkaksd.util.o0;

/* compiled from: FrescoUtil.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f54711a = 16;

    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    class a extends com.facebook.drawee.controller.b<g> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f54712b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f54713c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f54714d;

        a(Context context, int i4, SimpleDraweeView simpleDraweeView) {
            this.f54712b = context;
            this.f54713c = i4;
            this.f54714d = simpleDraweeView;
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
            p0.a.t(getClass(), th, "Error loading %s", str);
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        /* renamed from: h */
        public void d(String str, @Nullable g gVar, @Nullable Animatable animatable) {
            if (gVar == null) {
                return;
            }
            o0.a("FrescoActivity", "Final image received! " + gVar.getWidth() + gVar.getHeight());
            c.e(this.f54712b, this.f54713c, this.f54714d, gVar.getWidth(), gVar.getHeight());
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        /* renamed from: i */
        public void a(String str, @Nullable g gVar) {
            p0.a.a(getClass(), "Intermediate image received");
        }
    }

    private c() {
    }

    public static void b(Uri uri) {
        if (uri == null) {
            return;
        }
        h b10 = d.b();
        b10.h(uri);
        b10.f(uri);
    }

    public static z0.a c(Context context, int i4, SimpleDraweeView simpleDraweeView, String str) {
        return d.j().K(new a(context, i4, simpleDraweeView)).a(Uri.parse(str)).build();
    }

    public static void d(Uri uri, int i4, int i10, SimpleDraweeView simpleDraweeView) {
        simpleDraweeView.setController(d.j().c(simpleDraweeView.getController()).P(ImageRequestBuilder.x(uri).L(new com.facebook.imagepipeline.common.d(i4, i10)).a()).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context, int i4, SimpleDraweeView simpleDraweeView, int i10, int i11) {
        int a10 = i4 - a1.a(context, 16.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a10, (int) (i11 * (a10 / i10)));
        layoutParams.addRule(13);
        simpleDraweeView.setLayoutParams(layoutParams);
    }
}
