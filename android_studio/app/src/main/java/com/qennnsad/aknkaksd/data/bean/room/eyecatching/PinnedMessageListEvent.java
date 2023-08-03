package com.qennnsad.aknkaksd.data.bean.room.eyecatching;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PinnedMessageEvents.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;", "", "type", "", "message", "", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "(Ljava/lang/String;Ljava/util/List;)V", "getMessage", "()Ljava/util/List;", "getType", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PinnedMessageListEvent {
    @g
    private final List<PinnedMessageBean> message;
    @h
    private final String type;

    public PinnedMessageListEvent(@h String str, @g List<PinnedMessageBean> message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.type = str;
        this.message = message;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PinnedMessageListEvent copy$default(PinnedMessageListEvent pinnedMessageListEvent, String str, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = pinnedMessageListEvent.type;
        }
        if ((i4 & 2) != 0) {
            list = pinnedMessageListEvent.message;
        }
        return pinnedMessageListEvent.copy(str, list);
    }

    @h
    public final String component1() {
        return this.type;
    }

    @g
    public final List<PinnedMessageBean> component2() {
        return this.message;
    }

    @g
    public final PinnedMessageListEvent copy(@h String str, @g List<PinnedMessageBean> message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new PinnedMessageListEvent(str, message);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinnedMessageListEvent) {
            PinnedMessageListEvent pinnedMessageListEvent = (PinnedMessageListEvent) obj;
            return Intrinsics.areEqual(this.type, pinnedMessageListEvent.type) && Intrinsics.areEqual(this.message, pinnedMessageListEvent.message);
        }
        return false;
    }

    @g
    public final List<PinnedMessageBean> getMessage() {
        return this.message;
    }

    @h
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.message.hashCode();
    }

    @g
    public String toString() {
        return "PinnedMessageListEvent(type=" + this.type + ", message=" + this.message + ')';
    }
}
