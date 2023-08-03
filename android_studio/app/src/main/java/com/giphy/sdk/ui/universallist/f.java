package com.giphy.sdk.ui.universallist;

import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.ui.GPHContentType;
import com.giphy.sdk.ui.themes.GridType;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class f {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;
    public static final /* synthetic */ int[] $EnumSwitchMapping$2;
    public static final /* synthetic */ int[] $EnumSwitchMapping$3;

    static {
        int[] iArr = new int[GridType.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[GridType.waterfall.ordinal()] = 1;
        iArr[GridType.carousel.ordinal()] = 2;
        int[] iArr2 = new int[GPHContentType.values().length];
        $EnumSwitchMapping$1 = iArr2;
        GPHContentType gPHContentType = GPHContentType.emoji;
        iArr2[gPHContentType.ordinal()] = 1;
        int[] iArr3 = new int[GPHContentType.values().length];
        $EnumSwitchMapping$2 = iArr3;
        iArr3[gPHContentType.ordinal()] = 1;
        int[] iArr4 = new int[MediaType.values().length];
        $EnumSwitchMapping$3 = iArr4;
        iArr4[MediaType.sticker.ordinal()] = 1;
        iArr4[MediaType.text.ordinal()] = 2;
        iArr4[MediaType.video.ordinal()] = 3;
    }
}
