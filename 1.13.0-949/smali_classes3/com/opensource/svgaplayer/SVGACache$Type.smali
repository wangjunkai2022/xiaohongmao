.class public final enum Lcom/opensource/svgaplayer/SVGACache$Type;
.super Ljava/lang/Enum;
.source "SVGACache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opensource/svgaplayer/SVGACache$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGACache$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "DEFAULT",
        "FILE",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/opensource/svgaplayer/SVGACache$Type;

.field public static final enum FILE:Lcom/opensource/svgaplayer/SVGACache$Type;

.field private static final synthetic a:[Lcom/opensource/svgaplayer/SVGACache$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/opensource/svgaplayer/SVGACache$Type;

    new-instance v1, Lcom/opensource/svgaplayer/SVGACache$Type;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/opensource/svgaplayer/SVGACache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/opensource/svgaplayer/SVGACache$Type;->DEFAULT:Lcom/opensource/svgaplayer/SVGACache$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/opensource/svgaplayer/SVGACache$Type;

    const-string v2, "FILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/opensource/svgaplayer/SVGACache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/opensource/svgaplayer/SVGACache$Type;->FILE:Lcom/opensource/svgaplayer/SVGACache$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/opensource/svgaplayer/SVGACache$Type;->a:[Lcom/opensource/svgaplayer/SVGACache$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/opensource/svgaplayer/SVGACache$Type;
    .locals 1

    const-class v0, Lcom/opensource/svgaplayer/SVGACache$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGACache$Type;

    return-object p0
.end method

.method public static values()[Lcom/opensource/svgaplayer/SVGACache$Type;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/SVGACache$Type;->a:[Lcom/opensource/svgaplayer/SVGACache$Type;

    invoke-virtual {v0}, [Lcom/opensource/svgaplayer/SVGACache$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opensource/svgaplayer/SVGACache$Type;

    return-object v0
.end method
