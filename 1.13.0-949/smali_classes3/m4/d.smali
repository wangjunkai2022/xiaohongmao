.class public final Lm4/d;
.super Ljava/lang/Object;
.source "TrafficStatsNetworkUsage.kt"

# interfaces
.implements Lcom/im/freechat/domain/l;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lm4/d;",
        "Lcom/im/freechat/domain/l;",
        "",
        "Lcom/im/freechat/domain/m;",
        "a",
        "Landroid/content/pm/ApplicationInfo;",
        "appInfo",
        "<init>",
        "(Landroid/content/pm/ApplicationInfo;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/pm/ApplicationInfo;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1    # Landroid/content/pm/ApplicationInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm4/d;->a:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/domain/m;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lm4/d;->a:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v8, Lcom/im/freechat/domain/m;

    .line 4
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 5
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    .line 6
    sget-object v7, Lcom/im/freechat/domain/NetworkType;->ALL:Lcom/im/freechat/domain/NetworkType;

    move-object v2, v8

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;)V

    .line 8
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
