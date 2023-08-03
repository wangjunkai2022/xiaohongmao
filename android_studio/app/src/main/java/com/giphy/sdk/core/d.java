package com.giphy.sdk.core;

import android.app.Service;
import android.content.Context;
import android.view.ContextThemeWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: GiphyCoreUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\b"}, d2 = {"Lcom/giphy/sdk/core/d;", "", "Landroid/content/Context;", "context", "", "a", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class d {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final d f16911a = new d();

    private d() {
    }

    public final boolean a(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context instanceof ContextThemeWrapper) {
            context = ((ContextThemeWrapper) context).getBaseContext();
        }
        return Service.class.isInstance(context);
    }
}
