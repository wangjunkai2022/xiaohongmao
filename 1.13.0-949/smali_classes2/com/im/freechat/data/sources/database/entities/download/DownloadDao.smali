.class public abstract Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;
.super Lcom/im/freechat/data/sources/database/entities/BaseDao;
.source "DownloadDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/data/sources/database/entities/BaseDao<",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J \u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00070\u00062\n\u0010\u0005\u001a\u00020\u0003\"\u00020\u0004H\'J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00070\u0006H\'J\u001b\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\'\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0011J!\u0010\u0012\u001a\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;",
        "Lcom/im/freechat/data/sources/database/entities/BaseDao;",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
        "",
        "",
        "statuses",
        "Lkotlinx/coroutines/flow/i;",
        "",
        "getFilesByStatuses",
        "getDownloads",
        "",
        "mediaId",
        "",
        "removeDownload",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDownload",
        "mediaIds",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeDownloads",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDownload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM download WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM download WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getDownloads()Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM download"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public varargs abstract getFilesByStatuses([I)Lkotlinx/coroutines/flow/i;
    .param p1    # [I
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM download WHERE status IN (:statuses)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract removeDownload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM download WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract removeDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM download WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method
