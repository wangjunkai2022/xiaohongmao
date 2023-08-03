.class public final Lcom/giphy/sdk/core/models/Assets;
.super Ljava/lang/Object;
.source "Assets.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/Assets$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001BM\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0012H\u00d6\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/Assets;",
        "Landroid/os/Parcelable;",
        "source",
        "Lcom/giphy/sdk/core/models/Asset;",
        "size360p",
        "size480p",
        "size720p",
        "size1080p",
        "size4k",
        "(Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;)V",
        "getSize1080p",
        "()Lcom/giphy/sdk/core/models/Asset;",
        "getSize360p",
        "getSize480p",
        "getSize4k",
        "getSize720p",
        "getSource",
        "describeContents",
        "",
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
            "Lcom/giphy/sdk/core/models/Assets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final size1080p:Lcom/giphy/sdk/core/models/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1080p"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final size360p:Lcom/giphy/sdk/core/models/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "360p"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final size480p:Lcom/giphy/sdk/core/models/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "480p"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final size4k:Lcom/giphy/sdk/core/models/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "4k"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final size720p:Lcom/giphy/sdk/core/models/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "720p"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final source:Lcom/giphy/sdk/core/models/Asset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/models/Assets$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/Assets$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/Assets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/giphy/sdk/core/models/Assets;-><init>(Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Asset;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/Asset;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/models/Asset;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/models/Asset;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/giphy/sdk/core/models/Asset;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/Asset;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Assets;->source:Lcom/giphy/sdk/core/models/Asset;

    iput-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->size360p:Lcom/giphy/sdk/core/models/Asset;

    iput-object p3, p0, Lcom/giphy/sdk/core/models/Assets;->size480p:Lcom/giphy/sdk/core/models/Asset;

    iput-object p4, p0, Lcom/giphy/sdk/core/models/Assets;->size720p:Lcom/giphy/sdk/core/models/Asset;

    iput-object p5, p0, Lcom/giphy/sdk/core/models/Assets;->size1080p:Lcom/giphy/sdk/core/models/Asset;

    iput-object p6, p0, Lcom/giphy/sdk/core/models/Assets;->size4k:Lcom/giphy/sdk/core/models/Asset;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 2
    invoke-direct/range {p1 .. p7}, Lcom/giphy/sdk/core/models/Assets;-><init>(Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getSize1080p()Lcom/giphy/sdk/core/models/Asset;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Assets;->size1080p:Lcom/giphy/sdk/core/models/Asset;

    return-object v0
.end method

.method public final getSize360p()Lcom/giphy/sdk/core/models/Asset;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Assets;->size360p:Lcom/giphy/sdk/core/models/Asset;

    return-object v0
.end method

.method public final getSize480p()Lcom/giphy/sdk/core/models/Asset;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Assets;->size480p:Lcom/giphy/sdk/core/models/Asset;

    return-object v0
.end method

.method public final getSize4k()Lcom/giphy/sdk/core/models/Asset;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Assets;->size4k:Lcom/giphy/sdk/core/models/Asset;

    return-object v0
.end method

.method public final getSize720p()Lcom/giphy/sdk/core/models/Asset;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Assets;->size720p:Lcom/giphy/sdk/core/models/Asset;

    return-object v0
.end method

.method public final getSource()Lcom/giphy/sdk/core/models/Asset;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Assets;->source:Lcom/giphy/sdk/core/models/Asset;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->source:Lcom/giphy/sdk/core/models/Asset;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->size360p:Lcom/giphy/sdk/core/models/Asset;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->size480p:Lcom/giphy/sdk/core/models/Asset;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->size720p:Lcom/giphy/sdk/core/models/Asset;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->size1080p:Lcom/giphy/sdk/core/models/Asset;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Assets;->size4k:Lcom/giphy/sdk/core/models/Asset;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return-void
.end method
