package com.qennnsad.aknkaksd.data.bean.room.eyecatching;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomMysterableMsg;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PinnedMessageBean.kt */
@d
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0002\u0010\nJ\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0004HÂ\u0003J\t\u0010\u0013\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0004HÂ\u0003J\t\u0010\u0015\u001a\u00020\u0004HÆ\u0003JE\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0004J\t\u0010\u001f\u001a\u00020\u0018HÖ\u0001J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"J\t\u0010$\u001a\u00020\u0004HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0018HÖ\u0001R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\f¨\u0006*"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", "Landroid/os/Parcelable;", "id", "", "type", "nickname", "content", "avatar", "expire_time", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getExpire_time", "getId", "getType", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", "", "other", "", "getAvatar", "getNickname", "hashCode", "isExpired", "serverTimeWithLocalDelay", "", "remainedMillis", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PinnedMessageBean extends RoomMysterableMsg implements Parcelable {
    @g
    public static final Parcelable.Creator<PinnedMessageBean> CREATOR = new Creator();
    @g
    private final String avatar;
    @g
    private final String content;
    @g
    private final String expire_time;
    @g
    private final String id;
    @g
    private final String nickname;
    @g
    private final String type;

    /* compiled from: PinnedMessageBean.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<PinnedMessageBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final PinnedMessageBean createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new PinnedMessageBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final PinnedMessageBean[] newArray(int i4) {
            return new PinnedMessageBean[i4];
        }
    }

    public PinnedMessageBean(@g String id, @g String type, @g String nickname, @g String content, @g String avatar, @g String expire_time) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(expire_time, "expire_time");
        this.id = id;
        this.type = type;
        this.nickname = nickname;
        this.content = content;
        this.avatar = avatar;
        this.expire_time = expire_time;
    }

    private final String component3() {
        return this.nickname;
    }

    private final String component5() {
        return this.avatar;
    }

    public static /* synthetic */ PinnedMessageBean copy$default(PinnedMessageBean pinnedMessageBean, String str, String str2, String str3, String str4, String str5, String str6, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = pinnedMessageBean.id;
        }
        if ((i4 & 2) != 0) {
            str2 = pinnedMessageBean.type;
        }
        String str7 = str2;
        if ((i4 & 4) != 0) {
            str3 = pinnedMessageBean.nickname;
        }
        String str8 = str3;
        if ((i4 & 8) != 0) {
            str4 = pinnedMessageBean.content;
        }
        String str9 = str4;
        if ((i4 & 16) != 0) {
            str5 = pinnedMessageBean.avatar;
        }
        String str10 = str5;
        if ((i4 & 32) != 0) {
            str6 = pinnedMessageBean.expire_time;
        }
        return pinnedMessageBean.copy(str, str7, str8, str9, str10, str6);
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.type;
    }

    @g
    public final String component4() {
        return this.content;
    }

    @g
    public final String component6() {
        return this.expire_time;
    }

    @g
    public final PinnedMessageBean copy(@g String id, @g String type, @g String nickname, @g String content, @g String avatar, @g String expire_time) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(expire_time, "expire_time");
        return new PinnedMessageBean(id, type, nickname, content, avatar, expire_time);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinnedMessageBean) {
            PinnedMessageBean pinnedMessageBean = (PinnedMessageBean) obj;
            return Intrinsics.areEqual(this.id, pinnedMessageBean.id) && Intrinsics.areEqual(this.type, pinnedMessageBean.type) && Intrinsics.areEqual(this.nickname, pinnedMessageBean.nickname) && Intrinsics.areEqual(this.content, pinnedMessageBean.content) && Intrinsics.areEqual(this.avatar, pinnedMessageBean.avatar) && Intrinsics.areEqual(this.expire_time, pinnedMessageBean.expire_time);
        }
        return false;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    @g
    public final String getContent() {
        return this.content;
    }

    @g
    public final String getExpire_time() {
        return this.expire_time;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((((((this.id.hashCode() * 31) + this.type.hashCode()) * 31) + this.nickname.hashCode()) * 31) + this.content.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.expire_time.hashCode();
    }

    public final boolean isExpired(long j4) {
        return remainedMillis(j4) <= 0;
    }

    public final long remainedMillis(long j4) {
        return (1000 * Long.parseLong(this.expire_time)) - j4;
    }

    @g
    public String toString() {
        return "PinnedMessageBean(id=" + this.id + ", type=" + this.type + ", nickname=" + this.nickname + ", content=" + this.content + ", avatar=" + this.avatar + ", expire_time=" + this.expire_time + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.type);
        out.writeString(this.nickname);
        out.writeString(this.content);
        out.writeString(this.avatar);
        out.writeString(this.expire_time);
    }
}
