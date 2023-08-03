package com.im.freechat.shared.entities;

import a5.a;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/shared/entities/LastSyncTimeUpdated;", "Lcom/im/freechat/shared/entities/SocketEvent;", j.f47980a, "", "(J)V", "getTime", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LastSyncTimeUpdated extends SocketEvent {
    private final long time;

    public LastSyncTimeUpdated(long j4) {
        super(null);
        this.time = j4;
    }

    public static /* synthetic */ LastSyncTimeUpdated copy$default(LastSyncTimeUpdated lastSyncTimeUpdated, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = lastSyncTimeUpdated.time;
        }
        return lastSyncTimeUpdated.copy(j4);
    }

    public final long component1() {
        return this.time;
    }

    @g
    public final LastSyncTimeUpdated copy(long j4) {
        return new LastSyncTimeUpdated(j4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LastSyncTimeUpdated) && this.time == ((LastSyncTimeUpdated) obj).time;
    }

    public final long getTime() {
        return this.time;
    }

    public int hashCode() {
        return a.a(this.time);
    }

    @g
    public String toString() {
        return "LastSyncTimeUpdated(time=" + this.time + ')';
    }
}
