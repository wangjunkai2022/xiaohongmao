.class public final Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;
.super Ljava/lang/Object;
.source "AdConfigBean.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J-\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0012H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
        "Landroid/os/Parcelable;",
        "imageUrl",
        "",
        "targetUrl",
        "target",
        "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V",
        "getImageUrl",
        "()Ljava/lang/String;",
        "getTarget",
        "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "getTargetUrl",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "img_url"
        }
        value = "pic_path"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final targetUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean$Creator;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean$Creator;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-object v0
.end method

.method public final getTargetUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BannerAdBean(imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->targetUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
