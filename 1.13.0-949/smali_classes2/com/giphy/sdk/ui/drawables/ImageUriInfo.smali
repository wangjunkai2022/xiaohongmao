.class public final Lcom/giphy/sdk/ui/drawables/ImageUriInfo;
.super Ljava/lang/Object;
.source "ImageUriInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/drawables/ImageUriInfo$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/drawables/ImageUriInfo;",
        "Landroid/os/Parcelable;",
        "uri",
        "Landroid/net/Uri;",
        "size",
        "",
        "imageFormat",
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V",
        "getImageFormat",
        "()Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "getSize",
        "()I",
        "getUri",
        "()Landroid/net/Uri;",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/giphy/sdk/ui/drawables/ImageUriInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final size:I

.field private final uri:Landroid/net/Uri;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo$a;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo$a;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/ui/drawables/ImageFormat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->uri:Landroid/net/Uri;

    iput p2, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->size:I

    iput-object p3, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getImageFormat()Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->size:I

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
