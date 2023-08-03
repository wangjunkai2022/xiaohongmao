package com.im.freechat.utils;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* compiled from: GlideConfiger.kt */
@b0.c
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/utils/GlideConfiger;", "Lcom/bumptech/glide/module/a;", "Lcom/bumptech/glide/d;", "builder", "", "d", "Landroid/content/Context;", "context", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GlideConfiger extends com.bumptech.glide.module.a {

    /* compiled from: GlideConfiger.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J4\u0010\n\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J>\u0010\u000e\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000f"}, d2 = {"com/im/freechat/utils/GlideConfiger$a", "Lcom/bumptech/glide/request/g;", "", "Lcom/bumptech/glide/load/engine/GlideException;", "e", Device.b.f83594e, "Lcom/bumptech/glide/request/target/p;", TypedValues.Attributes.S_TARGET, "", "isFirstResource", "b", "resource", "Lcom/bumptech/glide/load/DataSource;", "dataSource", "c", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements com.bumptech.glide.request.g<Object> {
        a() {
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@m8.h GlideException glideException, @m8.h Object obj, @m8.h com.bumptech.glide.request.target.p<Object> pVar, boolean z9) {
            Timber.b bVar = Timber.f93860a;
            bVar.d("GLIDE load failed. Target: " + pVar + ", Model: " + obj, new Object[0]);
            return false;
        }

        @Override // com.bumptech.glide.request.g
        public boolean c(@m8.h Object obj, @m8.h Object obj2, @m8.h com.bumptech.glide.request.target.p<Object> pVar, @m8.h DataSource dataSource, boolean z9) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("GLIDE resource READY. Target: " + pVar + ", Model: " + obj2, new Object[0]);
            return false;
        }
    }

    private final void d(com.bumptech.glide.d dVar) {
        dVar.p(2);
        dVar.a(new a());
    }

    @Override // com.bumptech.glide.module.a, com.bumptech.glide.module.b
    public void a(@m8.g Context context, @m8.g com.bumptech.glide.d builder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(builder, "builder");
    }
}
