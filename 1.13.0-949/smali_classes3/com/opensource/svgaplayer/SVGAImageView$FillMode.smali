.class public final enum Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
.super Ljava/lang/Enum;
.source "SVGAImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;",
        "",
        "(Ljava/lang/String;I)V",
        "Backward",
        "Forward",
        "Clear",
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
.field public static final enum Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

.field public static final enum Clear:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

.field public static final enum Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

.field private static final synthetic a:[Lcom/opensource/svgaplayer/SVGAImageView$FillMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    new-instance v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    const-string v2, "Backward"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    const-string v2, "Forward"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    const-string v2, "Clear"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Clear:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->a:[Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .locals 1

    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-object p0
.end method

.method public static values()[Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->a:[Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    invoke-virtual {v0}, [Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-object v0
.end method
