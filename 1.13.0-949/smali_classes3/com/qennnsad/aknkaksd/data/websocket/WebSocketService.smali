.class public Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
.super Lcom/qennnsad/aknkaksd/data/websocket/a;
.source "WebSocketService.java"


# annotations
.annotation build Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;,
        Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "WebSocketService"

.field private static final m:Ljava/lang/String; = "WebSocketService_OK"

.field private static final n:I = 0x3c

.field private static final o:I = 0x3c

.field private static final p:I = 0x3c

.field private static q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static r:Z = false

.field private static s:Z = false


# instance fields
.field d:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field e:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private final f:Ld5/a;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/data/websocket/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field private j:Lcom/google/gson/Gson;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->f:Ld5/a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->g:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    .line 5
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->j:Lcom/google/gson/Gson;

    return-void
.end method

.method private A([C)Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;->q()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/j;->v3(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/e;

    invoke-direct {v0, p0, p3}, Lcom/qennnsad/aknkaksd/data/websocket/e;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/j;->K3(Ln7/o;)Lio/reactivex/j;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/j;->l6(Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/j;->l4(Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    new-instance p3, Lcom/qennnsad/aknkaksd/data/websocket/d;

    invoke-direct {p3, p0, p2}, Lcom/qennnsad/aknkaksd/data/websocket/d;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p3}, Lio/reactivex/j;->f6(Ln7/g;)Lio/reactivex/disposables/c;

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private I()V
    .locals 1

    const-string v0, "\u60a8\u5df2\u7ecf\u6389\u7ebf\uff0c\u6b63\u5728\u5c1d\u8bd5\u91cd\u65b0\u8fde\u63a5..."

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->J(Ljava/lang/String;)V

    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"type\":socket_off,\"content\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    const-string v1, "socket_off"

    invoke-direct {p0, p1, v1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->e:Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->f()Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "WebSocketService"

    const-string v2, "Performing auto re-login, wsRequest=%s"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->v(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->w(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->y(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->r:Z

    return v0
.end method

.method static synthetic i(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->r:Z

    return p0
.end method

.method static synthetic j()Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    return-object v0
.end method

.method static synthetic k(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->J(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->s:Z

    return p0
.end method

.method static synthetic m(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->M()V

    return-void
.end method

.method static synthetic n(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->s(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->I()V

    return-void
.end method

.method static synthetic p(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->B()V

    return-void
.end method

.method public static q(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private s(Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;

    const-class v3, Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;

    const-string v4, "WebSocketService"

    invoke-direct/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->D()V

    .line 2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchMessage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "type"

    .line 4
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "Message is not well-formed data!"

    .line 5
    invoke-static {v4, v5}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "Cannot parse type from msg!"

    .line 7
    invoke-static {v4, v0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v9, "Dispatching msg type : %s"

    .line 8
    invoke-static {v8, v4, v9, v7}, Lcom/qennnsad/aknkaksd/util/o0;->m(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v10, "update_role"

    const-string v11, "update_bean"

    const-string v12, "block_stream"

    const-string v13, "peerage_join"

    const-string v14, "chargeRoomPoint"

    const-string v15, "chargeRoomMoney"

    const-string v7, "sysmsg"

    const-string v8, "chargeTimeRoom"

    const-string v6, "logout"

    move-object/from16 v17, v4

    const-string v4, "charge"

    move-object/from16 v18, v3

    const-string v3, "error.content"

    move-object/from16 v19, v2

    const-string v2, "legend_profit"

    const-string v0, "onLineClient"

    const-string v1, "right.removeAdminer"

    move-object/from16 v20, v1

    const-string v1, "interaction.success"

    move-object/from16 v21, v1

    const-string v1, "interaction.broadcast"

    move-object/from16 v22, v1

    const-string v1, "SendPubMsg"

    sparse-switch v9, :sswitch_data_0

    :cond_1
    move-object/from16 v9, v22

    move-object/from16 v22, v4

    move-object/from16 v23, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v23

    goto/16 :goto_7

    :sswitch_0
    :try_start_2
    const-string v9, "moneyDeduct"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x16

    move-object/from16 v9, v22

    const/16 v16, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "login_ok"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x9

    move-object/from16 v9, v22

    const/16 v16, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "legend_hall_win"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x24

    move-object/from16 v9, v22

    const/16 v16, 0x24

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "nameCard"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1c

    move-object/from16 v9, v22

    const/16 v16, 0x1c

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "peerage_login"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    move-object/from16 v9, v22

    const/16 v16, 0x20

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "updateFanInfo"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x37

    move-object/from16 v9, v22

    const/16 v16, 0x37

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "ChatNotification"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x38

    move-object/from16 v9, v22

    const/16 v16, 0x38

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "earn_profit"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1e

    move-object/from16 v9, v22

    const/16 v16, 0x1e

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "interaction.send"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x28

    move-object/from16 v9, v22

    const/16 v16, 0x28

    goto/16 :goto_1

    :sswitch_9
    const-string v9, "interaction.lose"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2d

    move-object/from16 v9, v22

    const/16 v16, 0x2d

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "interaction.draw"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2e

    move-object/from16 v9, v22

    const/16 v16, 0x2e

    goto/16 :goto_1

    :sswitch_b
    const-string v9, "interaction.deny"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x31

    move-object/from16 v9, v22

    const/16 v16, 0x31

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "rollmsg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xa

    move-object/from16 v9, v22

    const/16 v16, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "block_live"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x21

    move-object/from16 v9, v22

    const/16 v16, 0x21

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "sendGiftNews"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x5

    move-object/from16 v9, v22

    const/16 v16, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v9, "sendGift"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    move-object/from16 v9, v22

    const/16 v16, 0x4

    goto/16 :goto_1

    :sswitch_10
    const-string v9, "changeRoomNotice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x13

    move-object/from16 v9, v22

    const/16 v16, 0x13

    goto/16 :goto_1

    :sswitch_11
    const-string v9, "interaction.confirm"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x29

    move-object/from16 v9, v22

    const/16 v16, 0x29

    goto/16 :goto_1

    :sswitch_12
    const-string v9, "nameCardNews"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1b

    move-object/from16 v9, v22

    const/16 v16, 0x1b

    goto/16 :goto_1

    :sswitch_13
    const-string v9, "gameWinFly"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xf

    move-object/from16 v9, v22

    const/16 v16, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string v9, "interaction.error"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2b

    move-object/from16 v9, v22

    const/16 v16, 0x2b

    goto/16 :goto_1

    :sswitch_15
    const-string v9, "interaction.close"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2f

    move-object/from16 v9, v22

    const/16 v16, 0x2f

    goto/16 :goto_1

    :sswitch_16
    const-string v9, "pinmessage_list"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x34

    move-object/from16 v9, v22

    const/16 v16, 0x34

    goto/16 :goto_1

    :sswitch_17
    const-string v9, "RechargeSucceed"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x39

    move-object/from16 v9, v22

    const/16 v16, 0x39

    goto/16 :goto_1

    :sswitch_18
    const-string v9, "popup"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x26

    move-object/from16 v9, v22

    const/16 v16, 0x26

    goto/16 :goto_1

    :sswitch_19
    const-string v9, "login"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x2

    move-object/from16 v9, v22

    const/16 v16, 0x2

    goto/16 :goto_1

    :sswitch_1a
    const-string v9, "ping"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xd

    move-object/from16 v9, v22

    const/16 v16, 0xd

    goto/16 :goto_1

    :sswitch_1b
    const-string v9, "exit"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xe

    move-object/from16 v9, v22

    const/16 v16, 0xe

    goto/16 :goto_1

    :sswitch_1c
    const-string v9, "toy"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v9, v22

    const/16 v16, 0x0

    goto/16 :goto_1

    :sswitch_1d
    const-string v9, "sysmsg.alert"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x14

    move-object/from16 v9, v22

    const/16 v16, 0x14

    goto/16 :goto_1

    :sswitch_1e
    const-string v9, "legend_win"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x23

    move-object/from16 v9, v22

    const/16 v16, 0x23

    goto/16 :goto_1

    :sswitch_1f
    const-string v9, "pointDeduct"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x17

    move-object/from16 v9, v22

    const/16 v16, 0x17

    goto/16 :goto_1

    :sswitch_20
    const-string v9, "error.noPoint"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x18

    move-object/from16 v9, v22

    const/16 v16, 0x18

    goto/16 :goto_1

    :sswitch_21
    const-string v9, "balanceHint"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x10

    move-object/from16 v9, v22

    const/16 v16, 0x10

    goto/16 :goto_1

    :sswitch_22
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x8

    move-object/from16 v9, v22

    const/16 v16, 0x8

    goto/16 :goto_1

    :sswitch_23
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1f

    move-object/from16 v9, v22

    const/16 v16, 0x1f

    goto/16 :goto_1

    :sswitch_24
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x22

    move-object/from16 v9, v22

    const/16 v16, 0x22

    goto/16 :goto_1

    :sswitch_25
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1d

    move-object/from16 v9, v22

    const/16 v16, 0x1d

    goto/16 :goto_1

    :sswitch_26
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x12

    move-object/from16 v9, v22

    const/16 v16, 0x12

    goto/16 :goto_1

    :sswitch_27
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x11

    move-object/from16 v9, v22

    const/16 v16, 0x11

    goto/16 :goto_1

    :sswitch_28
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x7

    move-object/from16 v9, v22

    const/16 v16, 0x7

    goto/16 :goto_1

    :sswitch_29
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x15

    move-object/from16 v9, v22

    const/16 v16, 0x15

    goto/16 :goto_1

    :sswitch_2a
    const-string v9, "newFan"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x36

    move-object/from16 v9, v22

    const/16 v16, 0x36

    goto/16 :goto_1

    :sswitch_2b
    const-string v9, "interaction.win"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2c

    move-object/from16 v9, v22

    const/16 v16, 0x2c

    goto/16 :goto_1

    :sswitch_2c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xc

    move-object/from16 v9, v22

    const/16 v16, 0xc

    goto/16 :goto_1

    :sswitch_2d
    const-string v9, "logins"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xb

    move-object/from16 v9, v22

    const/16 v16, 0xb

    goto :goto_1

    :sswitch_2e
    const-string v9, "anchorDisconnected"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x33

    move-object/from16 v9, v22

    const/16 v16, 0x33

    goto :goto_1

    :sswitch_2f
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v9, v22

    const/16 v16, 0x1

    goto :goto_1

    :sswitch_30
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x19

    move-object/from16 v9, v22

    const/16 v16, 0x19

    goto :goto_1

    :sswitch_31
    const-string v9, "interactionDisconnect"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x32

    move-object/from16 v9, v22

    const/16 v16, 0x32

    goto :goto_1

    :sswitch_32
    const-string v9, "interaction.cancel"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x30

    move-object/from16 v9, v22

    const/16 v16, 0x30

    goto :goto_1

    :sswitch_33
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x25

    move-object/from16 v9, v22

    const/16 v16, 0x25

    goto :goto_1

    :sswitch_34
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x6

    move-object/from16 v9, v22

    const/16 v16, 0x6

    :goto_1
    move-object/from16 v22, v4

    move-object/from16 v23, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v23

    goto/16 :goto_8

    :sswitch_35
    move-object/from16 v9, v20

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v16, 0x1a

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    goto :goto_2

    :cond_2
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    goto :goto_3

    :sswitch_36
    move-object/from16 v9, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v16, 0x27

    :goto_2
    move-object/from16 v21, v9

    move-object/from16 v9, v22

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v21, v9

    move-object/from16 v9, v22

    goto :goto_5

    :sswitch_37
    move-object/from16 v9, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v22

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v16, 0x2a

    goto :goto_4

    :sswitch_38
    move-object/from16 v9, v22

    move-object/from16 v23, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v23

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v16, 0x3

    :goto_4
    move-object/from16 v22, v4

    goto :goto_8

    :cond_4
    :goto_5
    move-object/from16 v22, v4

    goto :goto_7

    :sswitch_39
    move-object/from16 v9, v22

    move-object/from16 v22, v4

    move-object/from16 v23, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v23

    const-string v4, "pinmessage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_5

    const/16 v4, 0x35

    const/16 v16, 0x35

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    :goto_6
    move-object/from16 v2, v17

    goto/16 :goto_b

    :cond_5
    :goto_7
    const/16 v16, -0x1

    :goto_8
    packed-switch v16, :pswitch_data_0

    move-object/from16 v4, p0

    move-object/from16 v2, p1

    move-object/from16 v0, v19

    :try_start_3
    const-string v1, "error"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_a

    :pswitch_0
    :try_start_4
    const-string v0, "RechargeSucceed"

    .line 10
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/webview/RechargeSucceed;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    :try_start_5
    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_1
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 11
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;

    invoke-direct {v4, v7, v5, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_2
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 12
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;

    invoke-direct {v4, v7, v5, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_3
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 13
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;

    invoke-direct {v4, v7, v5, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_4
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 14
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBalanceEvent;

    invoke-direct {v4, v7, v5, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_5
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 15
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;

    invoke-direct {v4, v7, v5, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_6
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 16
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;

    invoke-direct {v4, v7, v5, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_7
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 17
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    invoke-direct {v4, v7, v9, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_8
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "interaction.confirm"

    .line 18
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkConfirmMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "interaction.send"

    .line 19
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 20
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_b
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "popup"

    .line 21
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_c
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 22
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;

    invoke-direct {v4, v7, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_d
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "legend_hall_win"

    .line 23
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_e
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "legend_win"

    .line 24
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_f
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 25
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;

    invoke-direct {v4, v7, v12, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_10
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "block_live"

    .line 26
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_11
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "peerage_login"

    .line 27
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_12
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 28
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/AnchorCoinBean;

    invoke-direct {v4, v7, v11, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_13
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "earn_profit"

    .line 29
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_14
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 30
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;

    invoke-direct {v4, v7, v13, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_15
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "nameCard"

    .line 31
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCard;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_16
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "nameCardNews"

    .line 32
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_17
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v0, v21

    .line 33
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_18
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v0, v19

    .line 34
    invoke-direct {v4, v7, v3, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_19
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v0, v19

    const-string v1, "error.noPoint"

    .line 35
    invoke-direct {v4, v7, v1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_1a
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "pointDeduct"

    move-object/from16 v1, v18

    .line 36
    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_1b
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v1, v18

    goto :goto_9

    :pswitch_1c
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v1, v18

    .line 37
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;

    invoke-direct {v4, v7, v8, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    :goto_9
    const-string v0, "moneyDeduct"

    .line 38
    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :pswitch_1d
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "sysmsg.alert"

    .line 39
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_1e
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "changeRoomNotice"

    .line 40
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_1f
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 41
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;

    invoke-direct {v4, v7, v14, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_20
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 42
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;

    invoke-direct {v4, v7, v15, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_21
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "balanceHint"

    .line 43
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_22
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "gameWinFly"

    .line 44
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_23
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "exit"

    .line 45
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsExitMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_24
    move-object/from16 v4, p0

    .line 46
    iget-object v0, v4, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->e:Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->h()Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    goto/16 :goto_c

    :pswitch_25
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 47
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginOutMsg;

    invoke-direct {v4, v7, v6, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_26
    move-object/from16 v4, p0

    goto/16 :goto_c

    :pswitch_27
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "rollmsg"

    .line 48
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_28
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    const-string v0, "login_ok"

    .line 49
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    invoke-direct {v4, v7, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_29
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 50
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;

    invoke-direct {v4, v7, v10, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_2a
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    .line 51
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    invoke-direct {v4, v2, v7, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_2b
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    move-object/from16 v0, v20

    .line 52
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;

    invoke-direct {v4, v2, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_2c
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    const-string v0, "sendGiftNews"

    .line 53
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

    invoke-direct {v4, v2, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_2d
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    const-string v0, "sendGift"

    .line 54
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {v4, v2, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_c

    :pswitch_2e
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    .line 55
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-direct {v4, v2, v1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_c

    :pswitch_2f
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    const-string v0, "login"

    .line 56
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;

    invoke-direct {v4, v2, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_c

    :pswitch_30
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    move-object/from16 v1, v18

    move-object/from16 v0, v22

    .line 57
    invoke-direct {v4, v2, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_c

    :pswitch_31
    move-object/from16 v4, p0

    move-object/from16 v2, p1

    const-string v0, "toy"

    .line 58
    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;

    invoke-direct {v4, v2, v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_c

    .line 59
    :goto_a
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "error"

    .line 60
    invoke-direct {v4, v2, v1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_c

    :cond_6
    const-string v0, "Unsupported msg type:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v2, v17

    .line 61
    :try_start_6
    invoke-static {v2, v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v2, v4

    move-object v4, v1

    :goto_b
    const-string v1, "Unexpected exception while dispatching msg."

    .line 62
    invoke-static {v2, v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7420b32e -> :sswitch_39
        -0x715deef4 -> :sswitch_38
        -0x69f5e41b -> :sswitch_37
        -0x62c813d9 -> :sswitch_36
        -0x6215a93a -> :sswitch_35
        -0x5fc6d7e2 -> :sswitch_34
        -0x5e3f014a -> :sswitch_33
        -0x5960922a -> :sswitch_32
        -0x583aebb2 -> :sswitch_31
        -0x55dc716d -> :sswitch_30
        -0x5128dd4c -> :sswitch_2f
        -0x4237a270 -> :sswitch_2e
        -0x416801d6 -> :sswitch_2d
        -0x4167ea76 -> :sswitch_2c
        -0x3f17d600 -> :sswitch_2b
        -0x3e847aad -> :sswitch_2a
        -0x394553e4 -> :sswitch_29
        -0x34e3a66c -> :sswitch_28
        -0x317a37af -> :sswitch_27
        -0x315002df -> :sswitch_26
        -0x25e02c34 -> :sswitch_25
        -0x23d1408e -> :sswitch_24
        -0x2236569a -> :sswitch_23
        -0x222ee9d4 -> :sswitch_22
        -0x1de00c7d -> :sswitch_21
        -0x11a0dd97 -> :sswitch_20
        -0xb2c0d8d -> :sswitch_1f
        -0x632cf56 -> :sswitch_1e
        -0x627af7e -> :sswitch_1d
        0x1c15e -> :sswitch_1c
        0x2fb91e -> :sswitch_1b
        0x348172 -> :sswitch_1a
        0x625ef69 -> :sswitch_19
        0x65e70ac -> :sswitch_18
        0xc48957b -> :sswitch_17
        0x23974feb -> :sswitch_16
        0x266d431c -> :sswitch_15
        0x268c372c -> :sswitch_14
        0x2ba06589 -> :sswitch_13
        0x3e9b95ae -> :sswitch_12
        0x453392e4 -> :sswitch_11
        0x49dec763 -> :sswitch_10
        0x4a54a8d8 -> :sswitch_f
        0x4bc97bcb -> :sswitch_e
        0x4cab755e -> :sswitch_d
        0x5214f9e4 -> :sswitch_c
        0x5c146468 -> :sswitch_b
        0x5c1493a0 -> :sswitch_a
        0x5c182d71 -> :sswitch_9
        0x5c1b35e4 -> :sswitch_8
        0x5e52548b -> :sswitch_7
        0x5ffe7083 -> :sswitch_6
        0x66483d58 -> :sswitch_5
        0x69f6cd07 -> :sswitch_4
        0x6dad2c3b -> :sswitch_3
        0x6e5a62c8 -> :sswitch_2
        0x7890de72 -> :sswitch_1
        0x7d1099a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private t()Lokhttp3/OkHttpClient;
    .locals 6

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/data/websocket/c;->a:Lcom/qennnsad/aknkaksd/data/websocket/c;

    .line 2
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/qennnsad/aknkaksd/data/websocket/f;->a:Lcom/qennnsad/aknkaksd/data/websocket/f;

    .line 4
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    .line 5
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    const-string v0, "WebSocketService"

    const-string v2, "Brotli WSS ENABLED"

    .line 10
    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lokhttp3/brotli/BrotliInterceptor;->INSTANCE:Lokhttp3/brotli/BrotliInterceptor;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 5

    .line 1
    const-class v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-boolean v3, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->r:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->s:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->f:Ld5/a;

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->u(Ld5/a;)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->M()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->t()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 7
    new-instance v3, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v4}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->h(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->g(Z)Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->f(Lokhttp3/OkHttpClient;)Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->e()Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    move-result-object v1

    sput-object v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    .line 12
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->c()V

    .line 13
    sput-boolean v2, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->s:Z

    .line 14
    sget-object v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->f:Ld5/a;

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->u(Ld5/a;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic v(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .line 1
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0, p1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--sslsession:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--result:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebSocketService_OK"

    invoke-static {p1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic w(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "knockknock"

    const-string v3, "synergy"

    .line 5
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Sec-WebSocket-Accept-Encoding"

    const-string v2, "brotli"

    .line 6
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 7
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private synthetic x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->j:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic y(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/i;

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "WebSocketService"

    const-string v0, "No listener handle type %s, discard this."

    .line 2
    invoke-static {p1, v0, p2}, Lcom/qennnsad/aknkaksd/util/o0;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p2}, Lcom/qennnsad/aknkaksd/data/websocket/i;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public E()V
    .locals 4

    const-string v0, "WebSocketService"

    const-string v1, "----- prepareShutdown -----"

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Force clear active listeners, count=%d"

    invoke-static {v0, v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/websocket/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public G()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WebSocketService"

    const-string v4, "Removing all listeners, count=%d. "

    invoke-static {v2, v4, v1}, Lcom/qennnsad/aknkaksd/util/o0;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    const-string v4, "popup"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/websocket/i;

    .line 3
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    const-string v6, "RechargeSucceed"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qennnsad/aknkaksd/data/websocket/i;

    .line 4
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    if-eqz v1, :cond_0

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v1, v7, v3

    const-string v8, "Preserving Popup Window listener"

    .line 5
    invoke-static {v2, v8, v7}, Lcom/qennnsad/aknkaksd/util/o0;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v5, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v3

    const-string v1, "Preserving Recharge Succeed listener"

    .line 7
    invoke-static {v2, v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h:Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->K(Ljava/lang/String;)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WebSocketService"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-class p1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    monitor-enter p1

    .line 5
    :try_start_0
    sget-object v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->a()Z

    move-result v0

    sput-boolean v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->r:Z

    .line 6
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public L(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public N()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->M()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "WebSocketService"

    const-string v0, "----- onBind -----"

    .line 1
    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;->onCreate()V

    const-string v0, "WebSocketService"

    const-string v1, "----- onCreate -----"

    .line 2
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->d:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->d:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHostWithPort()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wss://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ws?jwt_token="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ver="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.13.0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->k:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WebSocketService"

    const-string v1, "----- onDestroy -----"

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->s(Ljava/lang/String;)V

    return-void
.end method
