package com.giphy.sdk.ui.themes;

import kotlin.Metadata;

/* compiled from: GridType.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/giphy/sdk/ui/themes/GridType;", "", "(Ljava/lang/String;I)V", "hasSearchBar", "", "waterfall", "carousel", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public enum GridType {
    waterfall,
    carousel;

    public final boolean hasSearchBar() {
        return this == waterfall || this == carousel;
    }
}
