.class Lcom/tangxiaolv/telegramgallery/GalleryConfig$a;
.super Ljava/lang/Object;
.source "GalleryConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/GalleryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tangxiaolv/telegramgallery/GalleryConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tangxiaolv/telegramgallery/GalleryConfig;
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    invoke-direct {v0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/tangxiaolv/telegramgallery/GalleryConfig;
    .locals 0

    new-array p1, p1, [Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$a;->a(Landroid/os/Parcel;)Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$a;->b(I)[Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    move-result-object p1

    return-object p1
.end method
