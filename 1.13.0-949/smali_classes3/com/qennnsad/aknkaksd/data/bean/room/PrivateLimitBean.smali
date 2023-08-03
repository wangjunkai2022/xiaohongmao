.class public Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
.super Ljava/lang/Object;
.source "PrivateLimitBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;,
        Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

.field private bsid:I

.field private come:I

.field private copyright:Ljava/lang/String;

.field private fanclubEnabled:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fanclub_enabled"
    .end annotation
.end field

.field private id:I

.field private inPkWith:J

.field private isPkSender:I

.field private money:I

.field private online:I

.field private pinnedMessages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pinmessage_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private plid:I

.field private prerequisite:I

.field private prerequisite_coin:I

.field private prerequisite_minute:F

.field private preview_time:I

.field private ptid:I

.field private ptname:Ljava/lang/String;

.field private stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

.field private tips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->id:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->plid:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->bsid:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptid:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_coin:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_minute:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptname:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->online:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->preview_time:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->come:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->money:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->copyright:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    .line 16
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->anchor:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->inPkWith:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->isPkSender:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->fanclubEnabled:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->pinnedMessages:Ljava/util/List;

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 22
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    goto :goto_0

    .line 23
    :cond_0
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->anchor:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    return-object v0
.end method

.method public getBsid()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->bsid:I

    return v0
.end method

.method public getCome()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->come:I

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getFanclubEnabled()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->fanclubEnabled:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->id:I

    return v0
.end method

.method public getInPkWith()J
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->inPkWith:J

    return-wide v0
.end method

.method public getIsPkSender()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->isPkSender:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->money:I

    return v0
.end method

.method public getOnline()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->online:I

    return v0
.end method

.method public getPinnedMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->pinnedMessages:Ljava/util/List;

    return-object v0
.end method

.method public getPlid()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->plid:I

    return v0
.end method

.method public getPrerequisite()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite:I

    return v0
.end method

.method public getPrerequisite_coin()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_coin:I

    return v0
.end method

.method public getPrerequisite_minute()F
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_minute:F

    return v0
.end method

.method public getPreview_time()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->preview_time:I

    return v0
.end method

.method public getPtid()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptid:I

    return v0
.end method

.method public getPtname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptname:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public setAnchor(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->anchor:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    return-void
.end method

.method public setBsid(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->bsid:I

    return-void
.end method

.method public setCome(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->come:I

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setFanclubEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->fanclubEnabled:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->id:I

    return-void
.end method

.method public setInPkWith(J)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->inPkWith:J

    return-void
.end method

.method public setIsPkSender(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->isPkSender:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->money:I

    return-void
.end method

.method public setOnline(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->online:I

    return-void
.end method

.method public setPinnedMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->pinnedMessages:Ljava/util/List;

    return-void
.end method

.method public setPlid(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->plid:I

    return-void
.end method

.method public setPrerequisite(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite:I

    return-void
.end method

.method public setPrerequisite_coin(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_coin:I

    return-void
.end method

.method public setPrerequisite_minute(F)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_minute:F

    return-void
.end method

.method public setPreview_time(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->preview_time:I

    return-void
.end method

.method public setPtid(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptid:I

    return-void
.end method

.method public setPtname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptname:Ljava/lang/String;

    return-void
.end method

.method public setStream(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->tips:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateLimitBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", plid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->plid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->bsid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ptid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prerequisite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prerequisite_minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_minute:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", prerequisite_coin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_coin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ptname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", online="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->online:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", anchor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->anchor:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", preview_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->preview_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", come="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->come:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", money="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->money:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", copyright=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->copyright:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->plid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->bsid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_coin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->prerequisite_minute:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->ptname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->online:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->preview_time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->come:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->money:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->copyright:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->anchor:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 16
    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->inPkWith:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->isPkSender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->fanclubEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->pinnedMessages:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->pinnedMessages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :goto_0
    return-void
.end method
