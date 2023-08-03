package com.giphy.sdk.ui.pagination;

import com.giphy.sdk.core.models.enums.MediaType;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class a {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[MediaType.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[MediaType.gif.ordinal()] = 1;
        iArr[MediaType.sticker.ordinal()] = 2;
        iArr[MediaType.text.ordinal()] = 3;
        iArr[MediaType.emoji.ordinal()] = 4;
        iArr[MediaType.video.ordinal()] = 5;
    }
}
