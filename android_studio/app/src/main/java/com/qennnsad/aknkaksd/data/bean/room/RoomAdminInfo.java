package com.qennnsad.aknkaksd.data.bean.room;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RoomAdminInfo.kt */
@d
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\nHÆ\u0003JS\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0013\u0010\u001f\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001eHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0019\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001eHÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006)"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "Landroid/os/Parcelable;", "id", "", "intro", "nickname", "avatar", "sex", "level", "showAdmin", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getAvatar", "()Ljava/lang/String;", "getId", "getIntro", "getLevel", "getNickname", "getSex", "getShowAdmin", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RoomAdminInfo implements Parcelable {
    @g
    public static final Parcelable.Creator<RoomAdminInfo> CREATOR = new Creator();
    @h
    private final String avatar;
    @g
    private final String id;
    @g
    private final String intro;
    @SerializedName("emceelevel")
    @g
    private final String level;
    @h
    private final String nickname;
    @g
    private final String sex;
    @SerializedName("showadmin")
    private final boolean showAdmin;

    /* compiled from: RoomAdminInfo.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<RoomAdminInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final RoomAdminInfo createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new RoomAdminInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final RoomAdminInfo[] newArray(int i4) {
            return new RoomAdminInfo[i4];
        }
    }

    public RoomAdminInfo(@g String id, @g String intro, @h String str, @h String str2, @g String sex, @g String level, boolean z9) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(intro, "intro");
        Intrinsics.checkNotNullParameter(sex, "sex");
        Intrinsics.checkNotNullParameter(level, "level");
        this.id = id;
        this.intro = intro;
        this.nickname = str;
        this.avatar = str2;
        this.sex = sex;
        this.level = level;
        this.showAdmin = z9;
    }

    public static /* synthetic */ RoomAdminInfo copy$default(RoomAdminInfo roomAdminInfo, String str, String str2, String str3, String str4, String str5, String str6, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = roomAdminInfo.id;
        }
        if ((i4 & 2) != 0) {
            str2 = roomAdminInfo.intro;
        }
        String str7 = str2;
        if ((i4 & 4) != 0) {
            str3 = roomAdminInfo.nickname;
        }
        String str8 = str3;
        if ((i4 & 8) != 0) {
            str4 = roomAdminInfo.avatar;
        }
        String str9 = str4;
        if ((i4 & 16) != 0) {
            str5 = roomAdminInfo.sex;
        }
        String str10 = str5;
        if ((i4 & 32) != 0) {
            str6 = roomAdminInfo.level;
        }
        String str11 = str6;
        if ((i4 & 64) != 0) {
            z9 = roomAdminInfo.showAdmin;
        }
        return roomAdminInfo.copy(str, str7, str8, str9, str10, str11, z9);
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.intro;
    }

    @h
    public final String component3() {
        return this.nickname;
    }

    @h
    public final String component4() {
        return this.avatar;
    }

    @g
    public final String component5() {
        return this.sex;
    }

    @g
    public final String component6() {
        return this.level;
    }

    public final boolean component7() {
        return this.showAdmin;
    }

    @g
    public final RoomAdminInfo copy(@g String id, @g String intro, @h String str, @h String str2, @g String sex, @g String level, boolean z9) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(intro, "intro");
        Intrinsics.checkNotNullParameter(sex, "sex");
        Intrinsics.checkNotNullParameter(level, "level");
        return new RoomAdminInfo(id, intro, str, str2, sex, level, z9);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RoomAdminInfo) {
            RoomAdminInfo roomAdminInfo = (RoomAdminInfo) obj;
            return Intrinsics.areEqual(this.id, roomAdminInfo.id) && Intrinsics.areEqual(this.intro, roomAdminInfo.intro) && Intrinsics.areEqual(this.nickname, roomAdminInfo.nickname) && Intrinsics.areEqual(this.avatar, roomAdminInfo.avatar) && Intrinsics.areEqual(this.sex, roomAdminInfo.sex) && Intrinsics.areEqual(this.level, roomAdminInfo.level) && this.showAdmin == roomAdminInfo.showAdmin;
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @g
    public final String getIntro() {
        return this.intro;
    }

    @g
    public final String getLevel() {
        return this.level;
    }

    @h
    public final String getNickname() {
        return this.nickname;
    }

    @g
    public final String getSex() {
        return this.sex;
    }

    public final boolean getShowAdmin() {
        return this.showAdmin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.id.hashCode() * 31) + this.intro.hashCode()) * 31;
        String str = this.nickname;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatar;
        int hashCode3 = (((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.sex.hashCode()) * 31) + this.level.hashCode()) * 31;
        boolean z9 = this.showAdmin;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode3 + i4;
    }

    @g
    public String toString() {
        return "RoomAdminInfo(id=" + this.id + ", intro=" + this.intro + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", sex=" + this.sex + ", level=" + this.level + ", showAdmin=" + this.showAdmin + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.intro);
        out.writeString(this.nickname);
        out.writeString(this.avatar);
        out.writeString(this.sex);
        out.writeString(this.level);
        out.writeInt(this.showAdmin ? 1 : 0);
    }
}
