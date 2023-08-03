.class public final Lt4/e;
.super Ljava/lang/Object;
.source "SVGAVideoShapeEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0017\u0010\u0001\u001a\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroid/graphics/Path;",
        "sharedPath",
        "Landroid/graphics/Path;",
        "a",
        "()Landroid/graphics/Path;",
        "com.opensource.svgaplayer"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Path;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lt4/e;->a:Landroid/graphics/Path;

    return-void
.end method

.method public static final a()Landroid/graphics/Path;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lt4/e;->a:Landroid/graphics/Path;

    return-object v0
.end method
