.class public final Lcom/giphy/sdk/ui/drawables/ImageUriInfo$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/drawables/ImageUriInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/giphy/sdk/ui/drawables/ImageUriInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    const-class v1, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-static {v3, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-direct {v0, v1, v2, p1}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;-><init>(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V

    return-object v0
.end method

.method public final b(I)[Lcom/giphy/sdk/ui/drawables/ImageUriInfo;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    new-array p1, p1, [Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo$a;->a(Landroid/os/Parcel;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo$a;->b(I)[Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    move-result-object p1

    return-object p1
.end method
