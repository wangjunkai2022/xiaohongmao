package com.qennnsad.aknkaksd.data.bean.pk;

import com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: JoinPkConfirmMsg.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003JM\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkConfirmMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;", "type", "", "sender_room_id", "sender_user_id", "sender_client_name", "sender_avatar", "content", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getSender_avatar", "getSender_client_name", "getSender_room_id", "getSender_user_id", "getType", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class JoinPkConfirmMsg implements RoomPublicMsg {
    @h
    private final String content;
    @h
    private final String sender_avatar;
    @h
    private final String sender_client_name;
    @g
    private final String sender_room_id;
    @g
    private final String sender_user_id;
    @h
    private final String type;

    public JoinPkConfirmMsg(@h String str, @g String sender_room_id, @g String sender_user_id, @h String str2, @h String str3, @h String str4) {
        Intrinsics.checkNotNullParameter(sender_room_id, "sender_room_id");
        Intrinsics.checkNotNullParameter(sender_user_id, "sender_user_id");
        this.type = str;
        this.sender_room_id = sender_room_id;
        this.sender_user_id = sender_user_id;
        this.sender_client_name = str2;
        this.sender_avatar = str3;
        this.content = str4;
    }

    public static /* synthetic */ JoinPkConfirmMsg copy$default(JoinPkConfirmMsg joinPkConfirmMsg, String str, String str2, String str3, String str4, String str5, String str6, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = joinPkConfirmMsg.type;
        }
        if ((i4 & 2) != 0) {
            str2 = joinPkConfirmMsg.sender_room_id;
        }
        String str7 = str2;
        if ((i4 & 4) != 0) {
            str3 = joinPkConfirmMsg.sender_user_id;
        }
        String str8 = str3;
        if ((i4 & 8) != 0) {
            str4 = joinPkConfirmMsg.sender_client_name;
        }
        String str9 = str4;
        if ((i4 & 16) != 0) {
            str5 = joinPkConfirmMsg.sender_avatar;
        }
        String str10 = str5;
        if ((i4 & 32) != 0) {
            str6 = joinPkConfirmMsg.content;
        }
        return joinPkConfirmMsg.copy(str, str7, str8, str9, str10, str6);
    }

    @h
    public final String component1() {
        return this.type;
    }

    @g
    public final String component2() {
        return this.sender_room_id;
    }

    @g
    public final String component3() {
        return this.sender_user_id;
    }

    @h
    public final String component4() {
        return this.sender_client_name;
    }

    @h
    public final String component5() {
        return this.sender_avatar;
    }

    @h
    public final String component6() {
        return this.content;
    }

    @g
    public final JoinPkConfirmMsg copy(@h String str, @g String sender_room_id, @g String sender_user_id, @h String str2, @h String str3, @h String str4) {
        Intrinsics.checkNotNullParameter(sender_room_id, "sender_room_id");
        Intrinsics.checkNotNullParameter(sender_user_id, "sender_user_id");
        return new JoinPkConfirmMsg(str, sender_room_id, sender_user_id, str2, str3, str4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JoinPkConfirmMsg) {
            JoinPkConfirmMsg joinPkConfirmMsg = (JoinPkConfirmMsg) obj;
            return Intrinsics.areEqual(this.type, joinPkConfirmMsg.type) && Intrinsics.areEqual(this.sender_room_id, joinPkConfirmMsg.sender_room_id) && Intrinsics.areEqual(this.sender_user_id, joinPkConfirmMsg.sender_user_id) && Intrinsics.areEqual(this.sender_client_name, joinPkConfirmMsg.sender_client_name) && Intrinsics.areEqual(this.sender_avatar, joinPkConfirmMsg.sender_avatar) && Intrinsics.areEqual(this.content, joinPkConfirmMsg.content);
        }
        return false;
    }

    @h
    public final String getContent() {
        return this.content;
    }

    @h
    public final String getSender_avatar() {
        return this.sender_avatar;
    }

    @h
    public final String getSender_client_name() {
        return this.sender_client_name;
    }

    @g
    public final String getSender_room_id() {
        return this.sender_room_id;
    }

    @g
    public final String getSender_user_id() {
        return this.sender_user_id;
    }

    @h
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int hashCode = (((((str == null ? 0 : str.hashCode()) * 31) + this.sender_room_id.hashCode()) * 31) + this.sender_user_id.hashCode()) * 31;
        String str2 = this.sender_client_name;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.sender_avatar;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.content;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    @g
    public String toString() {
        return "JoinPkConfirmMsg(type=" + this.type + ", sender_room_id=" + this.sender_room_id + ", sender_user_id=" + this.sender_user_id + ", sender_client_name=" + this.sender_client_name + ", sender_avatar=" + this.sender_avatar + ", content=" + this.content + ')';
    }
}
