package com.im.freechat.data.sources.api.entities.contact;

import com.squareup.moshi.g;
import kotlin.Metadata;
import m8.h;

/* compiled from: ContactResponse.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0002\u0010\u0007R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;", "", "isOnline", "", "lastOnline", "", "(Ljava/lang/Integer;Ljava/lang/Long;)V", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLastOnline", "()Ljava/lang/Long;", "Ljava/lang/Long;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class OnlineInfo {
    @h
    private final Integer isOnline;
    @h
    private final Long lastOnline;

    public OnlineInfo(@g(name = "online") @h Integer num, @g(name = "lastOnline") @h Long l10) {
        this.isOnline = num;
        this.lastOnline = l10;
    }

    @h
    public final Long getLastOnline() {
        return this.lastOnline;
    }

    @h
    public final Integer isOnline() {
        return this.isOnline;
    }
}
