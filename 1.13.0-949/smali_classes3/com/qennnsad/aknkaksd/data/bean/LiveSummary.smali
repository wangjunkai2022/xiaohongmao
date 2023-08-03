.class public Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;
.super Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;
.source "LiveSummary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected avatar:Ljava/lang/String;

.field protected city:Ljava/lang/String;

.field protected curroomnum:Ljava/lang/String;

.field protected gameType:I

.field protected id:Ljava/lang/String;

.field protected is_attention:I

.field protected lastWeekRank:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_week_rank"
    .end annotation
.end field

.field protected limit:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit"
    .end annotation
.end field

.field protected nickname:Ljava/lang/String;

.field protected online:I

.field protected pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

.field protected snap:Ljava/lang/String;

.field protected toyStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toy_status"
    .end annotation
.end field

.field protected video_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    .line 22
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    .line 4
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->online:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->avatar:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->city:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->is_attention:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->gameType:I

    .line 14
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->limit:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->lastWeekRank:I

    .line 18
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 5
    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCurroomnum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    return-object v0
.end method

.method public getGameType()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->gameType:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWeekRank()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->lastWeekRank:I

    return v0
.end method

.method public getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->limit:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->online:I

    return v0
.end method

.method public getPk()Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    return-object v0
.end method

.method public getSnap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    return-object v0
.end method

.method public getToyStatus()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    return v0
.end method

.method public getVideo_status()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->city:Ljava/lang/String;

    return-void
.end method

.method public setCurroomnum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    return-void
.end method

.method public setGameType(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->gameType:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    return-void
.end method

.method public setLastWeekRank(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->lastWeekRank:I

    return-void
.end method

.method public setLimit(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->limit:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOnline(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->online:I

    return-void
.end method

.method public setPk(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    return-void
.end method

.method public setSnap(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    return-void
.end method

.method public setToyStatus(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    return-void
.end method

.method public setVideo_status(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveSummary{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", curroomnum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", online="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->online:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    .line 2
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;->getPrintStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", avatar=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", snap=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", city=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->city:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", nickname=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_attention="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->is_attention:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->gameType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->limit:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toy_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastWeekRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->lastWeekRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMystery= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->curroomnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->online:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->snap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->is_attention:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->gameType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->limit:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->toyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->video_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->lastWeekRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->pk:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
