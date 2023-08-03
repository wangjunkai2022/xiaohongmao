.class public final synthetic Lcom/qennnsad/aknkaksd/data/websocket/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/c;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/websocket/c;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/websocket/c;->a:Lcom/qennnsad/aknkaksd/data/websocket/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->d(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
