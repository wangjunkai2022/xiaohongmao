package com.giphy.sdk.ui.utils;

import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.drawables.ImageFormat;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class c {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;

    static {
        int[] iArr = new int[RenditionType.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[RenditionType.original.ordinal()] = 1;
        iArr[RenditionType.downsized.ordinal()] = 2;
        iArr[RenditionType.downsizedMedium.ordinal()] = 3;
        iArr[RenditionType.downsizedLarge.ordinal()] = 4;
        iArr[RenditionType.fixedWidth.ordinal()] = 5;
        iArr[RenditionType.fixedWidthDownsampled.ordinal()] = 6;
        iArr[RenditionType.fixedWidthStill.ordinal()] = 7;
        iArr[RenditionType.looping.ordinal()] = 8;
        iArr[RenditionType.fixedHeight.ordinal()] = 9;
        int[] iArr2 = new int[ImageFormat.values().length];
        $EnumSwitchMapping$1 = iArr2;
        iArr2[ImageFormat.WEBP.ordinal()] = 1;
        iArr2[ImageFormat.MP4.ordinal()] = 2;
        iArr2[ImageFormat.GIF.ordinal()] = 3;
    }
}
