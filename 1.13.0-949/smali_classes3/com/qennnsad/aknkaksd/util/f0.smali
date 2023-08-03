.class public final Lcom/qennnsad/aknkaksd/util/f0;
.super Ljava/lang/Object;
.source "FanClubUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0012\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;",
        "event",
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
.method public static final a(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
    .locals 13
    .param p0    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;->getLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;->getUpLevel()I

    move-result v4

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;->getCoins()I

    move-result v3

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;->getFreeGifts()I

    move-result v8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x58

    const/4 v12, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v12}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->copy$default(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;IIIJLjava/lang/String;IJILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    move-result-object p0

    return-object p0
.end method
