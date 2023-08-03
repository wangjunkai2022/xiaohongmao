.class public final Lcom/qennnsad/aknkaksd/data/bean/ContentBean$Creator;
.super Ljava/lang/Object;
.source "AdInfoBean.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/ContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/data/bean/ContentBean;
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;->valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/qennnsad/aknkaksd/data/bean/ContentBean;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    new-array p1, p1, [Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean$Creator;->newArray(I)[Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    move-result-object p1

    return-object p1
.end method
