.class public final Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chatlist/ChatListViewModel;-><init>(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/chat/k;Lcom/im/freechat/domain/usecase/messages/h;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/auth/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 ChatListViewModel.kt\ncom/im/freechat/ui/chatlist/ChatListViewModel\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,148:1\n59#2,3:149\n63#2:153\n62#2,7:161\n69#2,6:169\n211#3:152\n212#3:168\n479#4,7:154\n*S KotlinDebug\n*F\n+ 1 ChatListViewModel.kt\ncom/im/freechat/ui/chatlist/ChatListViewModel\n*L\n61#1:152\n61#1:168\n63#1:154,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 5
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const-wide/16 v9, 0xbb8

    cmp-long v13, v11, v9

    if-gez v13, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_1

    .line 9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 13
    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->v(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/Map;)V

    :cond_6
    return-void
.end method
