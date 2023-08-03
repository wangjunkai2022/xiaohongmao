package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: IsAbleToCreateChatBean.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/IsAbleToCreateChatBean;", "", "isAble", "", "message", "", "(ZLjava/lang/String;)V", "()Z", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class IsAbleToCreateChatBean {
    @SerializedName("verify")
    private final boolean isAble;
    @SerializedName("msg")
    @h
    private final String message;

    public IsAbleToCreateChatBean(boolean z9, @h String str) {
        this.isAble = z9;
        this.message = str;
    }

    public static /* synthetic */ IsAbleToCreateChatBean copy$default(IsAbleToCreateChatBean isAbleToCreateChatBean, boolean z9, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = isAbleToCreateChatBean.isAble;
        }
        if ((i4 & 2) != 0) {
            str = isAbleToCreateChatBean.message;
        }
        return isAbleToCreateChatBean.copy(z9, str);
    }

    public final boolean component1() {
        return this.isAble;
    }

    @h
    public final String component2() {
        return this.message;
    }

    @g
    public final IsAbleToCreateChatBean copy(boolean z9, @h String str) {
        return new IsAbleToCreateChatBean(z9, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IsAbleToCreateChatBean) {
            IsAbleToCreateChatBean isAbleToCreateChatBean = (IsAbleToCreateChatBean) obj;
            return this.isAble == isAbleToCreateChatBean.isAble && Intrinsics.areEqual(this.message, isAbleToCreateChatBean.message);
        }
        return false;
    }

    @h
    public final String getMessage() {
        return this.message;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z9 = this.isAble;
        ?? r02 = z9;
        if (z9) {
            r02 = 1;
        }
        int i4 = r02 * 31;
        String str = this.message;
        return i4 + (str == null ? 0 : str.hashCode());
    }

    public final boolean isAble() {
        return this.isAble;
    }

    @g
    public String toString() {
        return "IsAbleToCreateChatBean(isAble=" + this.isAble + ", message=" + this.message + ')';
    }
}
