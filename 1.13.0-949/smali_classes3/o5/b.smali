.class public final Lo5/b;
.super Ljava/lang/Object;
.source "SendGiftMocks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0000\u001a\u0018\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0000\u001a\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0000\u001a\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u000e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "roomId",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
        "k",
        "n",
        "m",
        "combo",
        "a",
        "c",
        "e",
        "g",
        "h",
        "i",
        "j",
        "l",
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
.method public static final a(II)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "AAAAA"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "BOMB-1"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string p1, "0"

    .line 11
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static synthetic b(IIILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lo5/b;->a(II)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    move-result-object p0

    return-object p0
.end method

.method public static final c(II)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/614860a7c4e95.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "82422563"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v1, "BBBBB"

    .line 4
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v1, "BOMB-2"

    .line 5
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v1, "/style/avatar/9b9/30754496_small.jpg?t=1677418224"

    .line 6
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string p1, "0"

    .line 11
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/610b8956dace6.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static synthetic d(IIILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lo5/b;->c(II)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    move-result-object p0

    return-object p0
.end method

.method public static final e(II)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/610b6ff2c18b5.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "3550694"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v1, "AAAAA"

    .line 4
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v1, "BOMB-3"

    .line 5
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v1, "/style/avatar/cd3/11196504_middle.jpg?t=1677607478"

    .line 6
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string p1, "0"

    .line 11
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/61485fdb7a3ad.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static synthetic f(IIILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lo5/b;->e(II)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    move-result-object p0

    return-object p0
.end method

.method public static final g(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037413"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "BOMB-4"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "abs"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v2, "0"

    .line 11
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final h(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037413"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "BOMB-5"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "abs"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v1, "0"

    .line 11
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final i(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037412"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "BBBBBB"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "BOMB-6"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v2, "0"

    .line 11
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final j(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037412"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "BBBBBB"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "BOMB-7"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "7"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v1, "0"

    .line 11
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final k(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "\u6e38\u5ba2940374141"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "abs"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "4"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v1, "0"

    .line 11
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x3

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final l(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "\u6e38\u5ba2940374141"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "abs"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "2"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v1, "0"

    .line 11
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x2

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final m(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "\u6e38\u5ba2940374141"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "abs"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "2"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v1, "0"

    .line 11
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x3

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method

.method public static final n(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;-><init>()V

    const-string v1, "/style/images/gift/5da440c22ca1f.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftIcon(Ljava/lang/String;)V

    const-string v1, "94037414"

    .line 3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_id(Ljava/lang/String;)V

    const-string v2, "\u6e38\u5ba2940374141"

    .line 4
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserName(Ljava/lang/String;)V

    const-string v2, "abs"

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftName(Ljava/lang/String;)V

    const-string v2, "/style/avatar/815/94037414_small.jpg?t=1617872734"

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFromUserId(Ljava/lang/String;)V

    const/16 v1, 0x17

    .line 8
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setLevel(I)V

    const-string v1, "2"

    .line 9
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setIsred(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-string v1, "0"

    .line 11
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setNeedface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setRoom_id(I)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setFrom_user_peerage_id(I)V

    const-string p0, "/style/images/gift/5da440c22cbd5.svga"

    .line 14
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftSwf(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 15
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setEffortDuration(I)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setShowChatMsg(Ljava/lang/Boolean;)V

    const/4 p0, 0x3

    .line 17
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setGiftCount(I)V

    return-object v0
.end method
