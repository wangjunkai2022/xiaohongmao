.class public Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;
.super Ljava/lang/Object;
.source "PrivateLimitBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnchorBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:I

.field private approveid:Ljava/lang/String;

.field private approvetype:I

.field private avatar:Ljava/lang/String;

.field private avatartime:Ljava/lang/String;

.field private beanorignal:I

.field private birthday:Ljava/lang/String;

.field private broadcasting:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private copyrightX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "copyright"
    .end annotation
.end field

.field private curroomnum:Ljava/lang/String;

.field private emceelevel:Ljava/lang/String;

.field private emotion:Ljava/lang/String;

.field private followees_cnt:Ljava/lang/String;

.field private followers_cnt:Ljava/lang/String;

.field private idX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private intro:Ljava/lang/String;

.field private isHit:I

.field private is_attention:I

.field private is_legend:Z

.field private lob:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lobNo"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private professional:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private realtimeSubtitlesOn:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realtime_subtitles_on"
    .end annotation
.end field

.field private sex:I

.field private snap:Ljava/lang/String;

.field private spendcoin:I

.field private toy_status:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_legend:Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->idX:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->sex:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->broadcasting:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->intro:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->nickname:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->city:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->snap:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->curroomnum:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->vip:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatartime:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->birthday:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->professional:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emotion:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->province:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approveid:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->toy_status:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatar:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followers_cnt:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followees_cnt:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_attention:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->isHit:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emceelevel:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->age:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->beanorignal:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->spendcoin:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approvetype:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->copyrightX:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_legend:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->realtimeSubtitlesOn:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->lob:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->age:I

    return v0
.end method

.method public getApproveid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approveid:Ljava/lang/String;

    return-object v0
.end method

.method public getApprovetype()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approvetype:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatartime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatartime:Ljava/lang/String;

    return-object v0
.end method

.method public getBeanorignal()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->beanorignal:I

    return v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcasting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->broadcasting:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->copyrightX:Ljava/lang/String;

    return-object v0
.end method

.method public getCurroomnum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->curroomnum:Ljava/lang/String;

    return-object v0
.end method

.method public getEmceelevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emceelevel:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowees_cnt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followees_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowers_cnt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followers_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getIdX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->idX:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHit()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->isHit:I

    return v0
.end method

.method public getIs_attention()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_attention:I

    return v0
.end method

.method public getLob()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->lob:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getProfessional()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->professional:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRealtimeSubtitlesOn()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->realtimeSubtitlesOn:I

    return v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->sex:I

    return v0
.end method

.method public getSnap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->snap:Ljava/lang/String;

    return-object v0
.end method

.method public getSpendcoin()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->spendcoin:I

    return v0
.end method

.method public getToy_status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->toy_status:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_legend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_legend:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->age:I

    return-void
.end method

.method public setApproveid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approveid:Ljava/lang/String;

    return-void
.end method

.method public setApprovetype(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approvetype:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setAvatartime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatartime:Ljava/lang/String;

    return-void
.end method

.method public setBeanorignal(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->beanorignal:I

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setBroadcasting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->broadcasting:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setCopyrightX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->copyrightX:Ljava/lang/String;

    return-void
.end method

.method public setCurroomnum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->curroomnum:Ljava/lang/String;

    return-void
.end method

.method public setEmceelevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emceelevel:Ljava/lang/String;

    return-void
.end method

.method public setEmotion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emotion:Ljava/lang/String;

    return-void
.end method

.method public setFollowees_cnt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followees_cnt:Ljava/lang/String;

    return-void
.end method

.method public setFollowers_cnt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followers_cnt:Ljava/lang/String;

    return-void
.end method

.method public setIdX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->idX:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setIsHit(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->isHit:I

    return-void
.end method

.method public setIs_attention(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_attention:I

    return-void
.end method

.method public setIs_legend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_legend:Z

    return-void
.end method

.method public setLob(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->lob:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setProfessional(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->professional:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->province:Ljava/lang/String;

    return-void
.end method

.method public setRealtimeSubtitlesOn(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->realtimeSubtitlesOn:I

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->sex:I

    return-void
.end method

.method public setSnap(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->snap:Ljava/lang/String;

    return-void
.end method

.method public setSpendcoin(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->spendcoin:I

    return-void
.end method

.method public setToy_status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->toy_status:Ljava/lang/String;

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->vip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorBean{idX=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->idX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->sex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", broadcasting=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->broadcasting:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", intro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->intro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", snap=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->snap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", curroomnum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->curroomnum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->vip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatartime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatartime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthday=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", professional=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->professional:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emotion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emotion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", province=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", approveid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approveid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", toy_status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->toy_status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", followers_cnt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followers_cnt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", followees_cnt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followees_cnt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_attention="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_attention:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isHit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->isHit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", emceelevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emceelevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", age="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->age:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", beanorignal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->beanorignal:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", spendcoin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->spendcoin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", approvetype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approvetype:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", copyrightX=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->copyrightX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_legend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_legend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", realtimeSubtitlesOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->realtimeSubtitlesOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->lob:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->idX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->sex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->broadcasting:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->intro:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->nickname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->snap:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->curroomnum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->vip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatartime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->birthday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->professional:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emotion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approveid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->toy_status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followers_cnt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->followees_cnt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_attention:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->isHit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->emceelevel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->beanorignal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->spendcoin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->approvetype:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->copyrightX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-boolean p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->is_legend:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->realtimeSubtitlesOn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->lob:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
