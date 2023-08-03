package com.im.freechat.data.openapigen.models;

import com.squareup.moshi.g;
import io.sentry.clientreport.e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ComplaintRequest.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/openapigen/models/ComplaintRequest;", "", "userId", "", e.b.f83079a, "", "(ILjava/lang/String;)V", "getReason", "()Ljava/lang/String;", "getUserId", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ComplaintRequest {
    @h
    private final String reason;
    private final int userId;

    public ComplaintRequest(@g(name = "user_id") int i4, @g(name = "reason") @h String str) {
        this.userId = i4;
        this.reason = str;
    }

    public static /* synthetic */ ComplaintRequest copy$default(ComplaintRequest complaintRequest, int i4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = complaintRequest.userId;
        }
        if ((i10 & 2) != 0) {
            str = complaintRequest.reason;
        }
        return complaintRequest.copy(i4, str);
    }

    public final int component1() {
        return this.userId;
    }

    @h
    public final String component2() {
        return this.reason;
    }

    @m8.g
    public final ComplaintRequest copy(@g(name = "user_id") int i4, @g(name = "reason") @h String str) {
        return new ComplaintRequest(i4, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ComplaintRequest) {
            ComplaintRequest complaintRequest = (ComplaintRequest) obj;
            return this.userId == complaintRequest.userId && Intrinsics.areEqual(this.reason, complaintRequest.reason);
        }
        return false;
    }

    @h
    public final String getReason() {
        return this.reason;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int i4 = this.userId * 31;
        String str = this.reason;
        return i4 + (str == null ? 0 : str.hashCode());
    }

    @m8.g
    public String toString() {
        return "ComplaintRequest(userId=" + this.userId + ", reason=" + this.reason + ')';
    }

    public /* synthetic */ ComplaintRequest(int i4, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, (i10 & 2) != 0 ? null : str);
    }
}
