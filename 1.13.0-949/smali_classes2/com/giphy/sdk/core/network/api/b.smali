.class public interface abstract Lcom/giphy/sdk/core/network/api/b;
.super Ljava/lang/Object;
.source "GPHApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/network/api/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\u0008`\u0018\u00002\u00020\u0001J[\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JI\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001a\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00150\rH&J6\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00170\rH&J6\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u0019\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\rH&J\"\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u001c\u001a\u00020\u00022\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\rH&J4\u0010!\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0002H&J5\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH&\u00a2\u0006\u0004\u0008\"\u0010#J,\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010$\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH&\u00a8\u0006&"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/api/b;",
        "",
        "",
        "searchQuery",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "type",
        "",
        "limit",
        "offset",
        "Lcom/giphy/sdk/core/models/enums/RatingType;",
        "rating",
        "Lcom/giphy/sdk/core/models/enums/LangType;",
        "lang",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
        "completionHandler",
        "Ljava/util/concurrent/Future;",
        "d",
        "(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;",
        "e",
        "(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;",
        "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;",
        "i",
        "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;",
        "c",
        "tag",
        "Lcom/giphy/sdk/core/network/response/MediaResponse;",
        "f",
        "gifId",
        "h",
        "",
        "gifIds",
        "context",
        "a",
        "b",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;",
        "query",
        "g",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;Lcom/giphy/sdk/core/network/api/a;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract b(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;IILcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/enums/LangType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Lcom/giphy/sdk/core/models/enums/LangType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract e(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/MediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/LangType;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/LangType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/LangType;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/MediaResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract i(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .param p1    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-",
            "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
