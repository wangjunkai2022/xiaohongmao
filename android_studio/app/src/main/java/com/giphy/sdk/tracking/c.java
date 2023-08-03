package com.giphy.sdk.tracking;

import com.giphy.sdk.core.models.Media;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import m8.h;

/* compiled from: GifTrackingCallback.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&¨\u0006\u000b"}, d2 = {"Lcom/giphy/sdk/tracking/c;", "", "", "position", "Lcom/giphy/sdk/core/models/Media;", "c", "Lkotlin/Function0;", "", "onLoad", "", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface c {
    boolean a(int i4, @m8.g Function0<Unit> function0);

    @h
    Media c(int i4);
}
