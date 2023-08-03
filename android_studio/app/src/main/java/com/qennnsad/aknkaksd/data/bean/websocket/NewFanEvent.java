package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.websocket.b;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NewFanEvent.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u0000 %2\u00020\u0001:\u0001%BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003JY\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0007HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006&"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", "type", "", "roomId", "userId", "fanLevel", "", "userName", "avatar", "message", "isNew", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getFanLevel", "()I", "getMessage", "getRoomId", "getType", "getUserId", "getUserName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "Companion", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class NewFanEvent extends RoomMysterableMsg {
    @g
    public static final Companion Companion = new Companion(null);
    @SerializedName("user_avatar")
    @g
    private final String avatar;
    @SerializedName("fan_level")
    private final int fanLevel;
    @SerializedName("is_new")
    private final int isNew;
    @g
    private final String message;
    @SerializedName(f.f54200b)
    @g
    private final String roomId;
    @g
    private final String type;
    @SerializedName("user_id")
    @g
    private final String userId;
    @SerializedName("user_name")
    @g
    private final String userName;

    /* compiled from: NewFanEvent.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent$Companion;", "", "()V", "createMock", "Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final NewFanEvent createMock() {
            return new NewFanEvent(b.f47804c0, b.f47804c0, b.f47804c0, 1, "User", "User", "用户 USER 进入主播的粉丝团！", 1);
        }
    }

    public NewFanEvent(@g String type, @g String roomId, @g String userId, int i4, @g String userName, @g String avatar, @g String message, int i10) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(message, "message");
        this.type = type;
        this.roomId = roomId;
        this.userId = userId;
        this.fanLevel = i4;
        this.userName = userName;
        this.avatar = avatar;
        this.message = message;
        this.isNew = i10;
    }

    @g
    public final String component1() {
        return this.type;
    }

    @g
    public final String component2() {
        return this.roomId;
    }

    @g
    public final String component3() {
        return this.userId;
    }

    public final int component4() {
        return this.fanLevel;
    }

    @g
    public final String component5() {
        return this.userName;
    }

    @g
    public final String component6() {
        return this.avatar;
    }

    @g
    public final String component7() {
        return this.message;
    }

    public final int component8() {
        return this.isNew;
    }

    @g
    public final NewFanEvent copy(@g String type, @g String roomId, @g String userId, int i4, @g String userName, @g String avatar, @g String message, int i10) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(userName, "userName");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(message, "message");
        return new NewFanEvent(type, roomId, userId, i4, userName, avatar, message, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewFanEvent) {
            NewFanEvent newFanEvent = (NewFanEvent) obj;
            return Intrinsics.areEqual(this.type, newFanEvent.type) && Intrinsics.areEqual(this.roomId, newFanEvent.roomId) && Intrinsics.areEqual(this.userId, newFanEvent.userId) && this.fanLevel == newFanEvent.fanLevel && Intrinsics.areEqual(this.userName, newFanEvent.userName) && Intrinsics.areEqual(this.avatar, newFanEvent.avatar) && Intrinsics.areEqual(this.message, newFanEvent.message) && this.isNew == newFanEvent.isNew;
        }
        return false;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getFanLevel() {
        return this.fanLevel;
    }

    @g
    public final String getMessage() {
        return this.message;
    }

    @g
    public final String getRoomId() {
        return this.roomId;
    }

    @g
    public final String getType() {
        return this.type;
    }

    @g
    public final String getUserId() {
        return this.userId;
    }

    @g
    public final String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        return (((((((((((((this.type.hashCode() * 31) + this.roomId.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.fanLevel) * 31) + this.userName.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.message.hashCode()) * 31) + this.isNew;
    }

    public final int isNew() {
        return this.isNew;
    }

    @g
    public String toString() {
        return "NewFanEvent(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", fanLevel=" + this.fanLevel + ", userName=" + this.userName + ", avatar=" + this.avatar + ", message=" + this.message + ", isNew=" + this.isNew + ')';
    }
}
