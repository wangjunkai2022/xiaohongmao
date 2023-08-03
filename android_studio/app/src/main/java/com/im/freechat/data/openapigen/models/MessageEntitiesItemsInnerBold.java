package com.im.freechat.data.openapigen.models;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.squareup.moshi.g;
import io.sentry.g4;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: MessageEntitiesItemsInnerBold.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J&\u0010\f\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\t\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;", "", TypedValues.Cycle.S_WAVE_OFFSET, "", g4.b.f83241e, "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "getLength", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOffset", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageEntitiesItemsInnerBold {
    @h
    private final Integer length;
    @h
    private final Integer offset;

    public MessageEntitiesItemsInnerBold() {
        this(null, null, 3, null);
    }

    public MessageEntitiesItemsInnerBold(@g(name = "offset") @h Integer num, @g(name = "length") @h Integer num2) {
        this.offset = num;
        this.length = num2;
    }

    public static /* synthetic */ MessageEntitiesItemsInnerBold copy$default(MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold, Integer num, Integer num2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = messageEntitiesItemsInnerBold.offset;
        }
        if ((i4 & 2) != 0) {
            num2 = messageEntitiesItemsInnerBold.length;
        }
        return messageEntitiesItemsInnerBold.copy(num, num2);
    }

    @h
    public final Integer component1() {
        return this.offset;
    }

    @h
    public final Integer component2() {
        return this.length;
    }

    @m8.g
    public final MessageEntitiesItemsInnerBold copy(@g(name = "offset") @h Integer num, @g(name = "length") @h Integer num2) {
        return new MessageEntitiesItemsInnerBold(num, num2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageEntitiesItemsInnerBold) {
            MessageEntitiesItemsInnerBold messageEntitiesItemsInnerBold = (MessageEntitiesItemsInnerBold) obj;
            return Intrinsics.areEqual(this.offset, messageEntitiesItemsInnerBold.offset) && Intrinsics.areEqual(this.length, messageEntitiesItemsInnerBold.length);
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

    public int hashCode() {
        Integer num = this.offset;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.length;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MessageEntitiesItemsInnerBold(offset=" + this.offset + ", length=" + this.length + ')';
    }

    public /* synthetic */ MessageEntitiesItemsInnerBold(Integer num, Integer num2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : num, (i4 & 2) != 0 ? null : num2);
    }
}
