package com.giphy.sdk.tracking;

import android.view.View;
import com.giphy.sdk.core.models.Media;
import kotlin.Metadata;

/* compiled from: GifVisibilityListener.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH&J\b\u0010\f\u001a\u00020\nH&¨\u0006\r"}, d2 = {"Lcom/giphy/sdk/tracking/e;", "", "", "position", "Lcom/giphy/sdk/core/models/Media;", "media", "Landroid/view/View;", "view", "", "visiblePercent", "", "a", "reset", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface e {
    void a(int i4, @m8.g Media media, @m8.g View view, float f10);

    void reset();
}
