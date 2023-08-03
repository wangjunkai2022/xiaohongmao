package com.giphy.sdk.ui.pagination;

import com.giphy.sdk.core.models.enums.RatingType;
import com.giphy.sdk.ui.GPHRequestType;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class b {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;

    static {
        int[] iArr = new int[RatingType.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[RatingType.r.ordinal()] = 1;
        iArr[RatingType.unrated.ordinal()] = 2;
        iArr[RatingType.nsfw.ordinal()] = 3;
        int[] iArr2 = new int[GPHRequestType.values().length];
        $EnumSwitchMapping$1 = iArr2;
        iArr2[GPHRequestType.trending.ordinal()] = 1;
        iArr2[GPHRequestType.search.ordinal()] = 2;
        iArr2[GPHRequestType.emoji.ordinal()] = 3;
        iArr2[GPHRequestType.recents.ordinal()] = 4;
        iArr2[GPHRequestType.animate.ordinal()] = 5;
    }
}
