package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.w;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RankItem.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b.\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\t\u00101\u001a\u00020\u0005HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J¨\u0001\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u00108J\u0013\u00109\u001a\u00020\f2\b\u0010:\u001a\u0004\u0018\u00010;HÖ\u0003J\b\u0010<\u001a\u00020;H\u0016J\t\u0010=\u001a\u00020\u0003HÖ\u0001J\u0006\u0010>\u001a\u00020\fJ\t\u0010?\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0019\u0010\u0017R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u000b\u0010\u001bR\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0016\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010$R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b%\u0010\u0017R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0015R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b(\u0010\u0017¨\u0006@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "Lcom/qennnsad/aknkaksd/data/bean/Mysterable;", "rankPosition", "", "userId", "", "nickname", "avatar", "sex", "levelId", "peerageId", "isFollowed", "", "coin", "wins", "defeats", "rating", "game", "mystery", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getCoin", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDefeats", "getGame", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLevelId", "getMystery", "()I", "getNickname", "getPeerageId", "getRankPosition", "setRankPosition", "(Ljava/lang/Integer;)V", "getRating", "getSex", "getUserId", "getWins", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;I)Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "equals", "other", "", "getMysteryUid", "hashCode", "isMystery", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RankItem implements Mysterable {
    @g
    private final String avatar;
    @SerializedName(alternate = {"spendcoin", "chips"}, value = "coin")
    @h
    private final Integer coin;
    @h
    private final Integer defeats;
    @h
    private final String game;
    @SerializedName("hasfollow")
    @h
    private final Boolean isFollowed;
    @SerializedName(alternate = {"level"}, value = "levelid")
    @g
    private final String levelId;
    @SerializedName("is_mystery")
    private final int mystery;
    @SerializedName(alternate = {w.b.f83891c, "name"}, value = "nickname")
    @g
    private final String nickname;
    @SerializedName("peerage_id")
    @g
    private final String peerageId;
    @h
    private Integer rankPosition;
    @h
    private final Integer rating;
    private final int sex;
    @SerializedName(alternate = {"uid", "userid", "id"}, value = "user_id")
    @g
    private final String userId;
    @h
    private final Integer wins;

    public RankItem(@h Integer num, @g String userId, @g String nickname, @g String avatar, int i4, @g String levelId, @g String peerageId, @h Boolean bool, @h Integer num2, @h Integer num3, @h Integer num4, @h Integer num5, @h String str, int i10) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(levelId, "levelId");
        Intrinsics.checkNotNullParameter(peerageId, "peerageId");
        this.rankPosition = num;
        this.userId = userId;
        this.nickname = nickname;
        this.avatar = avatar;
        this.sex = i4;
        this.levelId = levelId;
        this.peerageId = peerageId;
        this.isFollowed = bool;
        this.coin = num2;
        this.wins = num3;
        this.defeats = num4;
        this.rating = num5;
        this.game = str;
        this.mystery = i10;
    }

    @h
    public final Integer component1() {
        return this.rankPosition;
    }

    @h
    public final Integer component10() {
        return this.wins;
    }

    @h
    public final Integer component11() {
        return this.defeats;
    }

    @h
    public final Integer component12() {
        return this.rating;
    }

    @h
    public final String component13() {
        return this.game;
    }

    public final int component14() {
        return this.mystery;
    }

    @g
    public final String component2() {
        return this.userId;
    }

    @g
    public final String component3() {
        return this.nickname;
    }

    @g
    public final String component4() {
        return this.avatar;
    }

    public final int component5() {
        return this.sex;
    }

    @g
    public final String component6() {
        return this.levelId;
    }

    @g
    public final String component7() {
        return this.peerageId;
    }

    @h
    public final Boolean component8() {
        return this.isFollowed;
    }

    @h
    public final Integer component9() {
        return this.coin;
    }

    @g
    public final RankItem copy(@h Integer num, @g String userId, @g String nickname, @g String avatar, int i4, @g String levelId, @g String peerageId, @h Boolean bool, @h Integer num2, @h Integer num3, @h Integer num4, @h Integer num5, @h String str, int i10) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(levelId, "levelId");
        Intrinsics.checkNotNullParameter(peerageId, "peerageId");
        return new RankItem(num, userId, nickname, avatar, i4, levelId, peerageId, bool, num2, num3, num4, num5, str, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RankItem) {
            RankItem rankItem = (RankItem) obj;
            return Intrinsics.areEqual(this.rankPosition, rankItem.rankPosition) && Intrinsics.areEqual(this.userId, rankItem.userId) && Intrinsics.areEqual(this.nickname, rankItem.nickname) && Intrinsics.areEqual(this.avatar, rankItem.avatar) && this.sex == rankItem.sex && Intrinsics.areEqual(this.levelId, rankItem.levelId) && Intrinsics.areEqual(this.peerageId, rankItem.peerageId) && Intrinsics.areEqual(this.isFollowed, rankItem.isFollowed) && Intrinsics.areEqual(this.coin, rankItem.coin) && Intrinsics.areEqual(this.wins, rankItem.wins) && Intrinsics.areEqual(this.defeats, rankItem.defeats) && Intrinsics.areEqual(this.rating, rankItem.rating) && Intrinsics.areEqual(this.game, rankItem.game) && this.mystery == rankItem.mystery;
        }
        return false;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final Integer getCoin() {
        return this.coin;
    }

    @h
    public final Integer getDefeats() {
        return this.defeats;
    }

    @h
    public final String getGame() {
        return this.game;
    }

    @g
    public final String getLevelId() {
        return this.levelId;
    }

    public final int getMystery() {
        return this.mystery;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.Mysterable
    @g
    public Object getMysteryUid() {
        return this.userId;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    @g
    public final String getPeerageId() {
        return this.peerageId;
    }

    @h
    public final Integer getRankPosition() {
        return this.rankPosition;
    }

    @h
    public final Integer getRating() {
        return this.rating;
    }

    public final int getSex() {
        return this.sex;
    }

    @g
    public final String getUserId() {
        return this.userId;
    }

    @h
    public final Integer getWins() {
        return this.wins;
    }

    public int hashCode() {
        Integer num = this.rankPosition;
        int hashCode = (((((((((((((num == null ? 0 : num.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.nickname.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.sex) * 31) + this.levelId.hashCode()) * 31) + this.peerageId.hashCode()) * 31;
        Boolean bool = this.isFollowed;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num2 = this.coin;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.wins;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.defeats;
        int hashCode5 = (hashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.rating;
        int hashCode6 = (hashCode5 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str = this.game;
        return ((hashCode6 + (str != null ? str.hashCode() : 0)) * 31) + this.mystery;
    }

    @h
    public final Boolean isFollowed() {
        return this.isFollowed;
    }

    public final boolean isMystery() {
        return this.mystery == 1;
    }

    public final void setRankPosition(@h Integer num) {
        this.rankPosition = num;
    }

    @g
    public String toString() {
        return "RankItem(rankPosition=" + this.rankPosition + ", userId=" + this.userId + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", sex=" + this.sex + ", levelId=" + this.levelId + ", peerageId=" + this.peerageId + ", isFollowed=" + this.isFollowed + ", coin=" + this.coin + ", wins=" + this.wins + ", defeats=" + this.defeats + ", rating=" + this.rating + ", game=" + this.game + ", mystery=" + this.mystery + ')';
    }
}
