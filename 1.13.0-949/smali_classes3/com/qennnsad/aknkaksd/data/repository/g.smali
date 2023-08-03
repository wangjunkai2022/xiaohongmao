.class public final Lcom/qennnsad/aknkaksd/data/repository/g;
.super Ljava/lang/Object;
.source "RepositoryExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a*\u0010\u0008\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0018\u00010\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/k;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;",
        "rankType",
        "",
        "page",
        "Lio/reactivex/z;",
        "Lretrofit2/Response;",
        "",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/qennnsad/aknkaksd/data/repository/k;Lcom/qennnsad/aknkaksd/presentation/module/rank/h;I)Lio/reactivex/z;
    .locals 13
    .param p0    # Lcom/qennnsad/aknkaksd/data/repository/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/rank/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/repository/k;",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rankType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->c:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->w()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h;->a()Ljava/lang/Integer;

    move-result-object v2

    .line 3
    instance-of v3, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$c;

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2, v2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->anchorRankToday(ILjava/lang/Integer;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v3, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$d;

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2, v2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->anchorRankYesterday(ILjava/lang/Integer;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v3, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2, v2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->anchorRankThisWeek(ILjava/lang/Integer;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    instance-of v3, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$a;

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2, v2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->anchorRankLastWeek(ILjava/lang/Integer;)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$o;

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->viewerRankToday(I)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$p;

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->viewerRankYesterday(I)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 9
    :cond_5
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$n;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->viewerRankThisWeek(I)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 10
    :cond_6
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$m;

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p0, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->viewerRankLastWeek(I)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 11
    :cond_7
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$g;

    const/16 v3, 0xa

    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string p1, "today"

    invoke-interface {p0, p1, p2, v3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->gameRank(Ljava/lang/String;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 12
    :cond_8
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$h;

    if-eqz v2, :cond_9

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string p1, "yesterday"

    invoke-interface {p0, p1, p2, v3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->gameRank(Ljava/lang/String;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 13
    :cond_9
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$f;

    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string p1, "thisWeek"

    invoke-interface {p0, p1, p2, v3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->gameRank(Ljava/lang/String;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 14
    :cond_a
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$e;

    if-eqz v2, :cond_b

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string p1, "lastWeek"

    invoke-interface {p0, p1, p2, v3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->gameRank(Ljava/lang/String;II)Lio/reactivex/z;

    move-result-object p0

    return-object p0

    .line 15
    :cond_b
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$k;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_c

    .line 16
    sget-object v2, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/util/o$a;->i()J

    move-result-wide v3

    goto :goto_0

    .line 17
    :cond_c
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$l;

    if-eqz v2, :cond_d

    .line 18
    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->l()J

    move-result-wide v3

    .line 19
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->i()J

    move-result-wide v0

    goto :goto_0

    .line 20
    :cond_d
    instance-of v2, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$j;

    if-eqz v2, :cond_e

    .line 21
    sget-object v2, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/util/o$a;->k()J

    move-result-wide v3

    goto :goto_0

    .line 22
    :cond_e
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$i;

    if-eqz v0, :cond_f

    .line 23
    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->j()J

    move-result-wide v3

    .line 24
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/o$a;->k()J

    move-result-wide v0

    goto :goto_0

    :cond_f
    move-wide v0, v3

    .line 25
    :goto_0
    sget-object v2, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PK Ratings for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/qennnsad/aknkaksd/util/o$a;->e(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 26
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const/16 p0, 0x3e8

    int-to-long p0, p0

    div-long v8, v3, p0

    div-long v10, v0, p0

    move v12, p2

    invoke-interface/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->pkRank(JJI)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method
