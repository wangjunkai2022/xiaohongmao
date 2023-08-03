package com.giphy.sdk.ui.views;

import com.giphy.sdk.ui.GPHContentType;
import com.giphy.sdk.ui.themes.GridType;
import com.giphy.sdk.ui.views.GiphyDialogFragment;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class r {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;
    public static final /* synthetic */ int[] $EnumSwitchMapping$2;
    public static final /* synthetic */ int[] $EnumSwitchMapping$3;
    public static final /* synthetic */ int[] $EnumSwitchMapping$4;
    public static final /* synthetic */ int[] $EnumSwitchMapping$5;
    public static final /* synthetic */ int[] $EnumSwitchMapping$6;

    static {
        int[] iArr = new int[GridType.values().length];
        $EnumSwitchMapping$0 = iArr;
        GridType gridType = GridType.carousel;
        iArr[gridType.ordinal()] = 1;
        GridType gridType2 = GridType.waterfall;
        iArr[gridType2.ordinal()] = 2;
        int[] iArr2 = new int[GridType.values().length];
        $EnumSwitchMapping$1 = iArr2;
        iArr2[gridType2.ordinal()] = 1;
        iArr2[gridType.ordinal()] = 2;
        int[] iArr3 = new int[GiphyDialogFragment.GiphyTextState.values().length];
        $EnumSwitchMapping$2 = iArr3;
        iArr3[GiphyDialogFragment.GiphyTextState.create.ordinal()] = 1;
        iArr3[GiphyDialogFragment.GiphyTextState.search.ordinal()] = 2;
        int[] iArr4 = new int[GPHContentType.values().length];
        $EnumSwitchMapping$3 = iArr4;
        GPHContentType gPHContentType = GPHContentType.emoji;
        iArr4[gPHContentType.ordinal()] = 1;
        GPHContentType gPHContentType2 = GPHContentType.recents;
        iArr4[gPHContentType2.ordinal()] = 2;
        int[] iArr5 = new int[GPHContentType.values().length];
        $EnumSwitchMapping$4 = iArr5;
        iArr5[gPHContentType.ordinal()] = 1;
        iArr5[gPHContentType2.ordinal()] = 2;
        int[] iArr6 = new int[GPHContentType.values().length];
        $EnumSwitchMapping$5 = iArr6;
        iArr6[GPHContentType.clips.ordinal()] = 1;
        GPHContentType gPHContentType3 = GPHContentType.sticker;
        iArr6[gPHContentType3.ordinal()] = 2;
        GPHContentType gPHContentType4 = GPHContentType.text;
        iArr6[gPHContentType4.ordinal()] = 3;
        int[] iArr7 = new int[GPHContentType.values().length];
        $EnumSwitchMapping$6 = iArr7;
        iArr7[gPHContentType3.ordinal()] = 1;
        iArr7[gPHContentType4.ordinal()] = 2;
    }
}
