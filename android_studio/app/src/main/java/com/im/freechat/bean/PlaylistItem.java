package com.im.freechat.bean;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: PlaylistItem.kt */
@d
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/bean/PlaylistItem;", "Landroid/os/Parcelable;", "sender", "", "id", b.f84734a, "", "url", "desc", j.f47980a, "", "isVideo", "", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V", "getChatId", "()I", "getDesc", "()Ljava/lang/String;", "getId", "()Z", "getSender", "getTime", "()J", "getUrl", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PlaylistItem implements Parcelable {
    @g
    public static final Parcelable.Creator<PlaylistItem> CREATOR = new a();
    private final int chatId;
    @g
    private final String desc;
    @g
    private final String id;
    private final boolean isVideo;
    @g
    private final String sender;
    private final long time;
    @g
    private final String url;

    /* compiled from: PlaylistItem.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<PlaylistItem> {
        @Override // android.os.Parcelable.Creator
        @g
        /* renamed from: a */
        public final PlaylistItem createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new PlaylistItem(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        @g
        /* renamed from: b */
        public final PlaylistItem[] newArray(int i4) {
            return new PlaylistItem[i4];
        }
    }

    public PlaylistItem(@g String sender, @g String id, int i4, @g String url, @g String desc, long j4, boolean z9) {
        Intrinsics.checkNotNullParameter(sender, "sender");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(desc, "desc");
        this.sender = sender;
        this.id = id;
        this.chatId = i4;
        this.url = url;
        this.desc = desc;
        this.time = j4;
        this.isVideo = z9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @g
    public final String getDesc() {
        return this.desc;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @g
    public final String getSender() {
        return this.sender;
    }

    public final long getTime() {
        return this.time;
    }

    @g
    public final String getUrl() {
        return this.url;
    }

    public final boolean isVideo() {
        return this.isVideo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.sender);
        out.writeString(this.id);
        out.writeInt(this.chatId);
        out.writeString(this.url);
        out.writeString(this.desc);
        out.writeLong(this.time);
        out.writeInt(this.isVideo ? 1 : 0);
    }
}
