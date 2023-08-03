package com.im.freechat.data.openapigen.models;

import com.google.android.exoplayer2.text.ttml.d;
import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: MessageEntitiesItemsInner.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;", "", "color", "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;", d.f25719k0, "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;", "url", "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;", "(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)V", "getBold", "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;", "getColor", "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;", "getUrl", "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageEntitiesItemsInner {
    @h
    private final MessageEntitiesItemsInnerBold bold;
    @h
    private final MessageEntitiesItemsInnerColor color;
    @h
    private final MessageEntitiesItemsInnerUrl url;

    public MessageEntitiesItemsInner() {
        this(null, null, null, 7, null);
    }

    public MessageEntitiesItemsInner(@g(name = "color") @h MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor, @g(name = "bold") @h MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold, @g(name = "url") @h MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl) {
        this.color = messageEntitiesItemsInnerColor;
        this.bold = messageEntitiesItemsInnerBold;
        this.url = messageEntitiesItemsInnerUrl;
    }

    public static /* synthetic */ MessageEntitiesItemsInner copy$default(MessageEntitiesItemsInner messageEntitiesItemsInner, MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor, MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold, MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            messageEntitiesItemsInnerColor = messageEntitiesItemsInner.color;
        }
        if ((i4 & 2) != 0) {
            messageEntitiesItemsInnerBold = messageEntitiesItemsInner.bold;
        }
        if ((i4 & 4) != 0) {
            messageEntitiesItemsInnerUrl = messageEntitiesItemsInner.url;
        }
        return messageEntitiesItemsInner.copy(messageEntitiesItemsInnerColor, messageEntitiesItemsInnerBold, messageEntitiesItemsInnerUrl);
    }

    @h
    public final MessageEntitiesItemsInnerColor component1() {
        return this.color;
    }

    @h
    public final MessageEntitiesItemsInnerBold component2() {
        return this.bold;
    }

    @h
    public final MessageEntitiesItemsInnerUrl component3() {
        return this.url;
    }

    @m8.g
    public final MessageEntitiesItemsInner copy(@g(name = "color") @h MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor, @g(name = "bold") @h MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold, @g(name = "url") @h MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl) {
        return new MessageEntitiesItemsInner(messageEntitiesItemsInnerColor, messageEntitiesItemsInnerBold, messageEntitiesItemsInnerUrl);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageEntitiesItemsInner) {
            MessageEntitiesItemsInner messageEntitiesItemsInner = (MessageEntitiesItemsInner) obj;
            return Intrinsics.areEqual(this.color, messageEntitiesItemsInner.color) && Intrinsics.areEqual(this.bold, messageEntitiesItemsInner.bold) && Intrinsics.areEqual(this.url, messageEntitiesItemsInner.url);
        }
        return false;
    }

    @h
    public final MessageEntitiesItemsInnerBold getBold() {
        return this.bold;
    }

    @h
    public final MessageEntitiesItemsInnerColor getColor() {
        return this.color;
    }

    @h
    public final MessageEntitiesItemsInnerUrl getUrl() {
        return this.url;
    }

    public int hashCode() {
        MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor = this.color;
        int hashCode = (messageEntitiesItemsInnerColor == null ? 0 : messageEntitiesItemsInnerColor.hashCode()) * 31;
        MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold = this.bold;
        int hashCode2 = (hashCode + (messageEntitiesItemsInnerBold == null ? 0 : messageEntitiesItemsInnerBold.hashCode())) * 31;
        MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl = this.url;
        return hashCode2 + (messageEntitiesItemsInnerUrl != null ? messageEntitiesItemsInnerUrl.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MessageEntitiesItemsInner(color=" + this.color + ", bold=" + this.bold + ", url=" + this.url + ')';
    }

    public /* synthetic */ MessageEntitiesItemsInner(MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor, MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold, MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : messageEntitiesItemsInnerColor, (i4 & 2) != 0 ? null : messageEntitiesItemsInnerBold, (i4 & 4) != 0 ? null : messageEntitiesItemsInnerUrl);
    }
}
