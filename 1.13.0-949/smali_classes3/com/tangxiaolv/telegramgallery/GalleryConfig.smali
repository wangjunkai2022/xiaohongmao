.class public Lcom/tangxiaolv/telegramgallery/GalleryConfig;
.super Ljava/lang/Object;
.source "GalleryConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tangxiaolv/telegramgallery/GalleryConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filterMimeTypes:[Ljava/lang/String;

.field private hintOfPick:Ljava/lang/String;

.field private limitPickPhoto:I

.field private singlePhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$a;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->filterMimeTypes:[Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->hintOfPick:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->singlePhoto:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->limitPickPhoto:I

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->filterMimeTypes:[Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->hintOfPick:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->singlePhoto:Z

    .line 7
    iput p4, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->limitPickPhoto:I

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;ZILcom/tangxiaolv/telegramgallery/GalleryConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;-><init>([Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilterMimeTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->filterMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getHintOfPick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->hintOfPick:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitPickPhoto()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->limitPickPhoto:I

    return v0
.end method

.method public isSinglePhoto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->singlePhoto:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->filterMimeTypes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->hintOfPick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->singlePhoto:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->limitPickPhoto:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
