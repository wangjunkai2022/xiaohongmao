.class public interface abstract Lcom/im/freechat/domain/e;
.super Ljava/lang/Object;
.source "DownloadManagerRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&JC\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0013H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0007H&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/im/freechat/domain/e;",
        "",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "list",
        "Lkotlinx/coroutines/flow/i;",
        "b",
        "",
        "mediaId",
        "",
        "chatId",
        "",
        "remoteUrl",
        "fileName",
        "fileSize",
        "",
        "interanalDirector",
        "c",
        "(JILjava/lang/String;Ljava/lang/String;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "d",
        "()[Ljava/lang/Integer;",
        "id",
        "",
        "a",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(J)V
.end method

.method public abstract b(Ljava/util/List;)Lkotlinx/coroutines/flow/i;
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
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract c(JILjava/lang/String;Ljava/lang/String;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract d()[Ljava/lang/Integer;
    .annotation build Lm8/g;
    .end annotation
.end method
