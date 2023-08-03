package com.giphy.sdk.ui.utils;

import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.drawables.ImageFormat;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class e {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;

    static {
        int[] iArr = new int[ImageFormat.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[ImageFormat.WEBP.ordinal()] = 1;
        iArr[ImageFormat.MP4.ordinal()] = 2;
        iArr[ImageFormat.GIF.ordinal()] = 3;
        int[] iArr2 = new int[RenditionType.values().length];
        $EnumSwitchMapping$1 = iArr2;
        iArr2[RenditionType.original.ordinal()] = 1;
        iArr2[RenditionType.downsized.ordinal()] = 2;
        iArr2[RenditionType.downsizedMedium.ordinal()] = 3;
        iArr2[RenditionType.downsizedLarge.ordinal()] = 4;
        iArr2[RenditionType.fixedWidth.ordinal()] = 5;
        iArr2[RenditionType.fixedWidthSmall.ordinal()] = 6;
        iArr2[RenditionType.fixedWidthDownsampled.ordinal()] = 7;
        iArr2[RenditionType.fixedWidthStill.ordinal()] = 8;
        iArr2[RenditionType.looping.ordinal()] = 9;
        iArr2[RenditionType.fixedHeight.ordinal()] = 10;
        iArr2[RenditionType.originalStill.ordinal()] = 11;
        iArr2[RenditionType.preview.ordinal()] = 12;
        iArr2[RenditionType.fixedHeightStill.ordinal()] = 13;
        iArr2[RenditionType.fixedHeightDownsampled.ordinal()] = 14;
        iArr2[RenditionType.fixedHeightSmall.ordinal()] = 15;
        iArr2[RenditionType.fixedHeightSmallStill.ordinal()] = 16;
        iArr2[RenditionType.fixedWidthSmallStill.ordinal()] = 17;
        iArr2[RenditionType.downsizedSmall.ordinal()] = 18;
        iArr2[RenditionType.downsizedStill.ordinal()] = 19;
    }
}
