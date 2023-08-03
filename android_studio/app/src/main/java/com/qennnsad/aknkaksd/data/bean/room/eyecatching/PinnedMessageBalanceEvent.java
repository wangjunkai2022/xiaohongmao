package com.qennnsad.aknkaksd.data.bean.room.eyecatching;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PinnedMessageEvents.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBalanceEvent;", "", "type", "", "anchorBalance", "", "(Ljava/lang/String;I)V", "getAnchorBalance", "()I", "getType", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PinnedMessageBalanceEvent {
    private final int anchorBalance;
    @h
    private final String type;

    public PinnedMessageBalanceEvent(@h String str, int i4) {
        this.type = str;
        this.anchorBalance = i4;
    }

    public static /* synthetic */ PinnedMessageBalanceEvent copy$default(PinnedMessageBalanceEvent pinnedMessageBalanceEvent, String str, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = pinnedMessageBalanceEvent.type;
        }
        if ((i10 & 2) != 0) {
            i4 = pinnedMessageBalanceEvent.anchorBalance;
        }
        return pinnedMessageBalanceEvent.copy(str, i4);
    }

    @h
    public final String component1() {
        return this.type;
    }

    public final int component2() {
        return this.anchorBalance;
    }

    @g
    public final PinnedMessageBalanceEvent copy(@h String str, int i4) {
        return new PinnedMessageBalanceEvent(str, i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinnedMessageBalanceEvent) {
            PinnedMessageBalanceEvent pinnedMessageBalanceEvent = (PinnedMessageBalanceEvent) obj;
            return Intrinsics.areEqual(this.type, pinnedMessageBalanceEvent.type) && this.anchorBalance == pinnedMessageBalanceEvent.anchorBalance;
        }
        return false;
    }

    public final int getAnchorBalance() {
        return this.anchorBalance;
    }

    @h
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.anchorBalance;
    }

    @g
    public String toString() {
        return "PinnedMessageBalanceEvent(type=" + this.type + ", anchorBalance=" + this.anchorBalance + ')';
    }
}
