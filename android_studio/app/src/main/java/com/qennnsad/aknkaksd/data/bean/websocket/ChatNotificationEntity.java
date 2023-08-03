package com.qennnsad.aknkaksd.data.bean.websocket;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import io.sentry.g4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatNotification.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\"\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010*\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u0019Jt\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020\u000f2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u00020\bHÖ\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0012¨\u00061"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;", "", TypedValues.Cycle.S_WAVE_OFFSET, "", g4.b.f83241e, "type", "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;", "color", "", "url", TypedValues.Attributes.S_TARGET, "jump", "Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;", "jumpId", "jumpUserIsMystery", "", "(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getColor", "()Ljava/lang/String;", "getJump", "()Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;", "getJumpId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getJumpUserIsMystery", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLength", "()I", "getOffset", "getTarget", "getType", "()Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;", "equals", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatNotificationEntity {
    @h
    private final String color;
    @h
    private final JumpType jump;
    @SerializedName("id")
    @h
    private final Integer jumpId;
    @h
    private final Boolean jumpUserIsMystery;
    private final int length;
    private final int offset;
    @h
    private final String target;
    @g
    private final ChatEntityType type;
    @h
    private final String url;

    public ChatNotificationEntity(int i4, int i10, @g ChatEntityType type, @h String str, @h String str2, @h String str3, @h JumpType jumpType, @h Integer num, @h Boolean bool) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.offset = i4;
        this.length = i10;
        this.type = type;
        this.color = str;
        this.url = str2;
        this.target = str3;
        this.jump = jumpType;
        this.jumpId = num;
        this.jumpUserIsMystery = bool;
    }

    public final int component1() {
        return this.offset;
    }

    public final int component2() {
        return this.length;
    }

    @g
    public final ChatEntityType component3() {
        return this.type;
    }

    @h
    public final String component4() {
        return this.color;
    }

    @h
    public final String component5() {
        return this.url;
    }

    @h
    public final String component6() {
        return this.target;
    }

    @h
    public final JumpType component7() {
        return this.jump;
    }

    @h
    public final Integer component8() {
        return this.jumpId;
    }

    @h
    public final Boolean component9() {
        return this.jumpUserIsMystery;
    }

    @g
    public final ChatNotificationEntity copy(int i4, int i10, @g ChatEntityType type, @h String str, @h String str2, @h String str3, @h JumpType jumpType, @h Integer num, @h Boolean bool) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new ChatNotificationEntity(i4, i10, type, str, str2, str3, jumpType, num, bool);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatNotificationEntity) {
            ChatNotificationEntity chatNotificationEntity = (ChatNotificationEntity) obj;
            return this.offset == chatNotificationEntity.offset && this.length == chatNotificationEntity.length && this.type == chatNotificationEntity.type && Intrinsics.areEqual(this.color, chatNotificationEntity.color) && Intrinsics.areEqual(this.url, chatNotificationEntity.url) && Intrinsics.areEqual(this.target, chatNotificationEntity.target) && this.jump == chatNotificationEntity.jump && Intrinsics.areEqual(this.jumpId, chatNotificationEntity.jumpId) && Intrinsics.areEqual(this.jumpUserIsMystery, chatNotificationEntity.jumpUserIsMystery);
        }
        return false;
    }

    @h
    public final String getColor() {
        return this.color;
    }

    @h
    public final JumpType getJump() {
        return this.jump;
    }

    @h
    public final Integer getJumpId() {
        return this.jumpId;
    }

    @h
    public final Boolean getJumpUserIsMystery() {
        return this.jumpUserIsMystery;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getOffset() {
        return this.offset;
    }

    @h
    public final String getTarget() {
        return this.target;
    }

    @g
    public final ChatEntityType getType() {
        return this.type;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((this.offset * 31) + this.length) * 31) + this.type.hashCode()) * 31;
        String str = this.color;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.url;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.target;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        JumpType jumpType = this.jump;
        int hashCode5 = (hashCode4 + (jumpType == null ? 0 : jumpType.hashCode())) * 31;
        Integer num = this.jumpId;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.jumpUserIsMystery;
        return hashCode6 + (bool != null ? bool.hashCode() : 0);
    }

    @g
    public String toString() {
        return "ChatNotificationEntity(offset=" + this.offset + ", length=" + this.length + ", type=" + this.type + ", color=" + this.color + ", url=" + this.url + ", target=" + this.target + ", jump=" + this.jump + ", jumpId=" + this.jumpId + ", jumpUserIsMystery=" + this.jumpUserIsMystery + ')';
    }
}
