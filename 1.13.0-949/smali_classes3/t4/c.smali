.class public final Lt4/c;
.super Ljava/lang/Object;
.source "SVGAPathEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "M"

    const-string v1, "L"

    const-string v2, "H"

    const-string v3, "V"

    const-string v4, "C"

    const-string v5, "S"

    const-string v6, "Q"

    const-string v7, "R"

    const-string v8, "A"

    const-string v9, "Z"

    const-string v10, "m"

    const-string v11, "l"

    const-string v12, "h"

    const-string v13, "v"

    const-string v14, "c"

    const-string v15, "s"

    const-string v16, "q"

    const-string v17, "r"

    const-string v18, "a"

    const-string v19, "z"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lt4/c;->a:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a()Ljava/util/Set;
    .locals 1

    sget-object v0, Lt4/c;->a:Ljava/util/Set;

    return-object v0
.end method
