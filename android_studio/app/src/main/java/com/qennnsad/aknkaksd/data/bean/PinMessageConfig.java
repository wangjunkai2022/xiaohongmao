package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/PinMessageConfig;", "", "enable", "", "intro", "", "(ZLjava/lang/String;)V", "getEnable", "()Z", "getIntro", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PinMessageConfig {
    private final boolean enable;
    @h
    private final String intro;

    public PinMessageConfig(boolean z9, @h String str) {
        this.enable = z9;
        this.intro = str;
    }

    public static /* synthetic */ PinMessageConfig copy$default(PinMessageConfig pinMessageConfig, boolean z9, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = pinMessageConfig.enable;
        }
        if ((i4 & 2) != 0) {
            str = pinMessageConfig.intro;
        }
        return pinMessageConfig.copy(z9, str);
    }

    public final boolean component1() {
        return this.enable;
    }

    @h
    public final String component2() {
        return this.intro;
    }

    @g
    public final PinMessageConfig copy(boolean z9, @h String str) {
        return new PinMessageConfig(z9, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinMessageConfig) {
            PinMessageConfig pinMessageConfig = (PinMessageConfig) obj;
            return this.enable == pinMessageConfig.enable && Intrinsics.areEqual(this.intro, pinMessageConfig.intro);
        }
        return false;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    @h
    public final String getIntro() {
        return this.intro;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z9 = this.enable;
        ?? r02 = z9;
        if (z9) {
            r02 = 1;
        }
        int i4 = r02 * 31;
        String str = this.intro;
        return i4 + (str == null ? 0 : str.hashCode());
    }

    @g
    public String toString() {
        return "PinMessageConfig(enable=" + this.enable + ", intro=" + this.intro + ')';
    }
}
