.class public final Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean$Creator;
.super Ljava/lang/Object;
.source "AdInfoBean.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
    .locals 11
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move-object v9, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-eq v9, v0, :cond_2

    sget-object v10, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;->valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    move-result-object v1

    :goto_3
    move-object v10, v1

    new-instance p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;-><init>(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    new-array p1, p1, [Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean$Creator;->newArray(I)[Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object p1

    return-object p1
.end method
