.class public Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
.super Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final transient GENDER_FEMALE:I = 0x1

.field public static final transient GENDER_MALE:I = 0x0

.field public static final IS_ATTENTION:I = 0x1


# instance fields
.field private age:Ljava/lang/String;

.field private approveid:Ljava/lang/String;

.field private approvetype:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private beanbalance:D

.field private beanorignal:D

.field private birthday:Ljava/lang/String;

.field private broadcasting:Ljava/lang/String;

.field private broadcastingTab:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broadcasting_tab"
    .end annotation
.end field

.field private city:Ljava/lang/String;

.field private coinBalance:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coinbalance"
    .end annotation
.end field

.field private copyright:Ljava/lang/String;

.field private currentRoomNum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "curroomnum"
    .end annotation
.end field

.field private emotion:Ljava/lang/String;

.field private familyLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "family_level"
    .end annotation
.end field

.field private followeesCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "followees_cnt"
    .end annotation
.end field

.field private followersCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "followers_cnt"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private im_app_key:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private isAttention:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_attention"
    .end annotation
.end field

.field private isHit:I

.field private is_group_conversation:I

.field private is_single_conversation:I

.field private level:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emceelevel"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private peerage_id:I

.field private professional:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private say:Ljava/lang/String;

.field private sex:I

.field private snap:Ljava/lang/String;

.field private topContributeUsers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contribute"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalContribution:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spendcoin"
    .end annotation
.end field

.field private toy_status:I

.field private vip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    const-string v1, "1"

    .line 6
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    .line 9
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Unknown:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcastingTab:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;-><init>()V

    const-string v0, "0"

    .line 11
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    const-string v1, "1"

    .line 15
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    .line 18
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Unknown:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcastingTab:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->id:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->sex:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->intro:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->nickname:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->city:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->snap:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->vip:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->coinBalance:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanbalance:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanorignal:D

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->birthday:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isHit:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->avatar:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->topContributeUsers:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isAttention:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->familyLevel:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcasting:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approveid:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->age:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approvetype:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->copyright:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->toy_status:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->im_app_key:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_single_conversation:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_group_conversation:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getApproveid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approveid:Ljava/lang/String;

    return-object v0
.end method

.method public getApprovetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approvetype:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBeanbalance()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanbalance:D

    return-wide v0
.end method

.method public getBeanorignal()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanorignal:D

    return-wide v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcasting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcasting:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastingTab()Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcastingTab:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCoinBalance()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->coinBalance:D

    return-wide v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRoomNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->familyLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getFolloweesCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    return-object v0
.end method

.method public getHome()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIm_app_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->im_app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttention()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isAttention:I

    return v0
.end method

.method public getIsHit()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isHit:I

    return v0
.end method

.method public getIs_group_conversation()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_group_conversation:I

    return v0
.end method

.method public getIs_single_conversation()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_single_conversation:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLove()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerage_id()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    return v0
.end method

.method public getProfessional()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->sex:I

    return v0
.end method

.method public getSnap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->snap:Ljava/lang/String;

    return-object v0
.end method

.method public getTopContributeUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->topContributeUsers:Ljava/util/List;

    return-object v0
.end method

.method public getTotalContribution()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    return v0
.end method

.method public getToy_status()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->toy_status:I

    return v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->age:Ljava/lang/String;

    return-void
.end method

.method public setApproveid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approveid:Ljava/lang/String;

    return-void
.end method

.method public setApprovetype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approvetype:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBeanbalance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanbalance:D

    return-void
.end method

.method public setBeanorignal(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanorignal:D

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setBroadcasting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcasting:Ljava/lang/String;

    return-void
.end method

.method public setBroadcastingTab(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcastingTab:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setCoinBalance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->coinBalance:D

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setCurrentRoomNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    return-void
.end method

.method public setEmotion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    return-void
.end method

.method public setFamilyLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->familyLevel:Ljava/lang/String;

    return-void
.end method

.method public setFolloweesCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    return-void
.end method

.method public setFollowersCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    return-void
.end method

.method public setHome(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIm_app_key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->im_app_key:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->intro:Ljava/lang/String;

    return-void
.end method

.method public setIsAttention(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isAttention:I

    return-void
.end method

.method public setIsHit(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isHit:I

    return-void
.end method

.method public setIs_group_conversation(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_group_conversation:I

    return-void
.end method

.method public setIs_single_conversation(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_single_conversation:I

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    return-void
.end method

.method public setLove(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    return-void
.end method

.method public setMajor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPeerage_id(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    return-void
.end method

.method public setProfessional(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setSay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->sex:I

    return-void
.end method

.method public setSnap(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->snap:Ljava/lang/String;

    return-void
.end method

.method public setTopContributeUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->topContributeUsers:Ljava/util/List;

    return-void
.end method

.method public setTotalContribution(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    return-void
.end method

.method public setToy_status(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->toy_status:I

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->vip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->sex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->intro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", snap=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->snap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currentRoomNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->vip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coinBalance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->coinBalance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", beanbalance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanbalance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", beanorignal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanorignal:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", birthday=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emotion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", province=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", professional=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isHit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isHit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", topContributeUsers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->topContributeUsers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", followersCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", followeesCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalContribution="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAttention="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isAttention:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", broadcasting=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcasting:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", approveid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approveid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", age=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->age:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", approvetype=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approvetype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", copyright=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->copyright:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", say=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", toy_status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->toy_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", im_app_key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->im_app_key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_single_conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_single_conversation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_group_conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_group_conversation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerage_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMystery= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastingTab= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcastingTab:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->sex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->intro:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->snap:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->currentRoomNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->vip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->coinBalance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 10
    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanbalance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 11
    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->beanorignal:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 12
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->birthday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->emotion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->professional:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isHit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->topContributeUsers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 19
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followersCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->followeesCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->totalContribution:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->isAttention:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->level:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->familyLevel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->broadcasting:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approveid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->age:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->approvetype:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->copyright:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->say:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->toy_status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->im_app_key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_single_conversation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->is_group_conversation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->peerage_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
