package com.im.freechat.data.sources.api.entities.chat;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0016\b\u0001\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0017\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005HÆ\u0003J+\u0010\u000e\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\u0016\b\u0003\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0006HÖ\u0001R\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;", "", "userId", "", "expansion", "", "", "(ILjava/util/Map;)V", "getExpansion", "()Ljava/util/Map;", "getUserId", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class EditUserExpansionRequest {
    @g
    private final Map<String, Object> expansion;
    private final int userId;

    public EditUserExpansionRequest(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "expansion") @g Map<String, ? extends Object> expansion) {
        Intrinsics.checkNotNullParameter(expansion, "expansion");
        this.userId = i4;
        this.expansion = expansion;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EditUserExpansionRequest copy$default(EditUserExpansionRequest editUserExpansionRequest, int i4, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = editUserExpansionRequest.userId;
        }
        if ((i10 & 2) != 0) {
            map = editUserExpansionRequest.expansion;
        }
        return editUserExpansionRequest.copy(i4, map);
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final Map<String, Object> component2() {
        return this.expansion;
    }

    @g
    public final EditUserExpansionRequest copy(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "expansion") @g Map<String, ? extends Object> expansion) {
        Intrinsics.checkNotNullParameter(expansion, "expansion");
        return new EditUserExpansionRequest(i4, expansion);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EditUserExpansionRequest) {
            EditUserExpansionRequest editUserExpansionRequest = (EditUserExpansionRequest) obj;
            return this.userId == editUserExpansionRequest.userId && Intrinsics.areEqual(this.expansion, editUserExpansionRequest.expansion);
        }
        return false;
    }

    @g
    public final Map<String, Object> getExpansion() {
        return this.expansion;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (this.userId * 31) + this.expansion.hashCode();
    }

    @g
    public String toString() {
        return "EditUserExpansionRequest(userId=" + this.userId + ", expansion=" + this.expansion + ')';
    }
}
