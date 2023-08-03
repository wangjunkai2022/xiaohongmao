.class public final Lo5/a;
.super Ljava/lang/Object;
.source "PeerageLoginMocks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "",
        "roomId",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;",
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
.method public static final a(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;-><init>()V

    const-string v1, "peerage_login"

    .line 2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setType(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setRoom_id(Ljava/lang/String;)V

    const-string p0, "60827970"

    .line 4
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setUser_id(Ljava/lang/String;)V

    const-string p0, "\u5e93\u8428\u739b"

    .line 5
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setNick_name(Ljava/lang/String;)V

    const-string p0, "/style/avatar/992/60827970_small.jpg?t=1607952591"

    .line 6
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setAvatar(Ljava/lang/String;)V

    const/16 p0, 0x27

    .line 7
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setLevel_id(I)V

    const/4 p0, 0x4

    .line 8
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setPeerage_id(I)V

    const-string p0, "\u9886\u4e3b"

    .line 9
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setPeerage_name(Ljava/lang/String;)V

    const-string p0, "\u529f\u592b\u718a\u732b"

    .line 10
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setMount_name(Ljava/lang/String;)V

    const-string p0, "/style/app/images/mount/phoenix.svga"

    .line 11
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setMount_url(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 12
    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->setIs_vibrate(Z)V

    return-object v0
.end method
