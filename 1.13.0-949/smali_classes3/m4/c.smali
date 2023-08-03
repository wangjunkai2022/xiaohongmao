.class public final Lm4/c;
.super Ljava/lang/Object;
.source "NetworkStatsNetworkUsage.kt"

# interfaces
.implements Lcom/im/freechat/domain/l;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkStatsNetworkUsage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkStatsNetworkUsage.kt\ncom/im/freechat/utils/device_statistics/NetworkStatsNetworkUsage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1851#2,2:89\n1#3:91\n*S KotlinDebug\n*F\n+ 1 NetworkStatsNetworkUsage.kt\ncom/im/freechat/utils/device_statistics/NetworkStatsNetworkUsage\n*L\n27#1:89,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0003J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lm4/c;",
        "Lcom/im/freechat/domain/l;",
        "Lcom/im/freechat/domain/m;",
        "c",
        "",
        "b",
        "",
        "network",
        "Landroid/app/usage/NetworkStats;",
        "d",
        "a",
        "Landroid/app/usage/NetworkStatsManager;",
        "networkStatsManager",
        "Landroid/telephony/TelephonyManager;",
        "telephonyManager",
        "Landroid/content/pm/ApplicationInfo;",
        "appInfo",
        "<init>",
        "(Landroid/app/usage/NetworkStatsManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/ApplicationInfo;)V",
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
.field private final a:Landroid/app/usage/NetworkStatsManager;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroid/telephony/TelephonyManager;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroid/content/pm/ApplicationInfo;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/usage/NetworkStatsManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1    # Landroid/app/usage/NetworkStatsManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/telephony/TelephonyManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/content/pm/ApplicationInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "networkStatsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm4/c;->a:Landroid/app/usage/NetworkStatsManager;

    .line 3
    iput-object p2, p0, Lm4/c;->b:Landroid/telephony/TelephonyManager;

    .line 4
    iput-object p3, p0, Lm4/c;->c:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method private final b()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/domain/m;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 1
    invoke-direct {v1, v0}, Lm4/c;->d(I)Landroid/app/usage/NetworkStats;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 3
    new-instance v11, Lcom/im/freechat/domain/m;

    sget-object v8, Lcom/im/freechat/domain/NetworkType;->MOBILE:Lcom/im/freechat/domain/NetworkType;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRoaming()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/im/freechat/domain/m;->f()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/im/freechat/domain/m;->i(J)V

    .line 8
    invoke-virtual {v3}, Lcom/im/freechat/domain/m;->g()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/im/freechat/domain/m;->j(J)V

    goto :goto_1

    .line 9
    :cond_0
    new-instance v3, Lcom/im/freechat/domain/m;

    .line 10
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v13

    .line 11
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v15

    .line 12
    sget-object v17, Lcom/im/freechat/domain/NetworkType;->ROAMING:Lcom/im/freechat/domain/NetworkType;

    move-object v12, v3

    .line 13
    invoke-direct/range {v12 .. v17}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;)V

    .line 14
    :cond_1
    :goto_1
    invoke-virtual {v11}, Lcom/im/freechat/domain/m;->f()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v11, v4, v5}, Lcom/im/freechat/domain/m;->i(J)V

    .line 15
    invoke-virtual {v11}, Lcom/im/freechat/domain/m;->g()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v11, v4, v5}, Lcom/im/freechat/domain/m;->j(J)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private final c()Lcom/im/freechat/domain/m;
    .locals 11

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lm4/c;->d(I)Landroid/app/usage/NetworkStats;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 3
    new-instance v10, Lcom/im/freechat/domain/m;

    sget-object v7, Lcom/im/freechat/domain/NetworkType;->WI_FI:Lcom/im/freechat/domain/NetworkType;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 6
    invoke-virtual {v10}, Lcom/im/freechat/domain/m;->f()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v10, v2, v3}, Lcom/im/freechat/domain/m;->i(J)V

    .line 7
    invoke-virtual {v10}, Lcom/im/freechat/domain/m;->g()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v10, v2, v3}, Lcom/im/freechat/domain/m;->j(J)V

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method private final d(I)Landroid/app/usage/NetworkStats;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm4/c;->a:Landroid/app/usage/NetworkStatsManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm4/c;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    const-wide/16 v3, 0x0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4
    iget-object v1, p0, Lm4/c;->c:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move v1, p1

    .line 5
    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object p1

    const-string v0, "networkStatsManager.quer\u2026    appInfo.uid\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v9, Lcom/im/freechat/domain/m;

    sget-object v6, Lcom/im/freechat/domain/NetworkType;->ALL:Lcom/im/freechat/domain/NetworkType;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-direct {p0}, Lm4/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-direct {p0}, Lm4/c;->c()Lcom/im/freechat/domain/m;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/domain/m;

    .line 6
    invoke-virtual {v9}, Lcom/im/freechat/domain/m;->f()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/im/freechat/domain/m;->f()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v9, v3, v4}, Lcom/im/freechat/domain/m;->i(J)V

    .line 7
    invoke-virtual {v9}, Lcom/im/freechat/domain/m;->g()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/im/freechat/domain/m;->g()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v9, v3, v4}, Lcom/im/freechat/domain/m;->j(J)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
