.class final Lcom/qennnsad/aknkaksd/f$j;
.super Lcom/qennnsad/aknkaksd/d$g;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$j;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/d$g;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/f$j;->b:Lcom/qennnsad/aknkaksd/f$j;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$j;->a:Lcom/qennnsad/aknkaksd/f$k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Landroid/app/Service;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/f$j;-><init>(Lcom/qennnsad/aknkaksd/f$k;Landroid/app/Service;)V

    return-void
.end method

.method private b(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$j;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/h;->c(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$j;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->y(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/h;->e(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$j;->b(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-void
.end method
