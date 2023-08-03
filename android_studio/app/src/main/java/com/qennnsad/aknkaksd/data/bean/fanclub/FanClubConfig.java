package com.qennnsad.aknkaksd.data.bean.fanclub;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FanClubConfig.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003JA\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006 "}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;", "", "enable", "", "price", "", "description", "", "levels", "", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;", "hintUrl", "(ZILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getEnable", "()Z", "getHintUrl", "getLevels", "()Ljava/util/List;", "getPrice", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FanClubConfig {
    @g
    private final String description;
    private final boolean enable;
    @SerializedName("hint_url")
    @g
    private final String hintUrl;
    @g
    private final List<FanClubLevel> levels;
    private final int price;

    public FanClubConfig(boolean z9, int i4, @g String description, @g List<FanClubLevel> levels, @g String hintUrl) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(levels, "levels");
        Intrinsics.checkNotNullParameter(hintUrl, "hintUrl");
        this.enable = z9;
        this.price = i4;
        this.description = description;
        this.levels = levels;
        this.hintUrl = hintUrl;
    }

    public static /* synthetic */ FanClubConfig copy$default(FanClubConfig fanClubConfig, boolean z9, int i4, String str, List list, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z9 = fanClubConfig.enable;
        }
        if ((i10 & 2) != 0) {
            i4 = fanClubConfig.price;
        }
        int i11 = i4;
        if ((i10 & 4) != 0) {
            str = fanClubConfig.description;
        }
        String str3 = str;
        List<FanClubLevel> list2 = list;
        if ((i10 & 8) != 0) {
            list2 = fanClubConfig.levels;
        }
        List list3 = list2;
        if ((i10 & 16) != 0) {
            str2 = fanClubConfig.hintUrl;
        }
        return fanClubConfig.copy(z9, i11, str3, list3, str2);
    }

    public final boolean component1() {
        return this.enable;
    }

    public final int component2() {
        return this.price;
    }

    @g
    public final String component3() {
        return this.description;
    }

    @g
    public final List<FanClubLevel> component4() {
        return this.levels;
    }

    @g
    public final String component5() {
        return this.hintUrl;
    }

    @g
    public final FanClubConfig copy(boolean z9, int i4, @g String description, @g List<FanClubLevel> levels, @g String hintUrl) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(levels, "levels");
        Intrinsics.checkNotNullParameter(hintUrl, "hintUrl");
        return new FanClubConfig(z9, i4, description, levels, hintUrl);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FanClubConfig) {
            FanClubConfig fanClubConfig = (FanClubConfig) obj;
            return this.enable == fanClubConfig.enable && this.price == fanClubConfig.price && Intrinsics.areEqual(this.description, fanClubConfig.description) && Intrinsics.areEqual(this.levels, fanClubConfig.levels) && Intrinsics.areEqual(this.hintUrl, fanClubConfig.hintUrl);
        }
        return false;
    }

    @g
    public final String getDescription() {
        return this.description;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    @g
    public final String getHintUrl() {
        return this.hintUrl;
    }

    @g
    public final List<FanClubLevel> getLevels() {
        return this.levels;
    }

    public final int getPrice() {
        return this.price;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z9 = this.enable;
        ?? r02 = z9;
        if (z9) {
            r02 = 1;
        }
        return (((((((r02 * 31) + this.price) * 31) + this.description.hashCode()) * 31) + this.levels.hashCode()) * 31) + this.hintUrl.hashCode();
    }

    @g
    public String toString() {
        return "FanClubConfig(enable=" + this.enable + ", price=" + this.price + ", description=" + this.description + ", levels=" + this.levels + ", hintUrl=" + this.hintUrl + ')';
    }
}
