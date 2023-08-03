package com.im.freechat.data.openapigen.models;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.squareup.moshi.g;
import io.sentry.g4;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: MessageEntitiesItemsInnerColor.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;", "", TypedValues.Cycle.S_WAVE_OFFSET, "", g4.b.f83241e, "color", "", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getColor", "()Ljava/lang/String;", "getLength", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOffset", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageEntitiesItemsInnerColor {
    @h
    private final String color;
    @h
    private final Integer length;
    @h
    private final Integer offset;

    public MessageEntitiesItemsInnerColor() {
        this(null, null, null, 7, null);
    }

    public MessageEntitiesItemsInnerColor(@g(name = "offset") @h Integer num, @g(name = "length") @h Integer num2, @g(name = "color") @h String str) {
        this.offset = num;
        this.length = num2;
        this.color = str;
    }

    public static /* synthetic */ MessageEntitiesItemsInnerColor copy$default(MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor, Integer num, Integer num2, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = messageEntitiesItemsInnerColor.offset;
        }
        if ((i4 & 2) != 0) {
            num2 = messageEntitiesItemsInnerColor.length;
        }
        if ((i4 & 4) != 0) {
            str = messageEntitiesItemsInnerColor.color;
        }
        return messageEntitiesItemsInnerColor.copy(num, num2, str);
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
        return this.color;
    }

    @m8.g
    public final MessageEntitiesItemsInnerColor copy(@g(name = "offset") @h Integer num, @g(name = "length") @h Integer num2, @g(name = "color") @h String str) {
        return new MessageEntitiesItemsInnerColor(num, num2, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageEntitiesItemsInnerColor) {
            MessageEntitiesItemsInnerColor messageEntitiesItemsInnerColor = (MessageEntitiesItemsInnerColor) obj;
            return Intrinsics.areEqual(this.offset, messageEntitiesItemsInnerColor.offset) && Intrinsics.areEqual(this.length, messageEntitiesItemsInnerColor.length) && Intrinsics.areEqual(this.color, messageEntitiesItemsInnerColor.color);
        }
        return false;
    }

    @h
    public final String getColor() {
        return this.color;
    }

    @h
    public final Integer getLength() {
        return this.length;
    }

    @h
    public final Integer getOffset() {
        return this.offset;
    }

    public int hashCode() {
        Integer num = this.offset;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.length;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.color;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MessageEntitiesItemsInnerColor(offset=" + this.offset + ", length=" + this.length + ", color=" + this.color + ')';
    }

    public /* synthetic */ MessageEntitiesItemsInnerColor(Integer num, Integer num2, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : num, (i4 & 2) != 0 ? null : num2, (i4 & 4) != 0 ? null : str);
    }
}
