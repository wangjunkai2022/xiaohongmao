package com.giphy.sdk.ui.views;

import com.giphy.sdk.ui.GPHSearchSuggestionType;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final /* synthetic */ class g {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[GPHSearchSuggestionType.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[GPHSearchSuggestionType.Trending.ordinal()] = 1;
        iArr[GPHSearchSuggestionType.Recents.ordinal()] = 2;
        iArr[GPHSearchSuggestionType.Channels.ordinal()] = 3;
        iArr[GPHSearchSuggestionType.Text.ordinal()] = 4;
    }
}
