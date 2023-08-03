.class public final Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;
.super Ljava/lang/Object;
.source "DownloadEntityMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadEntityMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEntityMapper.kt\ncom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1549#2:51\n1620#2,3:52\n1549#2:55\n1620#2,3:56\n*S KotlinDebug\n*F\n+ 1 DownloadEntityMapper.kt\ncom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper\n*L\n43#1:51\n43#1:52,3\n47#1:55\n47#1:56,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0007J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004J\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
        "downloadInfo",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "",
        "list",
        "reverseMap",
        "downloadEntity",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lcom/im/freechat/shared/entities/DownloadInfo;)Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;
    .locals 14
    .param p1    # Lcom/im/freechat/shared/entities/DownloadInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getChatId()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getMediaId()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloadManagerID()J

    move-result-wide v5

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getRemoteUrl()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v9

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v11

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getStatus()I

    move-result v13

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v13}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;-><init>(IJJLjava/lang/String;Ljava/lang/String;JJI)V

    return-object v0
.end method

.method public final map(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Lcom/im/freechat/shared/entities/DownloadInfo;

    .line 14
    invoke-virtual {p0, v1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;->map(Lcom/im/freechat/shared/entities/DownloadInfo;)Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final reverseMap(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)Lcom/im/freechat/shared/entities/DownloadInfo;
    .locals 14
    .param p1    # Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "downloadEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/DownloadInfo;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getChatId()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getMediaId()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getDownloadManagerID()J

    move-result-wide v5

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getFileSize()J

    move-result-wide v9

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getDownloaded()J

    move-result-wide v11

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getStatus()I

    move-result v13

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v13}, Lcom/im/freechat/shared/entities/DownloadInfo;-><init>(IJJLjava/lang/String;Ljava/lang/String;JJI)V

    return-object v0
.end method

.method public final reverseMap(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    .line 14
    invoke-virtual {p0, v1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)Lcom/im/freechat/shared/entities/DownloadInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
