package com.im.freechat.shared.entities.message;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.sentry.g4;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Message.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0002 !B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\nHÆ\u0003J?\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/im/freechat/shared/entities/message/MessageStyle;", "", TypedValues.Cycle.S_WAVE_OFFSET, "", g4.b.f83241e, "type", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;", "url", "", "urlTarget", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", "(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V", "getLength", "()I", "getOffset", "getType", "()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;", "getUrl", "()Ljava/lang/String;", "getUrlTarget", "()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "StyleType", "StyleUrlTarget", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageStyle {
    private final int length;
    private final int offset;
    @g
    private final StyleType type;
    @h
    private final String url;
    @h
    private final StyleUrlTarget urlTarget;

    /* compiled from: Message.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;", "", "(Ljava/lang/String;I)V", "BOLD", "URL", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum StyleType {
        BOLD,
        URL
    }

    /* compiled from: Message.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", "", "(Ljava/lang/String;I)V", "APP", "BROWSER", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum StyleUrlTarget {
        APP,
        BROWSER
    }

    public MessageStyle(int i4, int i10, @g StyleType type, @h String str, @h StyleUrlTarget styleUrlTarget) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.offset = i4;
        this.length = i10;
        this.type = type;
        this.url = str;
        this.urlTarget = styleUrlTarget;
    }

    public static /* synthetic */ MessageStyle copy$default(MessageStyle messageStyle, int i4, int i10, StyleType styleType, String str, StyleUrlTarget styleUrlTarget, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = messageStyle.offset;
        }
        if ((i11 & 2) != 0) {
            i10 = messageStyle.length;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            styleType = messageStyle.type;
        }
        StyleType styleType2 = styleType;
        if ((i11 & 8) != 0) {
            str = messageStyle.url;
        }
        String str2 = str;
        if ((i11 & 16) != 0) {
            styleUrlTarget = messageStyle.urlTarget;
        }
        return messageStyle.copy(i4, i12, styleType2, str2, styleUrlTarget);
    }

    public final int component1() {
        return this.offset;
    }

    public final int component2() {
        return this.length;
    }

    @g
    public final StyleType component3() {
        return this.type;
    }

    @h
    public final String component4() {
        return this.url;
    }

    @h
    public final StyleUrlTarget component5() {
        return this.urlTarget;
    }

    @g
    public final MessageStyle copy(int i4, int i10, @g StyleType type, @h String str, @h StyleUrlTarget styleUrlTarget) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MessageStyle(i4, i10, type, str, styleUrlTarget);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageStyle) {
            MessageStyle messageStyle = (MessageStyle) obj;
            return this.offset == messageStyle.offset && this.length == messageStyle.length && this.type == messageStyle.type && Intrinsics.areEqual(this.url, messageStyle.url) && this.urlTarget == messageStyle.urlTarget;
        }
        return false;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getOffset() {
        return this.offset;
    }

    @g
    public final StyleType getType() {
        return this.type;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    @h
    public final StyleUrlTarget getUrlTarget() {
        return this.urlTarget;
    }

    public int hashCode() {
        int hashCode = ((((this.offset * 31) + this.length) * 31) + this.type.hashCode()) * 31;
        String str = this.url;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        StyleUrlTarget styleUrlTarget = this.urlTarget;
        return hashCode2 + (styleUrlTarget != null ? styleUrlTarget.hashCode() : 0);
    }

    @g
    public String toString() {
        return "MessageStyle(offset=" + this.offset + ", length=" + this.length + ", type=" + this.type + ", url=" + this.url + ", urlTarget=" + this.urlTarget + ')';
    }

    public /* synthetic */ MessageStyle(int i4, int i10, StyleType styleType, String str, StyleUrlTarget styleUrlTarget, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, styleType, (i11 & 8) != 0 ? null : str, (i11 & 16) != 0 ? null : styleUrlTarget);
    }
}
