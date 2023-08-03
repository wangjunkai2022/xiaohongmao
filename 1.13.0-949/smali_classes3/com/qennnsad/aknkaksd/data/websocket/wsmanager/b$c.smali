.class public final Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;
.super Ljava/lang/Object;
.source "WsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->c:Z

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->d:Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)V

    return-object v0
.end method

.method public f(Lokhttp3/OkHttpClient;)Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->d:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public g(Z)Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->c:Z

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->b:Ljava/lang/String;

    return-object p0
.end method
