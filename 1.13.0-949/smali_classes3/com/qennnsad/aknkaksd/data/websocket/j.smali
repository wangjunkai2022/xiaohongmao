.class public final Lcom/qennnsad/aknkaksd/data/websocket/j;
.super Ljava/lang/Object;
.source "WsObjectPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u00106\u001a\u000204\u0012\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J&\u0010\t\u001a\u0004\u0018\u00018\u0000\"\n\u0008\u0000\u0010\u0006*\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0082\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u000c\u001a\u00020\u000bJ$\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000fJ$\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u0018J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010 \u001a\u0004\u0018\u00010\u001fJ\u0006\u0010\"\u001a\u00020!J\u0006\u0010$\u001a\u00020#J\u0006\u0010&\u001a\u00020%J&\u0010+\u001a\u0004\u0018\u00010*2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000f2\u0008\u0010(\u001a\u0004\u0018\u00010\u000f2\u0008\u0010)\u001a\u0004\u0018\u00010\u000fJ.\u0010-\u001a\u00020*2\u0008\u0010,\u001a\u0004\u0018\u00010\u000f2\u0008\u0010(\u001a\u0004\u0018\u00010\u000f2\u0008\u0010)\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010/\u001a\u0004\u0018\u00010.J\u001b\u00102\u001a\u0004\u0018\u0001012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u00082\u00103R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00105R\u001c\u00109\u001a\n 7*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u00108R\u001e\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0018\u0010>\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00108R\u0018\u0010?\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00108R\u0018\u0010@\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u00108R\u0018\u0010A\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u00108R\u0016\u0010C\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010B\u00a8\u0006H"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "",
        "",
        "a",
        "r",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;",
        "T",
        "",
        "index",
        "b",
        "(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;",
        "",
        "q",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "loginInfo",
        "",
        "jwtToken",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;",
        "localRoomMsg",
        "c",
        "roomId",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;",
        "e",
        "status",
        "",
        "seconds",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;",
        "g",
        "content",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;",
        "j",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;",
        "h",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;",
        "i",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;",
        "k",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;",
        "p",
        "type",
        "targetUserId",
        "targetUsername",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;",
        "n",
        "method",
        "o",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;",
        "f",
        "time",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;",
        "l",
        "(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;",
        "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
        "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
        "prefsHelper",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "LOG_TAG",
        "Landroid/util/SparseArray;",
        "d",
        "Landroid/util/SparseArray;",
        "requestArray",
        "nickname",
        "userId",
        "token",
        "ucuid",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;",
        "PONG_INSTANCE",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lg5/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "prefsHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->b:Lg5/a;

    .line 4
    const-class p1, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;-><init>()V

    const-string p2, "pong"

    .line 6
    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;->setMethod(Ljava/lang/String;)V

    const-string p2, "android"

    .line 7
    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;->setDevice(Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->i:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;

    return-void
.end method

.method private final a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->c:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->f:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->g:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 5
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    aput-object v5, v2, v3

    const-string v3, "un=%s, userId=%s, token=%s, array=%s"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/qennnsad/aknkaksd/util/o0;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->r()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    return v1
.end method

.method private final b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/websocket/j;->c(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    return-void
.end method

.method public static synthetic m(Lcom/qennnsad/aknkaksd/data/websocket/j;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/j;->l(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;

    move-result-object p0

    return-object p0
.end method

.method private final r()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "Trying to restore ws object pool: login info not empty: "

    invoke-static {v1, v5, v3}, Lcom/qennnsad/aknkaksd/util/o0;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->b:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->b:Lg5/a;

    invoke-virtual {v3}, Lg5/a;->q()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/qennnsad/aknkaksd/data/websocket/j;->c(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->c:Ljava/lang/String;

    const-string v1, "Ws object pool has been restored successfully."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    return v4
.end method


# virtual methods
.method public final c(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V
    .locals 19
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "loginInfo"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->g:Ljava/lang/String;

    .line 4
    iput-object v4, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->f:Ljava/lang/String;

    .line 5
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->e:Ljava/lang/String;

    .line 6
    iget-object v5, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->h:Ljava/lang/String;

    iput-object v5, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->h:Ljava/lang/String;

    .line 7
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    .line 8
    new-instance v5, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    invoke-direct {v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;-><init>()V

    const-string v6, "login"

    .line 9
    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setMethod(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setUserName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setUserId(Ljava/lang/String;)V

    .line 13
    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->getImei()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setDeviceId(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 14
    new-instance v18, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    move-object/from16 v6, v18

    invoke-direct/range {v6 .. v17}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v18, p3

    .line 15
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRollmsgTime()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setRollmsg_time(I)V

    .line 16
    invoke-virtual/range {v18 .. v18}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getPromptTime()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setPrompt_time(I)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmceelevel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmceelevel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setLevelId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v6, "1"

    .line 19
    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setLevelId(Ljava/lang/String;)V

    .line 20
    :goto_1
    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setUcuid(Ljava/lang/String;)V

    .line 21
    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    new-instance v5, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;

    invoke-direct {v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;-><init>()V

    const-string v6, "logout"

    .line 23
    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setMethod(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setUserName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setUserId(Ljava/lang/String;)V

    .line 27
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    new-instance v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;

    invoke-direct {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;-><init>()V

    const-string v5, "SendPubMsg"

    .line 29
    invoke-virtual {v2, v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;->setMethod(Ljava/lang/String;)V

    const-string v5, ""

    .line 30
    invoke-virtual {v2, v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;->setChecksum(Ljava/lang/String;)V

    .line 31
    iget-object v5, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    new-instance v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;

    invoke-direct {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;-><init>()V

    const-string v5, "Manage"

    .line 33
    invoke-virtual {v2, v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setMethod(Ljava/lang/String;)V

    .line 34
    iget-object v5, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    new-instance v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;

    invoke-direct {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;-><init>()V

    const-string v5, "BindUid"

    .line 36
    invoke-virtual {v2, v5}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setMethod(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setUserId(Ljava/lang/String;)V

    .line 38
    iget-object v4, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setDeviceId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setToken(Ljava/lang/String;)V

    const-string v1, "android"

    .line 40
    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setPlat(Ljava/lang/String;)V

    const-string v1, "1.13.0"

    .line 41
    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setVer(Ljava/lang/String;)V

    const-string v1, "lite"

    .line 42
    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setIssued(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getLob_no()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setLob(Ljava/lang/Integer;)V

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->setRid(Ljava/lang/Integer;)V

    .line 45
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    new-instance v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;-><init>()V

    const-string v2, "chargeRoom"

    .line 47
    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;->set_method_(Ljava/lang/String;)V

    .line 48
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    new-instance v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;-><init>()V

    const-string v2, "freeRoom"

    .line 50
    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->set_method_(Ljava/lang/String;)V

    .line 51
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    new-instance v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;-><init>()V

    const-string v2, "toyPlayEnd"

    .line 53
    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;->set_method_(Ljava/lang/String;)V

    .line 54
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    .line 4
    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setRoomId(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getAvatartime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;->setAvatartime(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public final f()Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;

    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;J)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setRoomId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setPlay_status(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    int-to-long p1, p1

    .line 5
    div-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->setPlay_seconds(J)V

    return-object v0
.end method

.method public final h()Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->i:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;

    return-object v0
.end method

.method public final i()Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;->setContent(Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;

    return-object v0
.end method

.method public final l(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setTargetUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setTargetUsername(Ljava/lang/String;)V

    return-object v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;

    .line 2
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setMethod(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setTargetUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->setTargetUsername(Ljava/lang/String;)V

    return-object v0
.end method

.method public final p()Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->b(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;

    return-object v0
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->e:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->g:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->f:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 6
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/j;->d:Landroid/util/SparseArray;

    :cond_0
    return-void
.end method
