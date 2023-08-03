package com.im.freechat.data.openapigen.models;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.sentry.g4;
import io.sentry.protocol.a;
import io.sentry.protocol.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MessageEntitiesItemsInnerUrl.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001dB5\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003J>\u0010\u0016\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;", "", TypedValues.Cycle.S_WAVE_OFFSET, "", g4.b.f83241e, "url", "", TypedValues.Attributes.S_TARGET, "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;)V", "getLength", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOffset", "getTarget", "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;)Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;", "equals", "", "other", "hashCode", "toString", "Target", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageEntitiesItemsInnerUrl {
    @h
    private final Integer length;
    @h
    private final Integer offset;
    @h
    private final Target target;
    @h
    private final String url;

    /* compiled from: MessageEntitiesItemsInnerUrl.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", a.f83616j, b.f83634d, "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Target {
        app(a.f83616j),
        browser(b.f83634d);
        
        @g
        private final String value;

        Target(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public MessageEntitiesItemsInnerUrl() {
        this(null, null, null, null, 15, null);
    }

    public MessageEntitiesItemsInnerUrl(@com.squareup.moshi.g(name = "offset") @h Integer num, @com.squareup.moshi.g(name = "length") @h Integer num2, @com.squareup.moshi.g(name = "url") @h String str, @com.squareup.moshi.g(name = "target") @h Target target) {
        this.offset = num;
        this.length = num2;
        this.url = str;
        this.target = target;
    }

    public static /* synthetic */ MessageEntitiesItemsInnerUrl copy$default(MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl, Integer num, Integer num2, String str, Target target, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = messageEntitiesItemsInnerUrl.offset;
        }
        if ((i4 & 2) != 0) {
            num2 = messageEntitiesItemsInnerUrl.length;
        }
        if ((i4 & 4) != 0) {
            str = messageEntitiesItemsInnerUrl.url;
        }
        if ((i4 & 8) != 0) {
            target = messageEntitiesItemsInnerUrl.target;
        }
        return messageEntitiesItemsInnerUrl.copy(num, num2, str, target);
    }

    @h
    public final Integer component1() {
        return this.offset;
    }

    @h
    public final Integer component2() {
        return this.length;
    }

    @h
    public final String component3() {
        return this.url;
    }

    @h
    public final Target component4() {
        return this.target;
    }

    @g
    public final MessageEntitiesItemsInnerUrl copy(@com.squareup.moshi.g(name = "offset") @h Integer num, @com.squareup.moshi.g(name = "length") @h Integer num2, @com.squareup.moshi.g(name = "url") @h String str, @com.squareup.moshi.g(name = "target") @h Target target) {
        return new MessageEntitiesItemsInnerUrl(num, num2, str, target);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageEntitiesItemsInnerUrl) {
            MessageEntitiesItemsInnerUrl messageEntitiesItemsInnerUrl = (MessageEntitiesItemsInnerUrl) obj;
            return Intrinsics.areEqual(this.offset, messageEntitiesItemsInnerUrl.offset) && Intrinsics.areEqual(this.length, messageEntitiesItemsInnerUrl.length) && Intrinsics.areEqual(this.url, messageEntitiesItemsInnerUrl.url) && this.target == messageEntitiesItemsInnerUrl.target;
        }
        return false;
    }

    @h
    public final Integer getLength() {
        return this.length;
    }

    @h
    public final Integer getOffset() {
        return this.offset;
    }

    @h
    public final Target getTarget() {
        return this.target;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        Integer num = this.offset;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.length;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.url;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Target target = this.target;
        return hashCode3 + (target != null ? target.hashCode() : 0);
    }

    @g
    public String toString() {
        return "MessageEntitiesItemsInnerUrl(offset=" + this.offset + ", length=" + this.length + ", url=" + this.url + ", target=" + this.target + ')';
    }

    public /* synthetic */ MessageEntitiesItemsInnerUrl(Integer num, Integer num2, String str, Target target, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : num, (i4 & 2) != 0 ? null : num2, (i4 & 4) != 0 ? null : str, (i4 & 8) != 0 ? null : target);
    }
}
