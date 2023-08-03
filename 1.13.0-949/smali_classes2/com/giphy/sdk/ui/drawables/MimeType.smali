.class public final enum Lcom/giphy/sdk/ui/drawables/MimeType;
.super Ljava/lang/Enum;
.source "MimeType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/ui/drawables/MimeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/drawables/MimeType;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "VIDEO_MP4",
        "IMAGE_GIF",
        "IMAGE_MP4",
        "IMAGE_WEBP",
        "IMAGE_JPG",
        "IMAGE_JPEG",
        "IMAGE_PNG",
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
.field public static final enum IMAGE_GIF:Lcom/giphy/sdk/ui/drawables/MimeType;

.field public static final enum IMAGE_JPEG:Lcom/giphy/sdk/ui/drawables/MimeType;

.field public static final enum IMAGE_JPG:Lcom/giphy/sdk/ui/drawables/MimeType;

.field public static final enum IMAGE_MP4:Lcom/giphy/sdk/ui/drawables/MimeType;

.field public static final enum IMAGE_PNG:Lcom/giphy/sdk/ui/drawables/MimeType;

.field public static final enum IMAGE_WEBP:Lcom/giphy/sdk/ui/drawables/MimeType;

.field public static final enum VIDEO_MP4:Lcom/giphy/sdk/ui/drawables/MimeType;

.field private static final synthetic b:[Lcom/giphy/sdk/ui/drawables/MimeType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/giphy/sdk/ui/drawables/MimeType;

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "VIDEO_MP4"

    const/4 v3, 0x0

    const-string v4, "video/mp4"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->VIDEO_MP4:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "IMAGE_GIF"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_GIF:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "IMAGE_MP4"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_MP4:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "IMAGE_WEBP"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_WEBP:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "IMAGE_JPG"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_JPG:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "IMAGE_JPEG"

    const/4 v3, 0x5

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_JPEG:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/drawables/MimeType;

    const-string v2, "IMAGE_PNG"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/drawables/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_PNG:Lcom/giphy/sdk/ui/drawables/MimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/ui/drawables/MimeType;->b:[Lcom/giphy/sdk/ui/drawables/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/giphy/sdk/ui/drawables/MimeType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/ui/drawables/MimeType;
    .locals 1

    const-class v0, Lcom/giphy/sdk/ui/drawables/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/drawables/MimeType;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/ui/drawables/MimeType;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/drawables/MimeType;->b:[Lcom/giphy/sdk/ui/drawables/MimeType;

    invoke-virtual {v0}, [Lcom/giphy/sdk/ui/drawables/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/ui/drawables/MimeType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/MimeType;->a:Ljava/lang/String;

    return-object v0
.end method
