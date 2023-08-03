package com.qennnsad.aknkaksd.presentation.module.main.index;

import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnchorTypeData.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0003\u001a\u00020\u0000*\u00020\u0001¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "b", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {

    /* compiled from: AnchorTypeData.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[AnchorType.values().length];
            iArr[AnchorType.FOLLOW.ordinal()] = 1;
            iArr[AnchorType.HOT.ordinal()] = 2;
            iArr[AnchorType.NEARBY.ordinal()] = 3;
            iArr[AnchorType.VIP.ordinal()] = 4;
            iArr[AnchorType.VEGAN.ordinal()] = 5;
            iArr[AnchorType.CASINO.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DistrictType.values().length];
            iArr2[DistrictType.Followed.ordinal()] = 1;
            iArr2[DistrictType.Hot.ordinal()] = 2;
            iArr2[DistrictType.Nearby.ordinal()] = 3;
            iArr2[DistrictType.VIP.ordinal()] = 4;
            iArr2[DistrictType.Vegan.ordinal()] = 5;
            iArr2[DistrictType.Pk.ordinal()] = 6;
            iArr2[DistrictType.Unknown.ordinal()] = 7;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @m8.g
    public static final AnchorType a(@m8.g DistrictType districtType) {
        Intrinsics.checkNotNullParameter(districtType, "<this>");
        switch (a.$EnumSwitchMapping$1[districtType.ordinal()]) {
            case 1:
                return AnchorType.FOLLOW;
            case 2:
                return AnchorType.HOT;
            case 3:
                return AnchorType.NEARBY;
            case 4:
                return AnchorType.VIP;
            case 5:
                return AnchorType.VEGAN;
            case 6:
            case 7:
                throw new IllegalStateException("No option".toString());
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @m8.g
    public static final DistrictType b(@m8.g AnchorType anchorType) {
        Intrinsics.checkNotNullParameter(anchorType, "<this>");
        switch (a.$EnumSwitchMapping$0[anchorType.ordinal()]) {
            case 1:
                return DistrictType.Followed;
            case 2:
                return DistrictType.Hot;
            case 3:
                return DistrictType.Nearby;
            case 4:
                return DistrictType.VIP;
            case 5:
                return DistrictType.Vegan;
            case 6:
                throw new IllegalStateException("No option".toString());
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
