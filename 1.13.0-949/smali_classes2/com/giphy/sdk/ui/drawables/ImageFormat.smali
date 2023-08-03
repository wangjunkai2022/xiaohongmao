.class public final enum Lcom/giphy/sdk/ui/drawables/ImageFormat;
.super Ljava/lang/Enum;
.source "ImageFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getMimeType",
        "()Ljava/lang/String;",
        "mimeType",
        "b",
        "getExtension",
        "extension",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "WEBP",
        "GIF",
        "MP4",
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
.field public static final enum GIF:Lcom/giphy/sdk/ui/drawables/ImageFormat;

.field public static final enum MP4:Lcom/giphy/sdk/ui/drawables/ImageFormat;

.field public static final enum WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

.field private static final synthetic c:[Lcom/giphy/sdk/ui/drawables/ImageFormat;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/giphy/sdk/ui/drawables/ImageFormat;

    new-instance v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    .line 1
    sget-object v2, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_WEBP:Lcom/giphy/sdk/ui/drawables/MimeType;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/drawables/MimeType;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WEBP"

    const/4 v4, 0x0

    const-string v5, "webp"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/giphy/sdk/ui/drawables/ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    aput-object v1, v0, v4

    new-instance v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    .line 2
    sget-object v2, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_GIF:Lcom/giphy/sdk/ui/drawables/MimeType;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/drawables/MimeType;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    const/4 v4, 0x1

    const-string v5, "gif"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/giphy/sdk/ui/drawables/ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->GIF:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    aput-object v1, v0, v4

    new-instance v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    .line 3
    sget-object v2, Lcom/giphy/sdk/ui/drawables/MimeType;->IMAGE_MP4:Lcom/giphy/sdk/ui/drawables/MimeType;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/drawables/MimeType;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MP4"

    const/4 v4, 0x2

    const-string v5, "mp4"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/giphy/sdk/ui/drawables/ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->MP4:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->c:[Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .locals 1

    const-class v0, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->c:[Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v0}, [Lcom/giphy/sdk/ui/drawables/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-object v0
.end method


# virtual methods
.method public final getExtension()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->a:Ljava/lang/String;

    return-object v0
.end method
