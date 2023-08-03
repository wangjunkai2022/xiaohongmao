package com.qennnsad.aknkaksd.util.img;

import android.content.Context;
import android.os.Build;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.okhttp3.b;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.k;
import com.bumptech.glide.load.engine.cache.i;
import com.bumptech.glide.load.engine.cache.l;
import com.bumptech.glide.load.engine.executor.a;
import com.bumptech.glide.request.h;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlideConfiger.kt */
@b0.a({com.bumptech.glide.integration.okhttp3.a.class})
@b0.c
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/util/img/GlideConfiger;", "Lcom/bumptech/glide/module/a;", "Landroid/content/Context;", "context", "Lcom/bumptech/glide/d;", "builder", "", "a", "Lcom/bumptech/glide/c;", "glide", "Lcom/bumptech/glide/Registry;", "registry", "b", "", "F", "d", "()F", "BITMAP_POOL_TARGET_SCREENS", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GlideConfiger extends com.bumptech.glide.module.a {

    /* renamed from: a  reason: collision with root package name */
    private final float f54747a;

    public GlideConfiger() {
        this.f54747a = Build.VERSION.SDK_INT < 26 ? 4.0f : 1.0f;
    }

    @Override // com.bumptech.glide.module.a, com.bumptech.glide.module.b
    public void a(@m8.g Context context, @m8.g com.bumptech.glide.d builder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.h(new h().C(DecodeFormat.PREFER_RGB_565).q());
        builder.r(new i(new l.a(context).g(2.0f).a().d()));
        builder.e(new k(new l.a(context).d(this.f54747a).a().b()));
        a.e eVar = a.e.f8783d;
        builder.k(com.bumptech.glide.load.engine.executor.a.e().e(eVar).a());
        builder.v(com.bumptech.glide.load.engine.executor.a.i().e(eVar).a());
    }

    @Override // com.bumptech.glide.module.d, com.bumptech.glide.module.f
    public void b(@m8.g Context context, @m8.g com.bumptech.glide.c glide, @m8.g Registry registry) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(glide, "glide");
        Intrinsics.checkNotNullParameter(registry, "registry");
        registry.y(com.bumptech.glide.load.model.g.class, InputStream.class, new b.a(g.b()));
    }

    public final float d() {
        return this.f54747a;
    }
}
