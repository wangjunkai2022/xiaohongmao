package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AdConfigBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/HallPopupBean;", "", "content", "", "status", "(Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getStatus", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HallPopupBean {
    @h
    private final String content;
    @h
    private final String status;

    public HallPopupBean(@h String str, @h String str2) {
        this.content = str;
        this.status = str2;
    }

    public static /* synthetic */ HallPopupBean copy$default(HallPopupBean hallPopupBean, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = hallPopupBean.content;
        }
        if ((i4 & 2) != 0) {
            str2 = hallPopupBean.status;
        }
        return hallPopupBean.copy(str, str2);
    }

    @h
    public final String component1() {
        return this.content;
    }

    @h
    public final String component2() {
        return this.status;
    }

    @g
    public final HallPopupBean copy(@h String str, @h String str2) {
        return new HallPopupBean(str, str2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HallPopupBean) {
            HallPopupBean hallPopupBean = (HallPopupBean) obj;
            return Intrinsics.areEqual(this.content, hallPopupBean.content) && Intrinsics.areEqual(this.status, hallPopupBean.status);
        }
        return false;
    }

    @h
    public final String getContent() {
        return this.content;
    }

    @h
    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.content;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.status;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @g
    public String toString() {
        return "HallPopupBean(content=" + this.content + ", status=" + this.status + ')';
    }
}
