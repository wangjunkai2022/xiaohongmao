.class public final enum Lcom/giphy/sdk/core/models/enums/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/enums/MediaType$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u00d6\u0001j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "",
        "Landroid/os/Parcelable;",
        "(Ljava/lang/String;I)V",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "gif",
        "sticker",
        "text",
        "emoji",
        "video",
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
.field private static final synthetic $VALUES:[Lcom/giphy/sdk/core/models/enums/MediaType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum emoji:Lcom/giphy/sdk/core/models/enums/MediaType;

.field public static final enum gif:Lcom/giphy/sdk/core/models/enums/MediaType;

.field public static final enum sticker:Lcom/giphy/sdk/core/models/enums/MediaType;

.field public static final enum text:Lcom/giphy/sdk/core/models/enums/MediaType;

.field public static final enum video:Lcom/giphy/sdk/core/models/enums/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/giphy/sdk/core/models/enums/MediaType;

    new-instance v1, Lcom/giphy/sdk/core/models/enums/MediaType;

    const-string v2, "gif"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/models/enums/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/models/enums/MediaType;->gif:Lcom/giphy/sdk/core/models/enums/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/models/enums/MediaType;

    const-string v2, "sticker"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/models/enums/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/models/enums/MediaType;->sticker:Lcom/giphy/sdk/core/models/enums/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/models/enums/MediaType;

    const-string v2, "text"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/models/enums/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/models/enums/MediaType;->text:Lcom/giphy/sdk/core/models/enums/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/models/enums/MediaType;

    const-string v2, "emoji"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/models/enums/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/models/enums/MediaType;->emoji:Lcom/giphy/sdk/core/models/enums/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/models/enums/MediaType;

    const-string v2, "video"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/models/enums/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/models/enums/MediaType;->video:Lcom/giphy/sdk/core/models/enums/MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/core/models/enums/MediaType;->$VALUES:[Lcom/giphy/sdk/core/models/enums/MediaType;

    new-instance v0, Lcom/giphy/sdk/core/models/enums/MediaType$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/enums/MediaType$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/enums/MediaType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/core/models/enums/MediaType;
    .locals 1

    const-class v0, Lcom/giphy/sdk/core/models/enums/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/core/models/enums/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/core/models/enums/MediaType;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/core/models/enums/MediaType;->$VALUES:[Lcom/giphy/sdk/core/models/enums/MediaType;

    invoke-virtual {v0}, [Lcom/giphy/sdk/core/models/enums/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/core/models/enums/MediaType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
