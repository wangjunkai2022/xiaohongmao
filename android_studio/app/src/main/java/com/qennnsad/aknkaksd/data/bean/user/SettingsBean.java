package com.qennnsad.aknkaksd.data.bean.user;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SettingsBean.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;", "", "name", "", "enabled", "", "displayName", "(Ljava/lang/String;ILjava/lang/String;)V", "getDisplayName", "()Ljava/lang/String;", "getEnabled", "()I", "getName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingsBean {
    @SerializedName("display_name")
    @g
    private final String displayName;
    private final int enabled;
    @g
    private final String name;

    public SettingsBean(@g String name, int i4, @g String displayName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        this.name = name;
        this.enabled = i4;
        this.displayName = displayName;
    }

    public static /* synthetic */ SettingsBean copy$default(SettingsBean settingsBean, String str, int i4, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = settingsBean.name;
        }
        if ((i10 & 2) != 0) {
            i4 = settingsBean.enabled;
        }
        if ((i10 & 4) != 0) {
            str2 = settingsBean.displayName;
        }
        return settingsBean.copy(str, i4, str2);
    }

    @g
    public final String component1() {
        return this.name;
    }

    public final int component2() {
        return this.enabled;
    }

    @g
    public final String component3() {
        return this.displayName;
    }

    @g
    public final SettingsBean copy(@g String name, int i4, @g String displayName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        return new SettingsBean(name, i4, displayName);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SettingsBean) {
            SettingsBean settingsBean = (SettingsBean) obj;
            return Intrinsics.areEqual(this.name, settingsBean.name) && this.enabled == settingsBean.enabled && Intrinsics.areEqual(this.displayName, settingsBean.displayName);
        }
        return false;
    }

    @g
    public final String getDisplayName() {
        return this.displayName;
    }

    public final int getEnabled() {
        return this.enabled;
    }

    @g
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.enabled) * 31) + this.displayName.hashCode();
    }

    @g
    public String toString() {
        return "SettingsBean(name=" + this.name + ", enabled=" + this.enabled + ", displayName=" + this.displayName + ')';
    }
}
