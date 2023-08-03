.class public final synthetic Lcom/koushikdutta/async/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/async/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/j;

    invoke-direct {v0}, Lcom/koushikdutta/async/j;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/j;->a:Lcom/koushikdutta/async/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/net/InetAddress;

    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->j([Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method
