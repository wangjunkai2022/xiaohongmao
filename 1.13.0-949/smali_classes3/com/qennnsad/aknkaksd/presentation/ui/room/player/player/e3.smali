.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/websocket/i;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->i1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;)V

    return-void
.end method
